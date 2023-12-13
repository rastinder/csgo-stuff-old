FileCopy, C:\Users\%A_Username%\Google Drive\file share\start.ahk , %A_ScriptDir% , 1
sleep 500
run  "c:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe" /in %A_ScriptDir%/start.ahk /out %A_ScriptDir%/start.exe
ExitApp 
