import string
import json
import requests
import os
import sys
from time import sleep
from fake_useragent import UserAgent
import undetected_chromedriver as uc

# from selenium.webdriver import ChromeOptions
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains
from twocaptcha import TwoCaptcha
import random
import re
import time
from math import floor
import subprocess
from datetime import datetime
import portalocker

lock = portalocker.RedisLock("ras_lock_channel_name")
script_dir = os.path.dirname(os.path.abspath(__file__))
os.chdir(script_dir)
solver = TwoCaptcha("ab64599f9baded9ee06e9ba8d21c5e71")
chrome_options = uc.ChromeOptions()
# chrome_option = ChromeOptions()
# chrome_options.add_argument("--profile-directory=test")
cookies = ""

try:
    arg = sys.argv[1]
    line = sys.argv[2]
except:
    print("guard")
    # sys.exit()
    # '''''
    arg = "guard"
    steamuser = "davideverhart35479"
    steampass = "Alyssa@3481"
    email = "davideverhart35479@marveluniversemail.com"

    username = "jaspu32reet@gmail.com"
    password = "Ackerman@9974"
    level_or_error = "wrong_pass"
# '''''
if arg == "change_pass":
    try:
        with open("profile.json") as f:
            profiles = json.load(f)
            if username in profiles:
                profile = profiles[username]
                cookies = profile["cookies"]
                userAgent = profile["userAgent"]
                for cookie in cookies:
                    chrome_options.add_argument(f"--cookie={cookie}")

    except:
        ua = UserAgent()
        # ua = UserAgent(fallback='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', filters={'os': 'Windows 10'})

        userAgent = ua.random
else:
    ua = UserAgent()
    # ua = UserAgent(fallback='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', filters={'os': 'Windows 10'})

    userAgent = ua.random
print(userAgent)
# chrome_options.headless = True
# chrome_option.add_argument('--headless')
chrome_options.add_argument(f"--user-agent={userAgent}")
# chrome_options.add_argument("--start-minimized")
# chrome_option.add_argument(f"--user-agent={userAgent}")
# chrome_options.add_argument("--disable-save-password-bubble")
# chrome_options.add_argument(
#   "--load-extension=" + r"C:\Users\Administrator\AppData\Local\Google\Chrome\User Data\Default\Extensions\ifibfemgeogfhoebkmokieepdoobkbpo\\3.3.3_0")

while True:
    try:
        #driver = uc.Chrome(options=chrome_options)
        driver = uc.Chrome()
        # driver1 = Chrome(use_subprocess=True, options=chrome_option)
        break
    except Exception as e:
        print(e)
        if "This version of ChromeDriver only supports Chrome version" in str(e):
            subprocess.run(
                [r"C:\Program Files (x86)\Google\Update\GoogleUpdate.exe"],
                timeout=180,
                check=True,
            )
            print("Google Chrome has been updated.")
        else:
            print("new useragent")
            chrome_options.add_argument(f"--user-agent={UserAgent().random}")
resolutions = [
    (width, int(width / 16 * 9))
    for width in range(800, 1920)
    if 600 <= int(width / 16 * 9) <= 1080 and width % 2 == 0
]
width, height = random.choice(resolutions)
driver.set_window_size(width, height)
first_names = [
    "Aiyden",
    "Bexley",
    "Cayleb",
    "Daxx",
    "Ellyot",
    "Fynlee",
    "Graesyn",
    "Huxston",
    "Izayiah",
    "Jaxxyn",
    "Kaedn",
    "Lisbeth",
    "Maksym",
    "Nylah",
    "Oaklyn",
    "Prinz",
    "Quillan",
    "Ravynn",
    "Santanna",
    "Thorn",
    "Ulrick",
    "Vaelen",
    "Wyll",
    "Xzander",
    "Ysrael",
    "Zael",
    "Aarik",
    "Brynnlee",
    "Cyler",
    "Dael",
    "Eirik",
    "Fynnegan",
    "Gryffin",
    "Huxleigh",
    "Izael",
    "Jaxsten",
    "Kashtyn",
    "Landynn",
    "Makiah",
    "Nyxen",
    "Owynn",
    "Pryor",
    "Quinnten",
    "Rael",
    "Stryder",
    "Thorrin",
    "Urie",
    "Vail",
    "Wylder",
    "Xael",
    "Yarrow",
    "Zayvion",
    "Aarush",
    "Brixtyn",
    "Cedar",
    "Dreyden",
    "Elyas",
    "Fintan",
    "Gaelen",
    "Haidyn",
    "Iziah",
    "Jaxtyn",
    "Kamdyn",
    "Landry",
    "Maddoxx",
    "Navi",
    "Oden",
    "Paxon",
    "Qays",
    "Rorik",
    "Sylas",
    "Tavian",
    "Urien",
    "Viggo",
    "Weylyn",
    "Xaden",
    "Yorick",
    "Zadok",
    "Abrielle",
    "Briar",
    "Chesney",
    "Daela",
    "Ellyana",
    "Feryn",
    "Gwendolynn",
    "Haisley",
    "Ilysse",
    "Jordis",
    "Kynzleigh",
    "Lilou",
    "Maelle",
    "Niamh",
    "Olyviah",
    "Pryce",
    "Quill",
    "Rielle",
    "Saria",
    "Taisley",
    "Uriah",
    "Vaeda",
    "Wylde",
    "Xaela",
    "Ysadora",
    "Zailey",
]
last_names = [
    "Smith",
    "Johnson",
    "Garcia",
    "Lee",
    "Lopez",
    "Wang",
    "Müller",
    "González",
    "Kim",
    "Singh",
    "Sato",
    "Fernández",
    "Cohen",
    "Nguyen",
    "Chen",
    "Martínez",
    "Rodríguez",
    "Miller",
    "Adams",
    "Williams",
    "Brown",
    "Davis",
    "Gupta",
    "Ali",
    "Gomes",
    "Ivanov",
    "Silva",
    "Choi",
    "Nakamura",
    "Vargas",
    "Liu",
    "Gómez",
    "Jackson",
    "Wilson",
    "Torres",
    "Sánchez",
    "Jones",
    "Yamamoto",
    "López",
    "Gonzales",
    "Hernández",
    "Ng",
    "Kumar",
    "Fujimoto",
    "Yilmaz",
    "Andersen",
    "Dubois",
    "Petrovic",
    "Zhang",
]
if cookies:
    for cookie in cookies:
        driver.add_cookie(cookie)


