#NoEnv ; :)
#include <tf>
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

dll_file = C:\DLL
if !FileExist(dll_file)
FileCreateDir,C:\DLL

if !FileExist("C:\Python Scripts\pythoncsgoinfo")
FileCreateDir,C:\Python Scripts\pythoncsgoinfo
er =  %A_ScriptDir%\Capture2Text\tessdata\num.traineddata
if !FileExist(er)
   FileCopy, %b%\z_extra\num.traineddata , %A_ScriptDir%\Capture2Text\tessdata , 1

bb = \\2700-pc\C\DLL
if !FileExist(bb){
run cmdkey /delete:2700-PC
run cmdkey /delete:2700-PC
run cmdkey /delete:2700-PC
run cmdkey /delete:2700-PC
;run cmdkey /delete:191.168.178.11 /user:administrator /pass:' 
run cmdkey /add:191.168.178.11 /user:admin /pass:' 
run cmdkey /add:2700-PC /user:2700_1_1 /pass:'
run cmdkey /add:2700-PC  /user:admin /pass:' 
}
b = \\2700-PC\C:\Users\Admin\Google Drive\file share
if !FileExist(b)
b = C:\Users\%A_Username%\Google Drive\file share
if !FileExist(b)
   b = C:\Users\%A_Username%\Documents\share\file share
if !FileExist(b)
   b = C:\Users\Administrator\Google Drive\file share
if !FileExist(b)
   b = C:\Users\Admin\Google Drive\file share
OutputDebug %b%
global b



		FileGetTime, globalfile ,%b%\Administrator\autostart.exe
			FileGetTime, localfile , autostart.exe
			if (globalfile > localfile)
			{
				FileCopy, %b%\Administrator\autostart.exe , %A_ScriptDir% ,  1
                Sleep 500
				run, autostart.exe,%a_scriptdir%
				ExitApp
			}






c = C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\panorama\videos
if FileExist(c)
   FileRemoveDir, %c%, 1
a = %b%\%A_Username%
if FileExist(b)
{
if !FileExist(a)
   FileCreateDir,%a%
}
anydeskappdata = %b%\%A_UserName%\AnyDesk
if !FileExist(anydeskappdata)
   FileCopyDir, C:\ProgramData\AnyDesk ,%b%\%A_UserName%\AnyDesk

a = %b%\%A_UserName%\backup
FileRemoveDir %a%, 1
if !FileExist(a)
   FileCreateDir,%a%
FileCopy, %a_scriptdir%\status.ini ,%b%\%A_UserName%\backup,1
FileCopy,%a_scriptdir%\username.txt ,%b%\%A_UserName%\backup,1

FileCopy, %b%\host.exe , %A_ScriptDir% , 1
Sleep 500
		Length := StrLen(A_UserName)
		word =  % SubStr(A_UserName, Length, 1)
		if ( word != 2 and A_ComputerName != "2700-PC") 
      {
      ;   anydesk = C:\Program Files (x86)\AnyDesk
       ;  if !FileExist(anydesk)
      
        ; RunWait %b%\Administrator\AnyDesk.exe --install C:\Program Files (x86)\AnyDesk --start-with-win --silent 
         ;RunWait %b%\Administrator\pass.bat
         If !ProcessExist("host.exe")
         run host.exe
}
else if ( A_ComputerName == "2700-PC" and A_UserName == "Admin")
{
     If !ProcessExist("host.exe")
   run host.exe
}
else
{
RunWait, Taskkill /FI USERNAME eq A_UserName /IM anydesk.exe /F /T
run, icacls "C:\Program\anydesk.exe" /deny %username%:(X) 
}
   


while (ini_read("autorun") = 0) ; ..................... autorun
sleep 10000

Loop, Read, username.txt
{
   total_lines = %A_Index%
}

;IniRead, previous_users, status.ini,SectionName , totalaccounts
if (total_lines != ini_read("totalaccounts"))    ; .....................................................................................new set
{
IniWrite, 0, status.ini,SectionName, matchcount
IniWrite, 11, status.ini,SectionName, set
IniWrite, 0, status.ini,match logs, left_matches
IniWrite, 0, status.ini,SectionName, swap_accs
FileDelete, data.ini
FileDelete, prime_users.ini
FileDelete, nonprime.txt
FileDelete, C:\Python Scripts\pythoncsgoinfo\Output.csv
FileDelete, C:\Python Scripts\pythoncsgoinfo\username.txt
FileDelete, C:\Python Scripts\pythoncsgoinfo\my_output
}
;IniWrite, %total_lines%, status.ini,SectionName , totalaccounts
IniWrite,%total_lines%,%b%\z_extra\work.ini,%A_UserName%,totalaccounts
;IniWrite, 1, status.ini,SectionName, Shutdown
IniRead,rank_variation,status.ini,SectionName,rank_variation
if (rank_variation == "ERROR")
   IniWrite,0,status.ini,SectionName,rank_variation
