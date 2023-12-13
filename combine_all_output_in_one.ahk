#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen
SetTitleMatchMode, 2
global Users:=[]
,output12:=[],ha:=[],outputfilenames:=[],usernames:=[],finaloutcome:=[],usernamesandpass:=[]

Str = zbc 
file_write2 := "!C:\Python Scripts\pythoncsgoinfo\my_output.csv"  
indexing = 1

; get usernames for arrangment
Loop,Files,C:\Python Scripts\pythoncsgoinfo\rankfix\*.txt
	uf:=A_LoopFileName
Loop, Read,C:\Python Scripts\pythoncsgoinfo\rankfix\%uf%
{
	word_array := StrSplit(A_LoopReadLine, A_Tab , A_Space )
	usernames[a_index] := word_array[1]
	usernamesandpass[a_index]:=A_LoopReadLine
}
MsgBox   % usernames.MaxIndex() "total users"
	



    Loop, Files, C:\Python Scripts\pythoncsgoinfo\rankfix\*.csv
    {
        ;word_array := StrSplit(A_LoopFileName, "." )
        ;,my_output := A_LoopFileName
        outputfilenames [A_Index] :=A_LoopFileName
    }
MsgBox   % outputfilenames.MaxIndex() "total files"
loop,  % outputfilenames.MaxIndex()
{
	selectedfile := outputfilenames[A_Index]
Loop, Read,C:\Python Scripts\pythoncsgoinfo\rankfix\%selectedfile%
{
		v = 0
		OutputDebug %A_LoopReadLine% `n
		word_array := StrSplit(A_LoopReadLine, "," )
		selecteduser := word_array[6]
		OutputDebug user=%selecteduser% `n
		v:=hasVal(usernames, selecteduser) 
		OutputDebug  v=%v% `n
		if (v = 0)
				FileAppend,%A_LoopReadLine% `n, C:\Python Scripts\pythoncsgoinfo\rankfix\finaloutputfolder\extra_output.csv
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
MsgBox  % finaloutcome.maxindex()  " total accs"
loop %  finaloutcome.maxindex()
{
	 cpid:=finaloutcome[A_Index]
	FileAppend,%cpid% `n, C:\Python Scripts\pythoncsgoinfo\rankfix\finaloutputfolder\final_output.csv
}


hasVal(haystack, needle) {
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