def fill_captcha():
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.NAME, "apiKey"))
    ).send_keys("ab64599f9baded9ee06e9ba8d21c5e71")
    ActionChains(driver).send_keys(Keys.TAB).perform()
    ActionChains(driver).send_keys(Keys.ENTER).perform()
    sleep(2)
    try:
        driver.refresh()
        WebDriverWait(driver, 20).until(
            EC.visibility_of_element_located((By.NAME, "apiKey"))
        ).send_keys("ab64599f9baded9ee06e9ba8d21c5e71")
        ActionChains(driver).send_keys(Keys.TAB).perform()
        ActionChains(driver).send_keys(Keys.ENTER).perform()
        sleep(2)
        alert = driver.switch_to.alert
        alert.accept()
        sleep(0.2)
    except:
        print("already login")
        pass
    # find the switch element by its ID
    switch = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, "autoSubmitForms"))
    )
    # check if the switch is already enabled
    if not switch.is_selected():
        switch.click()
    # ActionChains(driver).send_keys(Keys.TAB*3).perform()
    # ActionChains(driver).send_keys(Keys.SPACE).perform()
    sleep(1)
    if len(driver.window_handles) == 2:
        try:
            alert = driver.switch_to.alert
            alert.accept()
        except:
            pass
        driver.close()
        driver.switch_to.window(driver.window_handles[0])
    driver.get(
        "chrome-extension://ifibfemgeogfhoebkmokieepdoobkbpo/options/options.html"
    )
    sleep(0.2)
    input_element = WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.NAME, "apiKey"))
    )
    if input_element.get_attribute("value") == "":
        print("The input field is empty")
        fill_captcha()
    else:
        print(input_element.get_attribute("value"))


# sleep(.5)
print(driver.title)
# driver.switch_to.window([handle for handle in driver.window_handles if driver.switch_to.window(handle) or driver.title == "2Captcha Extension Settings"][0])
print(driver.title)
# fill_captcha()
# driver.refresh()
# driver.close() # testing
# driver.switch_to.window(driver.window_handles[0])


def save_session_cookies(username):
    data = {"cookies": driver.get_cookies(), "userAgent": userAgent}
    profile_file = "profile.json"
    if os.path.exists(profile_file):
        with open(profile_file) as f:
            profile = json.load(f)
    else:
        profile = {}

    if username in profile:
        profile[username].update(data)
    else:
        profile[username] = data

    with open(profile_file, "w") as f:
        json.dump(profile, f)


def my_current_ip():
    url = "https://api.ipify.org"  # Third-party API URL
    response = requests.get(url)  # Send GET request to the API
    public_ip = response.text  # Extract public IP address from the response
    print("Public IP Address:", public_ip)
    return public_ip


def changeip():
    return
    ip = my_current_ip()
    previous_ip = ip
    commands = [
        "adb shell cmd connectivity airplane-mode enable",
        "adb shell cmd connectivity airplane-mode disable",
    ]
    while True:
        if previous_ip == ip:
            print("Change IP Address")
            [subprocess.run(cmd, shell=True) and time.sleep(3) for cmd in commands]
            time.sleep(2)
            ip = my_current_ip()
            if previous_ip == ip:
                print("problem in changing ip")
        else:
            break
    return


def num_of_emails():
    num_emails = 0
    while num_emails == 0:
        table = driver.find_element(By.ID, "messagelist")

        # find all the rows in the table
        rows = table.find_elements(By.TAG_NAME, "tr")

        # get the number of rows excluding the header row
        num_emails = len(rows) - 1

    # print the number of emails
    print(f"Number of emails: {num_emails}")
    return num_emails


