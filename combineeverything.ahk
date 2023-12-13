#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
#include <tf>  
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen
SetTitleMatchMode, 2
global Users:=[]
,output12:=[],ha:=[]

Str = zbc 
file_write2 := "!C:\Python Scripts\pythoncsgoinfo\my_output.csv"  
indexing = 1



Loop, Read,C:\Python Scripts\pythoncsgoinfo\my_output.csv
{
	la := A_LoopReadLine
	if la
	{
		OutputDebug %A_LoopReadLine%
		la := RTrim(A_LoopReadLine)
		OutputDebug %la%
		output12.Push(la)
	}
}


Loop, Read,C:\Python Scripts\pythoncsgoinfo\output.csv
{
	;OutputDebug %A_LoopReadLine% `n
	ha := StrSplit(A_LoopReadLine, ",")
	;OutputDebug ............................................................................................................................................. `n
	IfInString,A_LoopReadLine,NotProcessed
		{
			Str := ""
			,Str .= "," . ha[3] ;rank
			,Str .= "," . ha[4] ;win
			,Str .= "," . ha[5] ;pr
			,Str .= "," . ha[6] ;user
			,Str .= "," . ha[7] ;pass
			,Str .= "," . ha[13] ;cd
			,Str .=  "," .  A_ComputerName
			,Str :=  RTrim(Str)
			StringTrimLeft,Str,Str,1
			haaa:=ha[6]
			OutputDebug  %Str% `n
			v := HasVal(output12,haaa) 
			OutputDebug  v=%v% `n
			if (v = 0)
				FileAppend,%Str% `n, C:\Python Scripts\pythoncsgoinfo\my_output.csv
			else
			{
				prestr := output12[v]
				,prestr := StrSplit(prestr, ",")
				prestr := prestr[1]
				strv := ha[3]
				OutputDebug old value = %prestr% `nnew = %Strv%
				if prestr and !Strv
				{
					OutputDebug not writing
				}
					else
						
				TF_ReplaceLine(file_write2,v,v,Str)
			}
		}
}
output12:=[]
IfInString,A_computername,"2700"
	file_write := "!C:\DLL\masteroutput.csv"  
else
file_write := "!\\2700-PC\C\DLL\masteroutput.csv"  
Loop, Read,C:\Python Scripts\pythoncsgoinfo\my_output.csv
{
	v := ""
	,ha := StrSplit(A_LoopReadLine, ",")
	,str:=ha[4]
	output12.Push(A_LoopReadLine)
	v := TF_Find(file_write, 1, 0, str, 1, 0)
	OutputDebug `n v=%v% %str% %A_LoopReadLine%
	if v
	TF_ReplaceLine(file_write,v,v,A_LoopReadLine)
	else
		FileAppend,%A_LoopReadLine% `n,\\2700-PC\C\DLL\masteroutput.csv
}









;...............................................................outputin file share


   b = C:\Users\%A_Username%\Google Drive\file share
if !FileExist(b)
   b = C:\Users\%A_Username%\Documents\share\file share
if !FileExist(b)
   b = C:\Users\Administrator\Google Drive\file share
if !FileExist(b)
   b = C:\Users\Admin\Google Drive\file share
OutputDebug %b%











; get usernames for arrangment
Loop, Read,%b%\A_UserName\username.txt
{
	word_array := StrSplit(A_LoopReadLine, A_Tab , A_Space )
	usernames[a_index] := word_array[1]
	usernamesandpass[a_index]:=A_LoopReadLine
}
;msgbox   % usernames.MaxIndex() "total users"
	



    Loop, Files, C:\Python Scripts\pythoncsgoinfo\*.csv
    {
        ;word_array := StrSplit(A_LoopFileName, "." )
        ;,my_output := A_LoopFileName
        outputfilenames [A_Index] :=A_LoopFileName
    }
;msgbox   % outputfilenames.MaxIndex() "total files"
loop,  % outputfilenames.MaxIndex()
{
	selectedfile := outputfilenames[A_Index]
Loop, Read,C:\Python Scripts\pythoncsgoinfo\%selectedfile%
{
		v = 0
		OutputDebug %A_LoopReadLine% `n
		word_array := StrSplit(A_LoopReadLine, "," )
		selecteduser := word_array[6]
		OutputDebug user=%selecteduser% `n
		v:=hasVal1(usernames, selecteduser) 
		OutputDebug  v=%v% `n
		if (v = 0)
				FileAppend,%A_LoopReadLine% `n, %b%\A_UserName\extra_output.csv
			else
			{
				word_array := finaloutcome[v]
				word_array := StrSplit(word_array, "," )
				info := word_array[3]
				OutputDebug  info=%info% `n
				if !info
				finaloutcome[v] := A_LoopReadLine
				OutputDebug % finaloutcome.maxindex()  " finaloutcome"
			}
	}
}
FileDelete,%b%\A_UserName\final_output.csv
;msgbox  % finaloutcome.maxindex()  " total accs"
loop %  finaloutcome.maxindex()
{
	 cpid:=finaloutcome[A_Index]
	FileAppend,%cpid% `n, %b%\A_UserName\final_output.csv
}


hasVal1(haystack, needle) {
	if(!isObject(haystack))
		return false
	if(haystack.Length()==0)
		return false
	for k,v in haystack
		;IfInString,v, %needle%
		if(v==needle)
			return k
	return false
}


ExitApp



hasVal(haystack, needle) {
	if(!isObject(haystack))
		return false
	if(haystack.Length()==0)
		return false
	for k,v in haystack
		IfInString,v, %needle%
			return k
	return false
}


