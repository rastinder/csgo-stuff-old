SetWorkingDir %A_ScriptDir%






  WinGetTitle, Var, Steam Login
  OutputDebug %var% `n
                    If InStr(var,"Steam Login")
                    {
                        WinGetPos , x, y, w, h ,%var%
						OutputDebug w-%w% h=%h% `n
                        x:=w/h
						OutputDebug %x%`n
						if x < 1.42
							OutputDebug wrongpass
						else
							OutputDebug write pass
                    }













API_Key := "8014d6ae889cade09c05bda0d190840658cc3b1d"
API_Base := "https://docs.google.com/spreadsheets/d/1dvoE5NRUYRkv5Byju_1lNQ_TZ18zda1imbTtscQoOm4/edit#gid=1126020126"
API_Table := "MyTableName"

Data = {"fields":{"Name":"MySampleText"}}

WinHttp := ComObjCreate("WinHttp.WinHttpRequest.5.1")
WinHttp.Open("get", "https://api.airtable.com/v0/" API_Base "/" API_Table, false)
WinHttp.SetRequestHeader("Content-Type", "application/json")
WinHttp.SetRequestHeader("Authorization", "Bearer " API_Key)
WinHttp.Send(Data)

MsgBox, % WinHttp.ResponseText








	this = send_telegram(strings,pic := "0")
	FileAppend,%this% `n , temp.ahk
	this = IniWrite,%strings%,status.ini,tele_notes,msg
	FileAppend,%this% `n , temp.ahk
	this =     if pic = 0
	FileAppend,%this% `n , temp.ahk
	this =     {
	FileAppend,%this% `n , temp.ahk
	this =         send {alt down}
	FileAppend,%this% `n , temp.ahk
	this =         Sleep 50
	FileAppend,%this% `n , temp.ahk
	this =         send {g}
	FileAppend,%this% `n , temp.ahk
	this =         Sleep 50
	FileAppend,%this% `n , temp.ahk
	this =         send {alt up}
	FileAppend,%this% `n , temp.ahk
	this = }
	FileAppend,%this% `n , temp.ahk
	this = else
	FileAppend,%this% `n , temp.ahk
	this = {
	FileAppend,%this% `n , temp.ahk
	this = RunWait, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /silent /convert= %A_ScriptDir%\telegram\1.png
	FileAppend,%this% `n , temp.ahk
	this = location = %A_ScriptDir%\telegram\1.png
	FileAppend,%this% `n , temp.ahk
	this = IniWrite,%location%,status.ini,tele_notes,pic
	FileAppend,%this% `n , temp.ahk
	this = send {alt down}
	FileAppend,%this% `n , temp.ahk
	this = Sleep 50
	FileAppend,%this% `n , temp.ahk
	this = send {a}
	FileAppend,%this% `n , temp.ahk
	this =Sleep 50
	FileAppend,%this% `n , temp.ahk
	this =send {alt up}
	FileAppend,%this% `n , temp.ahk
	this = }}
	FileAppend,%this% `n , temp.ahk










output:= StrSplit(mtext,":")
function := output[2]
output:= StrSplit(mtext,"run")

function := Clipboard ; "a= 5 `n b = 4`n c:=a+b `n msgbox %c% "
output:= StrSplit(function,"run")
function2 := output[2]
function1 := output[1]
OutputDebug %function1% `n %function2%
;sup()
;{ 
;a= 5
;b = 4
;c=a+b 
;msgbox "ans is" %c%
;}
FileDelete,temp.ahk
FileAppend, %function% , temp.ahk
run,temp.ahk
call = function
%call%()

run(botToken, msg, from_id, mtext)
{
	
}











mtext = Ini read,map_name,status.ini,SectionName,map_name
mtext := StrReplace(mtext, "`r" . chr(34) . "")
	output:= StrSplit(mtext,",")
	OutputDebug % output.MaxIndex()
	If InStr(mtext,A_UserName) or InStr(mtext,"all") or output.MaxIndex() = 5
	{
		output:= StrSplit(mtext,",")
		readwrite := output[1]
		outputv := output[2]
		file := output[3]
		scename := output[4]
		readvariable := output[2]
		If  InStr(readwrite,"read")
		{
			Iniread,map_name,status.ini,SectionName,map_name
			iniread,outputv,%file%,%scename%,%readvariable%
			Value := outputv
		}
		else
		{
			Iniwrite,%outputv%,%file%,%scename%,%readvariable%
			Value = written
		}
		text = %Value% %A_UserName%
	}
MsgBox % text