def get_email_subject_of_latest_email():
    # find the latest email row and click on it
    latest_email = driver.find_element(By.CSS_SELECTOR, "tr.message:first-child a")
    latest_email.click()
    # Locate the email element that contains the subject
    email_subject_element = driver.find_element(
        By.XPATH, "//span[contains(@class, 'subject')]"
    )

    # Get the text of the email subject
    email_subject = email_subject_element.text

    # Print the email subject
    print(email_subject)


def open_roundcube(email, password):
    # wait for the inbox page to load
    lets_return = False
    driver.get(email_site)
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.NAME, "_user"))
    ).send_keys(email)
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.NAME, "_pass"))
    ).send_keys(password + "\n")
    for i in range(0, 3):
        try:
            WebDriverWait(driver, 5).until(
                EC.element_to_be_clickable((By.ID, "messagelist"))
            )
            lets_return = True
            break
        except:
            driver.get(email_site)
            WebDriverWait(driver, 20).until(
                EC.visibility_of_element_located((By.NAME, "_user"))
            ).send_keys(email)
            WebDriverWait(driver, 20).until(
                EC.visibility_of_element_located((By.NAME, "_pass"))
            ).send_keys(password + "\n")
    if lets_return == True:
        return
    else:
        return "wrong_pass_email"


def last_mail_time():
    # span_elements = driver.find_element(By.CLASS_NAME, 'date.skip-on-drag')
    span_elements = WebDriverWait(driver, 5).until(
        EC.element_to_be_clickable((By.CLASS_NAME, "date.skip-on-drag"))
    )
    now = datetime.now()

    if span_elements:
        # Extract the date/time string from the span element using the 'text' property
        date_string = span_elements.text

        # Extract the time string using regular expressions
        match = re.search(r"\d{1,2}:\d{2}", date_string)
        if match:
            time_string = match.group()
            if len(time_string) == 4:
                time_string = "0" + time_string

            # Convert the time string to a datetime object
            date_object = datetime.strptime(
                time_string, "%H:%M" if len(time_string) == 5 else "0%H:%M"
            )

            # If the date string also contains the date, extract and use it
            match = re.search(r"\d{4}-\d{2}-\d{2}", date_string)
            if match:
                date_string = match.group()
                date_object = datetime.strptime(
                    date_string + " " + time_string, "%Y-%m-%d %H:%M"
                )
            else:
                # If the date string does not contain the date, use the current date
                date_object = datetime.combine(
                    datetime.now().date(), date_object.time()
                )

            # Calculate the time difference in minutes
            time_difference = floor((now - date_object).total_seconds() / 60)

            # Print the time difference
            print(f"Time difference for {date_string}: {time_difference:.2f} minutes")
            if time_difference < 1:
                return 1
    # driver.refresh()


def wait_for_new_mail(time_check=""):
    previous_emails = num_of_emails()
    curent_emails = previous_emails
    # while True:
    if last_mail_time() and not time_check:
        return
    # sleep(2)
    start_time = time.time()
    while time.time() - start_time < 60:
        driver.refresh()
        current_emails = num_of_emails()
        if previous_emails != current_emails:
            break


def generate_password():
    min_length = 8
    max_length = 12
    lowercase_letters = string.ascii_lowercase
    uppercase_letters = string.ascii_uppercase
    digits = string.digits
    password = ""
    while (
        len(password) < min_length
        or len(password) > max_length
        or not any(c.islower() for c in password)
        or not any(c.isupper() for c in password)
        or not any(c.isdigit() for c in password)
    ):
        password = "".join(
            random.choice(lowercase_letters + uppercase_letters + digits)
            for _ in range(random.randint(min_length, max_length))
        )
    print("password: %s" % password)
    while len(password) > 12:
        password = generate_password()
    return password


