#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
#include <tf>  
 ;#Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen
ComObjError(0)
IniRead, set, status.ini,SectionName , set
set := set - 10
SetTitleMatchMode, 2
global Users:=[]
,All_UserInfo:=[]



while(PIDs := pidListFromName("pycsgoinfo.exe"))
	RunWait taskkill /PID %PIDs% /F /T ,,hide

IniRead,rank_checker_reset,status.ini,variable,rank_checker_reset
if (rank_checker_reset != 2)
{
	IniWrite,2,status.ini,variable,rank_checker_reset
	FileDelete,C:\Python Scripts\pythoncsgoinfo\username.txt
	FileDelete,C:\Python Scripts\pythoncsgoinfo\output.csv
	FileDelete,C:\Python Scripts\pythoncsgoinfo\my_output.csv
}
c = C:\Python Scripts\pythoncsgoinfo\my_output.csv
if !FileExist(c)
{
	FileDelete,C:\Python Scripts\pythoncsgoinfo\username.txt
	FileDelete,C:\Python Scripts\pythoncsgoinfo\output.csv
}

FileDelete,C:\Python Scripts\pythoncsgoinfo\logfile.log


loop, Read,C:\Python Scripts\pythoncsgoinfo\username.txt
	{
		;OutputDebug, %A_LoopReadLine% `n
		sa := StrSplit(A_LoopReadLine, A_Tab)
		ha :=sa[5] 
		If(ha=="Processed")
		{
			Str := A_LoopReadLine
		}
		else{
			Str := A_LoopReadLine
			if(sa.MaxIndex()> 4)
			{
				ha = %sa%,
				;OutputDebug  ha=%ha% `n
				sa[5] := ""
				,Str := ""
				For Index, Value In sa
				Str .= A_Tab . Value
				Str := LTrim(Str, A_Tab) ; 
				;OutputDebug `n %Str%
			}
			else
				OutputDebug lol
		}
		OutputDebug, %Str% `n
		Users.push(Str) ; 
		lines := A_Index
	}



OutputDebug lines %lines% 
OutputDebug % users.maxindex()
OutputDebug its adv rank checker `n

if(set <= 0){
Loop, Read, username.txt
	{
		total_lines = %A_Index%
	}
	set := total_lines - 10
}
OutputDebug set = %set% `n
file_write2 := "!C:\Python Scripts\pythoncsgoinfo\username.txt"
loop,10
{
	FileReadLine, ha,username.txt, %set%
	;OutputDebug %ha%
	if (ErrorLevel != 0){
		set = 1
		FileReadLine, ha,username.txt, %set%
	}
	if (ErrorLevel = 0){

				ha := StrSplit(ha, ",")
				,ha := ha[1]
				;OutputDebug %ha%
		v := HasVal(Users,ha) 
		OutputDebug  v=%v% %ha% `n
		if (v = 0)
		FileAppend,%ha%`n, C:\Python Scripts\pythoncsgoinfo\username.txt
		else
			TF_ReplaceLine(file_write2,v,v,ha)
	}
	set++
}
;,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
dubUsers:=[]
Loop, % Users.MaxIndex()
{
    haa := users[A_Index]
    ;OutputDebug, %haa% `n
    ha := StrSplit(haa, ",")
    ;OutputDebug ............................................................................................................................................. `n
    Str := ha[1] ;win
    OutputDebug %Str% `n
    ;d := dubVal(output12,Str) 
    w := HasVal(dubUsers,Str) 
    OutputDebug d=%d% w=%w% `n
    if ( w = 0)
    {
			;users.Push(haa)
			dubUsers.Push(haa)
    }
	else
	{
			IniWrite,0,status.ini,variable,rank_checker_reset
			Reload
	}
}
;,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
Run pycsgoinfo.exe,,hide
Sleep 10000
StartTime := A_TickCount
,ElapsedTime := A_TickCount - StartTime	
processed = 0
while(PIDs := pidListFromName("pycsgoinfo.exe") and processed = 0){
	Sleep 1000
	loop, Read,C:\Python Scripts\pythoncsgoinfo\username.txt
	{
		;OutputDebug, %A_LoopReadLine% `n
		sa := StrSplit(A_LoopReadLine, A_Tab)
		ha :=sa[5] 
		If(ha=="Processing")
		{
			processed = 0
			break
		}
		else
			processed = 1
	}
ElapsedTime := A_TickCount - StartTime
if(ElapsedTime > 500000){
	while (PIDs := pidListFromName("pycsgoinfo.exe"))
	RunWait taskkill /PID %PIDs% /F /T ,,hide
	;runagain()
	break
	}
}

while(PIDs := pidListFromName("combineeverything.exe"))
{
	RunWait taskkill /PID %PIDs% /F /T ,,hide
}
run combineeverything.exe
ExitApp

runagain(){
	Users.RemoveAll()
loop, Read,C:\Python Scripts\pythoncsgoinfo\username.txt
	{
		;OutputDebug, %A_LoopReadLine% `n
		sa := StrSplit(A_LoopReadLine, A_Tab)
		ha :=sa[5] 
		If(ha=="Processed")
		{
			Str := A_LoopReadLine
		}
		else{
			Str := A_LoopReadLine
			if(sa.MaxIndex()> 4)
			{
				ha = %sa%,
				;OutputDebug  ha=%ha% `n
				sa[5] := ""
				,Str := ""
				For Index, Value In sa
				Str .= A_Tab . Value
				Str := LTrim(Str, A_Tab) ; 
				;OutputDebug `n %Str%
			}
			else
				OutputDebug lol
		}
		OutputDebug, %Str% `n
		Users.push(Str) ; 
		lines := A_Index
	}
FileDelete,C:\Python Scripts\pythoncsgoinfo\username.txt
Loop , % Users.MaxIndex()
			{
				ha := users[A_Index]
				FileAppend,%ha%`n, C:\Python Scripts\pythoncsgoinfo\username.txt
			}
			
Run pycsgoinfo.exe,,hide
Sleep 10000
		StartTime := A_TickCount
		,ElapsedTime := A_TickCount - StartTime	
processed = 0		
		while(PIDs := pidListFromName("pycsgoinfo.exe") and processed = 0){
	Sleep 1000
	loop, Read,C:\Python Scripts\pythoncsgoinfo\username.txt
	{
		;OutputDebug, %A_LoopReadLine% `n
		sa := StrSplit(A_LoopReadLine, A_Tab)
		ha :=sa[5] 
		If(ha=="Processing")
		{
			processed = 0
			break
		}
		else
			processed = 1
	}
			ElapsedTime := A_TickCount - StartTime
			if(ElapsedTime > 600000){
				break
			}
		}
}





dubVal(haystack, needle) {
    count = 0
    if(!isObject(haystack))
        return false
    if(haystack.Length()==0)
        return false
    for k,v in haystack
    {
        IfInString,v, %needle%
        {
            count++
            if count = 2
                return k
        }
    }
    return false
}
hasVal(haystack, needle) {
	if(!isObject(haystack))
		return false
	if(haystack.Length()==0)
		return false
	for k,v in haystack
		IfInString,v,%needle%          ;if(v==needle)
			return k
	return false
}
pidListFromName(name) {

		static wmi := ComObjGet("winmgmts:\\.\root\cimv2")
		
		if (name == "")
			return
		
		;PIDs := []
		for Process in wmi.ExecQuery("SELECT * FROM Win32_Process WHERE Name = '" name "'" )
		{
			OutputDebug % a_index "," Process.processId 
			OutputDebug `n
			return Process.processId
		}
		return PIDs 
	}

