﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


ProcessID := "csgo.exe"
pids := pidListFromName(ProcessID)
;loop 13
    
value1 := pids[1]
value2 := pids[2]
value3 := pids[3]
value4 := pids[4]
value5 := pids[5]
value6 := pids[6]
value7 := pids[7]
value8 := pids[8]
value9 := pids[9]
value10 := pids[10]
value11 := pids[11]
value12 := pids[12]
value13 := pids[13]
value14 := pids[14]
value15 := pids[15]
value16 := pids[16]
value17 := pids[17]
value18 := pids[18]
value19 := pids[19]
value20 := pids[20]
OutputDebug %pids%
OutputDebug %pids0%

i = 1
Loop 20
{
apid := value%i%
OutputDebug %apid%
if (apid = "")
{
	ExitApp
}
Run Injector.exe -p %apid% -i aa.dll
IniWrite, %apid%, injected.ini,current, %i%
Sleep 500
i++

}

pidListFromName(name) {
	static wmi := ComObjGet("winmgmts:\\.\root\cimv2")
	
	if (name == "")
		return

	PIDs := []
	for Process in wmi.ExecQuery("SELECT * FROM Win32_Process WHERE Name = '" name "'")
		PIDs.Push(Process.processId)

	return PIDs 
}
ExitApp