def generate_username1():
    first_names = [
        "Avery",
        "Bailey",
        "Cameron",
        "Dakota",
        "Elliott",
        "Frankie",
        "Gray",
        "Harley",
        "Jordan",
        "Kendall",
        "Logan",
        "Morgan",
        "Parker",
        "Quinn",
        "Reese",
        "Rowan",
        "Sage",
        "Spencer",
        "Taylor",
        "Valentine",
        "Winter",
        "Zephyr",
    ]
    second_names = [
        "Ace",
        "Alpha",
        "Apex",
        "Berserk",
        "Blaze",
        "Champion",
        "Cobra",
        "Dragon",
        "Eagle",
        "Falcon",
        "Glitch",
        "Hawk",
        "Hunter",
        "Jaguar",
        "Knight",
        "Legend",
        "Maverick",
        "Ninja",
        "Omega",
        "Phoenix",
        "Pirate",
        "Raptor",
        "Rebel",
        "Samurai",
        "Shadow",
        "Sniper",
        "Warrior",
        "Wolf",
        "Zombie",
    ]
    last_names = [
        "Black",
        "Blade",
        "Blaze",
        "Dark",
        "Death",
        "Dragon",
        "Fire",
        "Fury",
        "Ghost",
        "Hunter",
        "Knight",
        "Legend",
        "Ninja",
        "Phoenix",
        "Rebel",
        "Shadow",
        "Slayer",
        "Storm",
        "Thunder",
        "Warrior",
    ]
    suffixes = [
        "Gaming",
        "Player",
        "Warrior",
        "Master",
        "Legend",
        "Hunter",
        "Assassin",
        "Champion",
        "Ninja",
        "Sniper",
    ]

    separator = random.choice(["_", ".", "-", ""])
    separator = ""

    # Randomly decide whether to use a middle name
    use_middle_name = random.choice([True, False])
    if use_middle_name:
        middle_name = random.choice(second_names)
        word_choices = [
            random.choice(first_names),
            middle_name,
            random.choice(last_names),
        ]
    else:
        word_choices = [random.choice(first_names), random.choice(last_names)]

    random.shuffle(word_choices)

    # Randomly decide whether to add a number to the username
    add_number = random.choice([True, False])
    if add_number:
        random_number = random.randint(100, 999)
        word_choices.append(str(random_number))

    # Randomly decide whether to add a suffix to the username
    add_suffix = random.choice([True, False])
    if add_suffix:
        suffix = random.choice(suffixes)
        word_choices.append(suffix)

    # Randomly choose the number of characters to remove
    num_chars_to_remove = random.randint(5, 15)

    # Randomly remove characters from the username
    username = separator.join(word_choices)
    for i in range(num_chars_to_remove):
        if len(username) <= 4:
            break
        index = random.randint(0, len(username) - 1)
        username = username[:index] + username[index + 1 :]

    # Ensure the username is at least 6 characters long
    while len(username) < 6:
        username += str(random.randint(0, 9))

    # Truncate the username to 12 characters if it's longer than that
    if len(username) > 12:
        username = username[:12]
    print("username: %s" % username)
    password = generate_password()
    return username, password


def click_on_reset():
    # find the tag and click it to open in a new tab
    iframe = driver.find_element(By.ID, "messagecontframe")
    driver.switch_to.frame(iframe)
    # find the element containing the text "signin.ea.com" and print the text
    element = WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located(
            (By.XPATH, "//*[contains(text(), 'signin.ea.com')]")
        )
    )
    print(element.text)
    driver.get(element.text)
    new_password = generate_password()
    print("new password= " + new_password)
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.ID, "password"))
    ).send_keys(new_password + "\n")
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.ID, "btnSubmit"))
    ).click()
    return new_password


def restart_program():
    """Restarts the current program, with file objects and descriptors
    cleanup"""
    python = sys.executable
    os.execl(python, python, *sys.argv)


def open_ea_to_change_pass(email):
    driver.get("https://www.ea.com/login")
    sleep(2)
    try:
        driver.find_element(By.ID, "forget-password").click()
    except:
        sys.exit(1)

    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.NAME, "email"))
    ).send_keys(email)
    captcha_element = driver.find_element(By.ID, "captchaImg")
    captcha_element.screenshot("captcha.png")
    while True:
        try:
            result = solver.normal("captcha.png")
            sleep(2)
            break
        except Exception as e:
            print(f"Error solving captcha: {e}")
    code = result["code"]
    WebDriverWait(driver, 10).until(
        EC.visibility_of_element_located((By.ID, "recaptcha_response_field"))
    ).send_keys(code + "\n")
    while True:
        try:
            WebDriverWait(driver, 10).until(
                EC.visibility_of_element_located((By.ID, "backToLogin"))
            )
            break
        except:
            try:
                WebDriverWait(driver, 10).until(
                    EC.visibility_of_element_located(
                        (By.ID, "form-error-invalid-emailOrId")
                    )
                )
                return "invalid_eamil"
            except:
                pass
            try:
                driver.find_element(By.CLASS_NAME, "otkinput-errormsg")
                captcha_element = driver.find_element(By.ID, "captchaImg")
                captcha_element.screenshot("captcha.png")
                while True:
                    try:
                        result = solver.normal("captcha.png")
                        sleep(2)
                        break
                    except Exception as e:
                        print(f"Error solving captcha: {e}")
                code = result["code"]
                WebDriverWait(driver, 10).until(
                    EC.visibility_of_element_located(
                        (By.ID, "recaptcha_response_field")
                    )
                ).send_keys(code + "\n")
            except:
                pass
    os.remove("captcha.png")


def ea_login(email, newpassword):
    driver.get("https://www.ea.com/login")
    sleep(2)
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.ID, "email"))
    ).send_keys(email)
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.ID, "password"))
    ).send_keys(newpassword + "\n")
    sleep(2)


def reset_ea_yogi(email, password):
    if open_ea_to_change_pass(email) == "invalid_eamil":
        return "invalid_eamil"
    open_roundcube(email, password)
    wait_for_new_mail()
    get_email_subject_of_latest_email()
    new_pass = click_on_reset()
    ea_login(email, new_pass)
    driver.close()
    print("@@")
    return new_pass


