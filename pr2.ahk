﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
;#include <Vis2>  ; Equivalent to #include .\lib\Vis2.ahk
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen
;test

pr2_status_check()
pr2_status_check()
{
IniRead, total_accounts_open, status.ini,SectionName , total_accounts_open
IniRead, set, status.ini,SectionName , set
total_pr2_done = 0
i_value := total_accounts_open+1
IniWrite, %total_pr2_done%, status.ini,result, pr2
sx1 = 143
sy1 = 78
tx1 = 177
ty1 = 112

xc = 640
yc = 480
sx1 := sx1
sx2 := sx1 + xc
sx3 := sx1 + xc*2
sx4 := sx1 + xc*3
sx5 := sx1 + xc*4
sy2 := sy1 + yc
sy3 := sy1 + yc*2
sy4 := sy1 + yc*3

tx1 := tx1
tx2 := tx1 + xc
tx3 := tx1 + xc*2
tx4 := tx1 + xc*3
tx5 := tx1 + xc*4
ty2 := ty1 + yc
ty3 := ty1 + yc*2
ty4 := ty1 + yc*3

pos1 =  -x 3 -y 16
pos2 =  -x 643 -y 16
pos3 =  -x 1283 -y 16
pos4 =  -x 1923 -y 16
pos5 =  -x 2563 -y 16
pos6 =  -x 3    -y 496
pos7 =  -x 643  -y 496
pos8 =  -x 1283 -y 496
pos9 =  -x 1923 -y 496
pos10 = -x 2563 -y 496
pos11 =  -x 3   -y 976
pos12 =  -x 643 -y 976
pos13 =  -x 1283 -y 976
pos14 =  -x 1923 -y 976
pos15 =  -x 2563 -y 976
pos16 =  -x 3   -y 1456
pos17 =  -x 643 -y 1456
pos18 =  -x 1283 -y 1456
pos19 =  -x 1923 -y 1456
pos20 =  -x 2563 -y 1456
loop
{
i = 1
b = 1
a = 1
while (i < i_value )
{
 ; IniRead, total_pr2_done, status.ini,result , pr2
  if (i = 6)
  {
    b = 2
    a = 1
  }
  if (i = 11)
  {
    b = 3
    a = 1
  }
    if (i = 16)
  {
    b = 4
    a = 1
  }
      sx := sx%a%
      ,sy := sy%b%
      ,tx := tx%a%
      ,ty := ty%b%
ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 xp.png     
if (errorlevel = 0)
  {
    ;x := FoundX/640 
    ;y := FoundY/480 
    ;y := Floor(Y) + 1
    ;x := Floor(X) + 1
    
    ;total_pr2_done++
    ;~ done_acc_number := x*y
   ;~ user = set + done_acc_number
   
IniWrite, 1, pr2.ini,current, %i%
IniWrite, 1, pr2.ini,%set%, %i%
;diff := i_value + 1 - i
;result := set - diff
;IniWrite, %total_pr2_done%, status.ini,result, pr2


  }
i++
,a++
} ;while
}
}

if (total_pr2_done = total_accounts_open)
{
  ;break
}





make_pr2_ini()
{
  i = 1
  while (i <= total_accounts_open)
  {
  IniWrite, %i%, pr2.ini,current, 0
  i ++
  }
}

pr1_users()
{
  i = 1
  while (i = total_accounts_open)
  {
  IniRead, so, pr2.ini,current, %i%
  if (so = 0)
    {
    Index := set - total_accounts_open + i
    FileReadLine, ha,username.txt, %Index%
    FileAppend, %ha% pr1.txt
    }
    i ++
  }
  
    
  
}

!p::Pause