IniRead,rank_open,status.ini,SectionName,rank_open
if (rank_open == "ERROR")
 IniWrite,0,status.ini,SectionName,rank_open
;IniRead,checkrank,%b%\z_extra\work.ini,%A_UserName%,checkrank
arguments =-inhibitbootstrap -single_core -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst +mat_disable_fancy_blending 1 -r_emulate_gl -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -d3d9ex -nocrashdialog -h 480 -w 640
IniWrite, %arguments%, status.ini,SectionName, %arguments%
IniRead,set,status.ini,SectionName,set
if(ini_read("checkrank") =1 and set <12 )
{
FileCopy,%A_ScriptDir%\username.txt ,C:\Python Scripts\pythoncsgoinfo,1
sleep 5000
RunWait csgoinfo.exe ,,hide
}
FileCopy, %b%\z_extra\tf.ahk, %A_ScriptDir%\lib , 1
sleep 500
;#include <tf>
;file_write2 := "!C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg\autoexec.cfg" 
;indexing = 38
;str := "+left;+right"
;TF_ReplaceLine(file_write2,indexing,indexing,str)
;indexing = 122
;str = ui_playsettings_mode_official_v20 "= "competitive""
;TF_ReplaceLine(file_write2,indexing,indexing,str)
;indexing = 124
;str = ui_popup_weaponupdate_version "2"
;TF_ReplaceLine(file_write2,indexing,indexing,str)

;IniRead,update_users,%b%\z_extra\work.ini,%A_UserName%,update_users

if(ini_read("update_usertxt") = 1)
{
   Iniwrite,0,%b%\z_extra\work.ini,%A_UserName%,update_usertxt
   FileCopy, %b%\%A_Username%\username.txt , %A_ScriptDir% , 1
}
		FileGetTime, globalfile ,%b%\stable.exe
			FileGetTime, localfile , stable.exe
			if (globalfile > localfile)
			{
FileCopy, %b%\stable.exe , %A_ScriptDir% , 1
}
Sleep 3500
FileCopy, %b%\z_extra\video.bat , C:\Program Files (x86)\Steam\userdata , 1
Sleep 500
FileCopy, %b%\z_extra\clear.cfg , C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg , 1
sleep 500
FileCopy, %b%\z_extra\localconfig.vdf , C:\Users\%A_UserName%\Desktop , 1
sleep 500
FileCopy, %b%\z_extra\video.txt , C:\Users\%A_UserName%\Desktop , 1
sleep 500
FileCopy, %b%\z_extra\accept.png , %A_ScriptDir% , 1
sleep 500
FileCopy, %b%\telegram.exe , %A_ScriptDir% , 1
sleep 500
FileCopy, %b%\adv_rank_checker.exe , %A_ScriptDir% , 1
sleep 500
FileCopy, %b%\combineeverything.exe , %A_ScriptDir% , 1
sleep 500
FileCopy, %b%\pycsgoinfo.exe , %A_ScriptDir% , 1
sleep 500
FileCopy, %b%\z_extra\Settings.ini , C:\Python Scripts , 1
sleep 500
FileCopy, %b%\host.exe , C%A_ScriptDir% , 1
sleep 500
FileCopy, %b%\print1.exe , C%A_ScriptDir% , 1

sleep 500
;FileCopy, %b%\vac.exe , %A_ScriptDir% , 1
;RunWait  "c:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /in %A_ScriptDir%/stable.ahk /out %A_ScriptDir%/stable.exe
sleep 1000


Run ,video.bat,C:\Program Files (x86)\Steam\userdata,Hide
Run stable.exe
;run rdp.bat, %b%\z_extra
run,Hosts.cmd,%b%\z_extra


Sleep 100
Run telegram.exe


ExitApp 



ini_read(variable)
{
   OutputDebug %variable%
   IniRead,value,%b%\z_extra\work.ini,%A_UserName%,%variable%
   OutputDebug %value%
   if ( value == "ERROR")
   IniWrite,0,%b%\z_extra\work.ini,%A_UserName%,%variable%
   OutputDebug %value%
   return value
}

ProcessExist(Name){
	Process,Exist,%Name%
	return Errorlevel
}