def open_ea_to_create_account(email, emailpass):
    driver.get("https://www.ea.com/register")
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.ID, "countryDobNextBtn"))
    )
    sleep(1.1)
    driver.switch_to.active_element

    # day
    ActionChains(driver).send_keys(Keys.TAB * 8).perform()
    sleep(0.2)
    ActionChains(driver).send_keys(Keys.SPACE).perform()
    sleep(0.2)
    for i in range(random.randint(1, 28)):
        ActionChains(driver).send_keys(Keys.DOWN).perform()
        sleep(0.003)
    sleep(0.2)
    ActionChains(driver).send_keys(Keys.TAB).perform()
    sleep(1.1)

    # month
    ActionChains(driver).send_keys(Keys.TAB).perform()
    sleep(0.2)
    ActionChains(driver).send_keys(Keys.SPACE).perform()
    for i in range(random.randint(1, 12)):
        ActionChains(driver).send_keys(Keys.DOWN).perform()
        sleep(0.003)
    sleep(0.2)
    ActionChains(driver).send_keys(Keys.TAB).perform()
    sleep(1.1)

    # year
    ActionChains(driver).send_keys(Keys.TAB).perform()
    sleep(0.2)
    ActionChains(driver).send_keys(Keys.SPACE).perform()
    for i in range(random.randint(20, 34)):
        ActionChains(driver).send_keys(Keys.DOWN).perform()
        sleep(0.003)
    sleep(0.2)
    ActionChains(driver).send_keys(Keys.TAB).perform()
    sleep(1.1)

    # enter
    ActionChains(driver).key_down(Keys.ENTER).pause(
        random.uniform(0.107, 0.299)
    ).key_up(Keys.ENTER).perform()
    sleep(1.1)

    # EA pass
    new_password = generate_password()
    ActionChains(driver).send_keys(Keys.TAB * 2).perform()
    sleep(1.1)
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.ID, "email"))
    ).send_keys(email)
    sleep(1.1)

    while True:
        originId = random.choice(first_names) + str(random.randint(999, 9999))
        WebDriverWait(driver, 20).until(
            EC.visibility_of_element_located((By.ID, "originId"))
        ).send_keys(originId)
        sleep(0.6)
        ActionChains(driver).send_keys(Keys.TAB).perform()
        sleep(1.1)
        try:
            error = WebDriverWait(driver, 10).until(
                EC.presence_of_element_located((By.ID, "form-error-eaid-invalid"))
            )
            print(error.text)
            if not error.text:
                break
            WebDriverWait(driver, 20).until(
                EC.visibility_of_element_located((By.ID, "originId"))
            ).clear()
        except:
            break
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.ID, "password"))
    ).send_keys(
        new_password
    )  # + "\n")
    sleep(2.1)
    ActionChains(driver).key_down(Keys.ENTER).pause(
        random.uniform(0.107, 0.299)
    ).key_up(Keys.ENTER).perform()
    # VERIFY_
    buttons = 1  # 0
    while buttons == 0:
        try:
            # Wait for the page to load and all iframes to be available
            wait = WebDriverWait(driver, 1)
            wait.until(EC.presence_of_all_elements_located((By.TAG_NAME, "iframe")))

            # Loop through all iframes on the page
            for iframe in driver.find_elements(By.TAG_NAME, "iframe"):
                driver.switch_to.frame(iframe)

                # Loop through all iframes inside the current iframe
                for nested_iframe in driver.find_elements(By.TAG_NAME, "iframe"):
                    driver.switch_to.frame(nested_iframe)

                    # Look for the "Verify" button
                    try:
                        verify_button = wait.until(
                            EC.element_to_be_clickable(
                                (By.XPATH, "//button[contains(text(), 'Verify')]")
                            )
                        )
                        # verify_button.click()
                        print("Clicked on Verify button")
                        # solve_mouse_captch()
                        buttons = 1
                        break
                    except:
                        pass

                    # Switch back to the main frame
                    # driver.switch_to.default_content()
                driver.switch_to.frame(iframe)
        except:
            pass
    '''''
    # new code
    captcha_data = ''
    while not captcha_data:
        try:
            captcha_data = driver.execute_script(interceptor_code)
            time.sleep(.1)
        except:
            print("captcha data is none")
    print("captcha data found")
    captcha_response = solver.funcaptcha(sitekey=captcha_data['data']['public_key'], 
                                         url=driver.current_url, 
                                         surl='https://client-api.arkoselabs.com')

    # Submit the solved captcha
    script = f"""
        {captcha_data['callback']}('{captcha_response}');
    """
    driver.execute_script(script)
    # new code
    ''' ""

    WebDriverWait(driver, 120).until(
        EC.visibility_of_element_located((By.ID, "contact-me-container"))
    )
    sleep(0.5)
    ActionChains(driver).send_keys(Keys.TAB * 4).perform()
    sleep(0.5)
    ActionChains(driver).send_keys(Keys.SPACE).perform()
    sleep(0.5)
    ActionChains(driver).send_keys(Keys.TAB * 3).perform()
    sleep(0.5)
    ActionChains(driver).send_keys(Keys.SPACE).perform()
    sleep(1.1)
    ActionChains(driver).key_down(Keys.ENTER).pause(
        random.uniform(0.107, 0.299)
    ).key_up(Keys.ENTER).perform()

    try:
        WebDriverWait(driver, 4).until(
            EC.presence_of_element_located((By.CLASS_NAME, "general-error"))
        )
        return "technical diffcuilties"
    except:
        pass
    code = from_email(email, emailpass)
    WebDriverWait(driver, 60).until(
        EC.visibility_of_element_located((By.ID, "emailVerifyCode"))
    ).send_keys(code + "\n")

    # Your EA Account is verified and ready to go. Here are your account details
    WebDriverWait(driver, 20).until(
        EC.visibility_of_element_located((By.ID, "continueDoneBtn"))
    ).click()

    return originId, new_password


