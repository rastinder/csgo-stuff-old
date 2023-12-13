;SetKeyDelay, 150, 150
SetTitleMatchMode, 2
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

b = C:\Users\%A_Username%\Google Drive\file share
if !FileExist(b)
   b = C:\Users\%A_Username%\Documents\share\file share
if !FileExist(b)
   b = C:\Users\Administrator\Google Drive\file share
if !FileExist(b)
   b = C:\Users\Admin\Google Drive\file share
OutputDebug %b%
global b

IfInString,A_UserName,Admin
{
;sleep 20000
FileCopy, %b%\host.ahk , %A_ScriptDir% , 1
FileCopy, %b%\start.ahk , %A_ScriptDir% , 1
asd = "%b%\host.ahk"
OutputDebug %asd%
RunWait Ahk2Exe.exe /in host.ahk  /out host.exe 
RunWait Ahk2Exe.exe   /in "start.ahk" /out start.exe
sleep 500
Run *RunAs start.exe
}
else
{
sleep 15000
FileCopy, %b%\host.ahk , %A_ScriptDir% , 1
FileCopy, %b%\start.ahk , %A_ScriptDir% , 1
RunWait Ahk2Exe.exe /in host.ahk  /out host.exe 
RunWait Ahk2Exe.exe   /in "start.ahk" /out start.exe
sleep 500
Run *RunAs start.exe
}
ExitApp 