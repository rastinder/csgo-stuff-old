import subprocess
import sys
import os
import time
import threading
from queue import Queue

script_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(script_dir)

def disconnect_warp():
    os.chdir(r"C:\Program Files\Cloudflare\Cloudflare WARP")
    os.system("warp-cli disconnect")
    os.chdir(script_dir)
    time.sleep(1.5)

def connect_warp():
    os.chdir(r"C:\Program Files\Cloudflare\Cloudflare WARP")
    os.system("warp-cli connect")
    os.chdir(script_dir)
    time.sleep(1.5)
    
def add_profile_link(line, email, profile_link):
    # check if steamuser is already in profileuser.txt
    with open("profileuser.txt", "r") as file:
        for user_line in file:
            if email in user_line:
                # steamuser already in file, do not add link
                return

    # steamuser not in file, add link
    line = line.replace("\n", "")
    with open("profileuser.txt", "a") as file:
        file.write(f"{line}\t{profile_link}\n")
        
def run_code(q, timeout):
    while True:
        line = q.get()
        if line is None:
            q.task_done()
            break

        try:
            subprocess.run(["python", "create_account.py", 'guard', line], timeout=timeout)
        except Exception as e:
            print(f"Error: {e}")
        finally:
            q.task_done()

def main(num_threads, timeout):
    with open("currentuser.txt", "r") as file:
        lines = file.readlines()
    with open("profileuser.txt", "r") as file:
        uuuser = file.readlines()

    q = Queue(maxsize=num_threads)
    threads = []
    for i in range(num_threads):
        thread = threading.Thread(target=run_code, args=(q, timeout))
        thread.start()
        threads.append(thread)

    for line in lines:
        words = line.strip().split()
        steamuser, steampass, email, password = words[0], words[1], words[2], words[3]

        for user in uuuser:
            if email in user:
                break
        else:
            print(steamuser, steampass, email, password)

            if "onlythe" in steamuser:
                print('tonly family found')
                sys.exit()
                print('browser start')
            
            q.put(line)
            time.sleep(3)

            print('loop end')

    q.join()
    for i in range(num_threads):
        q.put(None)
    for thread in threads:
        thread.join()

if __name__ == "__main__":
    num_threads = 5      
    timeout = 280
    main(num_threads, timeout)