def solve_mouse_captch():
    captcha_image_url = WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, "game_challengeItem_image"))
    )
    # captcha_element = driver.find_element(By.ID, 'captchaImg')
    # captcha_image_url = element.get_attribute('src')

    captcha_image_url.screenshot("captcha.png")
    while True:
        try:
            result = solver.normal("captcha.png")
            sleep(2)
            break
        except Exception as e:
            print(f"Error solving captcha: {e}")
    code = result["code"]
    print(code)

    image_num = code
    css_selector = 'input[type="image"][alt*="image ' + str(image_num) + '"]'

    # Find the image element by the updated CSS selector
    image_element = driver.find_element(By.CSS_SELECTOR, css_selector)

    # Do something with the image element, for example, click it
    image_element.click()
    return


def from_email(email, emailpass):
    new_tab()
    open_roundcube(email, emailpass)
    code = print_all_email_subjects()
    driver.close()
    driver.switch_to.window(driver.window_handles[0])
    return code


def get_code(code):
    if "Your EA Security Code is:" in code:
        code = code.split(": ")[-1]
        print("The security code is:", code)
        return code


def new_tab():
    while True:
        try:
            driver.execute_script("window.open('');")
            time.sleep(0.1)
            driver.switch_to.window(driver.window_handles[1])
            break
        except:
            try:
                driver.execute_script("window.open('about:blank');")
                time.sleep(0.1)
                driver.switch_to.window(driver.window_handles[1])
                break
            except:
                try:
                    driver.find_element(By.TAG_NAME, "body").send_keys(
                        Keys.CONTROL + "t"
                    )
                    time.sleep(0.1)
                    driver.switch_to.window(driver.window_handles[1])
                    break
                except:
                    try:
                        ActionChains(driver).key_down(Keys.CONTROL).send_keys(
                            "t"
                        ).key_up(Keys.CONTROL).perform()
                        time.sleep(0.1)
                        driver.switch_to.window(driver.window_handles[1])
                        break
                    except:
                        try:
                            driver.execute_script("window.open('','_blank');")
                            time.sleep(0.1)
                            driver.switch_to.window(driver.window_handles[1])
                            break
                        except:
                            continue


def print_all_email_subjects():
    while True:
        try:
            email_rows = WebDriverWait(driver, 3).until(
                EC.visibility_of_all_elements_located((By.CSS_SELECTOR, "tr.message a"))
            )
            code = None
            for email_row in email_rows:
                # print(email_row.accessible_name)
                code = get_code(email_row.accessible_name)
                if code:
                    return code
            driver.refresh()
        except:
            driver.refresh()


def create_ea_yogi(email, password):
    originId, new_password = open_ea_to_create_account(email, password)
    print("@@")
    return print(originId + "," + new_password)


def disable_guard():
    driver.get("https://store.steampowered.com/twofactor/manage")
    WebDriverWait(driver, 10).until(
        EC.visibility_of_element_located(
            (By.XPATH, "//input[@type='text' and contains(@class, 'newlogindialog_TextInput')]")
        )
    )
    sleep(random.uniform(0.3, 0.5))
    for char in steamuser:
        WebDriverWait(driver, 10).until(
            EC.visibility_of_element_located(
                (By.XPATH, "//input[@type='text' and contains(@class, 'newlogindialog_TextInput')]")
            )
        ).send_keys(char)
        sleep(random.uniform(0.1, 0.3))
    for char in steampass:
        WebDriverWait(driver, 10).until(
            EC.visibility_of_element_located(
                (
                    By.CSS_SELECTOR,
                    "input[type='password'].newlogindialog_TextInput_2eKVn",
                )
            )
        ).send_keys(char)
        sleep(random.uniform(0.1, 0.3))
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.ENTER).perform()
    while True:
        try:
            WebDriverWait(driver, 1).until(
                EC.presence_of_element_located(
                    (
                        By.XPATH,
                        "//div[contains(text(),'You have an email authenticator protecting this account.')]",
                    )
                )
            )
            text = get_guard_code()
            WebDriverWait(driver, 10).until(
                EC.element_to_be_clickable(
                    (
                        By.CSS_SELECTOR,
                        'input[type="text"][maxlength="1"][autocomplete="none"][value=""]',
                    )
                )
            ).click()
            for char in text:
                ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(
                    char
                ).perform()
            break
        except:
            try:
                WebDriverWait(driver, 1).until(
                    EC.element_to_be_clickable((By.ID, "none_authenticator_check"))
                )
                value = (
                    WebDriverWait(driver, 2)
                    .until(
                        EC.visibility_of_element_located(
                            (By.XPATH, '//*[@id="global_actions"]/a')
                        )
                    )
                    .get_attribute("href")
                )
                print(value)
                return value
            except:
                try:
                    WebDriverWait(driver, 2).until(
                        EC.visibility_of_element_located(
                            (
                                By.XPATH,
                                '//*[contains(text(), "Please check your password and account name and try again")]',
                            )
                        )
                    )
                    sys.exit()
                except:
                    pass

    sleep(random.uniform(0.5, 0.8))
    value = (
        WebDriverWait(driver, 5)
        .until(
            EC.visibility_of_element_located((By.XPATH, '//*[@id="global_actions"]/a'))
        )
        .get_attribute("href")
    )
    print(value)
    radio_button = WebDriverWait(driver, 10).until(
        EC.element_to_be_clickable((By.ID, "none_authenticator_check"))
    )
    sleep(random.uniform(0.5, 0.8))
    if radio_button.is_selected():
        print("Radio button is checked")
        return value
    else:
        WebDriverWait(driver, 10).until(
            EC.element_to_be_clickable((By.ID, "none_authenticator_check"))
        ).click()
    sleep(random.uniform(0.5, 0.8))
    try:
        WebDriverWait(driver, 10).until(
            EC.element_to_be_clickable(
                (By.CSS_SELECTOR, "a.btnv6_green_white_innerfade.btn_medium.button")
            )
        )
        sleep(random.uniform(0.5, 0.8))
        WebDriverWait(driver, 10).until(
            EC.element_to_be_clickable(
                (By.CSS_SELECTOR, "a.btnv6_green_white_innerfade.btn_medium.button")
            )
        ).click()
        disable_guard_code()
    except:
        print("already disabled")
        pass
    return value


