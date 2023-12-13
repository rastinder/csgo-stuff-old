;#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
#include <tf>  

run Taskkill /IM googledrivesync.exe /F ,,hide
run Taskkill /IM pycsgoinfo.exe /F ,,hide







b = C:\Users\%A_Username%\Google Drive\file share
if !FileExist(b)
   b = C:\Users\%A_Username%\Documents\share\file share
if !FileExist(b)
   b = C:\Users\Administrator\Google Drive\file share
OutputDebug %b%
global b



user := []
Loop, read, %b%\%A_UserName%\username.txt
{
    word_array := StrSplit(A_LoopReadLine, A_Tab,"." )
    user.push(word_array[1])

}


file_read = C:\Python Scripts\pythoncsgoinfo\Output.csv
file_write = %b%\%A_UserName%\Output.csv
file_write1 = !%b%\%A_UserName%\Output.csv
loop,% user.MaxIndex()
{
  user_name := user[A_Index]
;line = % TF_Find(file_read, "", "", "un",,0)
textinit = % TF_Find(file_read, "", "", user_name,,1)
if (textinit != 0)
{
IfInString,textinit,SteamLevel
OutputDebug not found 
  else
    TF_ReplaceLine(file_write1,A_Index,A_Index,textinit)
   ; FileWriteLine( file_write, textinit, A_Index )
}

}




IniRead, set, status.ini,SectionName , set
 set := set - 10
 
 if (set < 1) 
 ExitApp
 
del_user = C:\Python Scripts\pythoncsgoinfo\username.txt
 FileDelete, %del_user%
 sleep 100
 loop,10
{
 FileReadLine, ha,username.txt, %set%
 FileAppend, %ha% ,‪C:\Python Scripts\pythoncsgoinfo\username.txt
 set++
}
 run, pycsgoinfo.exe,,hide
 run,googledrivesync.exe, C:\Program Files\Google\Drive
ExitApp


/*
Loop, read, C:\Users\rasti\OneDrive\Documents\15-15\username_old acc.txt
{
    word_array := StrSplit(A_LoopReadLine, A_Tab,"." )
    user.push(word_array[1])

}











file = C:\Users\rasti\OneDrive\Documents\15-15\username_old acc.txt


FileReadLine, ha,username.txt, %Index%



result = % TF_Find(file, "", "", "UnequaledFixedStupidSwallow328")

MsgBox % result
;a_t
*/