def get_guard_code():
    new_tab()
    driver.get(yogi_mail)
    open_roundcube(email, password)
    wait_for_new_mail()
    get_email_subject_of_latest_email()
    WebDriverWait(driver, 10).until(
        EC.presence_of_element_located((By.ID, "layout-content"))
    ).click()
    iframe = driver.find_element(By.ID, "messagecontframe")
    driver.switch_to.frame(iframe)

    text = (
        WebDriverWait(driver, 10)
        .until(EC.presence_of_element_located((By.CSS_SELECTOR, "[class*=v1title-48]")))
        .text
    )
    print(text)
    # element_text = driver.find_element(By.CSS_SELECTOR, 'td.v1py-30.v1px-56 table td.v1title-48').text.strip()
    driver.switch_to.window(driver.window_handles[0])
    return text


def disable_guard_code():
    driver.switch_to.window(driver.window_handles[1])
    wait_for_new_mail("skip_time_check")
    get_email_subject_of_latest_email()
    iframe = driver.find_element(By.ID, "messagecontframe")
    driver.switch_to.frame(iframe)
    WebDriverWait(driver, 10).until(
        EC.element_to_be_clickable(
            (By.XPATH, "//span[contains(text(),'Disable Steam Guard')]")
        )
    ).click()


def create_hotmail():
    driver.get(hotmail_site)
    sleep(random.uniform(0.5, 0.8))
    email, password = generate_username1()
    for char in email:
        ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(char).perform()
    sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).send_keys(Keys.TAB).perform()
    sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).send_keys(Keys.ARROW_DOWN).perform()
    sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.SPACE).perform()
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.TAB).perform()
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.TAB).perform()
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.ENTER).perform()
    sleep(random.uniform(1, 2))
    # check if element exists
    try:
        element = driver.find_element(By.XPATH, "//div[@id='MemberNameError']")
        WebDriverWait(driver, 2).until(
            EC.visibility_of_element_located((By.ID, "MemberName"))
        ).clear()
        email, password = generate_username1()
        for char in email:
            ActionChains(driver).pause(random.uniform(0.1, 0.2)).send_keys(
                char
            ).perform()
        ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(
            Keys.ENTER
        ).perform()

    except:
        pass
    # enter password
    WebDriverWait(driver, 10).until(
        EC.visibility_of_element_located((By.ID, "PasswordInput"))
    )
    sleep(random.uniform(0.5, 0.8))
    for char in password:
        ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(char).perform()
        sleep(random.uniform(0.1, 0.5))
    sleep(random.uniform(0.6, 1.2))
    for i in range(0, 2):
        ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(
            Keys.TAB
        ).perform()
    sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.ENTER).perform()

    # write first and last name
    for char in random.choice(first_names):
        WebDriverWait(driver, 10).until(
            EC.visibility_of_element_located((By.NAME, "FirstName"))
        ).send_keys(char)
        sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.TAB).perform()
    sleep(random.uniform(0.1, 0.5))
    for char in random.choice(last_names):
        WebDriverWait(driver, 10).until(
            EC.visibility_of_element_located((By.NAME, "LastName"))
        ).send_keys(char)
        sleep(random.uniform(0.1, 0.5))
    sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).send_keys(Keys.ENTER).perform()

    # Dob
    WebDriverWait(driver, 10).until(
        EC.visibility_of_element_located((By.ID, "BirthDateLabel"))
    )
    sleep(random.uniform(0.6, 1.2))
    for i in range(1):
        ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(
            Keys.TAB
        ).perform()
    sleep(random.uniform(0.1, 0.5))

    # month
    day = random.randint(1, 12)
    for i in range(day):
        ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(
            Keys.ARROW_DOWN
        ).perform()
    sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.TAB).perform()

    # day
    month = random.randint(1, 12)
    for i in range(month):
        ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(
            Keys.ARROW_DOWN
        ).perform()
    sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(Keys.TAB).perform()

    # year
    year = str(random.randint(1985, 2004))
    sleep(random.uniform(0.1, 0.5))
    for char in year:
        ActionChains(driver).pause(random.uniform(0.1, 0.5)).send_keys(char).perform()
        sleep(random.uniform(0.1, 0.2))
    ActionChains(driver).send_keys(Keys.ENTER).perform()

    # press next to show captcha
    try:
        WebDriverWait(driver, 10).until(
            EC.element_to_be_clickable(
                (By.CSS_SELECTOR, 'button[data-theme="home.verifyButton"]')
            )
        )
    except:
        print("cant find next")
    # captcha came
    # image_element = WebDriverWait(driver, 10).until(EC.presence_of_element_located((By.CSS_SELECTOR, '[aria-label^="Image"][aria-label$="."]')))
    # by_xpath('//img[contains(@aria-label, "Image") and contains(@class, "sc")]')

    # direction pic
    # <img aria-labelledby="key-frame-text" height="200" width="134" class="sc-168ufhb-1 ihEzWH key-frame-image">
    # WebDriverWait(driver, 10).until(
    # EC.visibility_of_element_located((By.CSS_SELECTOR, '[aria-label="key frame image"]')))
    # by_xpath('//img[contains(@aria-label, "key-frame-text")

    # WebDriverWait(driver, 10).until(
    #    EC.visibility_of_element_located((By.CSS_SELECTOR, 'key-frame-text')))
    WebDriverWait(driver, 120).until(
        EC.visibility_of_element_located(
            (By.XPATH, "//button[contains(text(), 'Yes')]")
        )
    ).click()

    # idSIButton9
    # press TAB key
    ActionChains(driver).key_down(Keys.TAB).key_up(Keys.TAB).perform()
    sleep(random.uniform(0.1, 0.5))

    # press SPACE key
    ActionChains(driver).key_down(Keys.SPACE).key_up(Keys.SPACE).perform()
    sleep(random.uniform(0.1, 0.5))

    # press TAB key twice
    ActionChains(driver).key_down(Keys.TAB).key_up(Keys.TAB).perform()
    sleep(random.uniform(0.1, 0.5))
    ActionChains(driver).key_down(Keys.TAB).key_up(Keys.TAB).perform()
    sleep(random.uniform(0.1, 0.5))

    # press ENTER key
    ActionChains(driver).key_down(Keys.ENTER).key_up(Keys.ENTER).perform()
    data = f"{email}@hotmail.com,{password},{day}/{month}/{year}"
    print(data)
    with open("hotmail.txt", "a+") as f:
        f.write(data + "\n")


def hotmail_captcha():
    captcha_element = driver.find_element(By.ID, "captchaImg")
    captcha_element.screenshot("captcha.png")
    while True:
        try:
            result = solver.rotate("captcha.png")
            sleep(2)
            break
        except Exception as e:
            print(f"Error solving captcha: {e}")


def add_profile_link(line, email, profile_link):
    # check if steamuser is already in profileuser.txt
    with open("profileuser.txt", "r") as file:
        portalocker.lock(file, portalocker.LOCK_EX)
        file.seek(0)
        for user_line in file:
            if email in user_line:
                # steamuser already in file, do not add link
                return

    # steamuser not in file, add link
    line = line.replace("\n", "")

    with open("profileuser.txt", "a") as file:
        portalocker.lock(file, portalocker.LOCK_EX)
        file.seek(0)
        file.write(f"{line}\t{profile_link}\n")


changeip()
hotmail_site = "https://outlook.live.com/owa/?nlp=1&signup=1"
yogi_mail = "https://getbestmail.com/mail"
email_site = "https://getbestmail.com/mail"
words = line.strip().split()
steamuser = words[0]
steampass = words[1]
email = words[2]
password = words[3]
# email_site = 'https://mail.zsthost.com/'
# https://steamcommunity.com/profiles/76561199389990655/edit?welcomed=1 setup profile
if __name__ == "__main__":
    if arg == "change_pass":
        print(reset_ea_yogi(username, password))
        save_session_cookies(username)
    elif arg == "create_ea_yogi":
        create_ea_yogi(username, password)
    elif arg == "create_hotmail":
        create_hotmail()
    elif arg == "guard":
        try:
            words = line.strip().split()
            steamuser = words[0]
            steampass = words[1]
            email = words[2]
            password = words[3]
            print(steamuser, steampass, email, password)
        except:
            pass
        if "onlythefamily420" in steamuser:
            print("exits")
            sys.exit()
        profile_link = disable_guard()
        add_profile_link(line, email, profile_link)

    driver.quit()
    sys.exit()
