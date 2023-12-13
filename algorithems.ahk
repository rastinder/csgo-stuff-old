#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#SingleInstance Force
;#include <Vis2>  ; Equivalent to #include .\lib\Vis2.ahk
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen



sx1 = 305
sy1 = 32

xc = 640
yc = 480
sx1 := sx1
sx2 := sx1 + xc
sx3 := sx1 + xc*2
sx4 := sx1 + xc*3
sx5 := sx1 + xc*4
sy2 := sy1 + yc

tx1 = 322
ty1 = 44

tx1 := tx1
tx2 := tx1 + xc
tx3 := tx1 + xc*2
tx4 := tx1 + xc*3
tx5 := tx1 + xc*4
ty2 := ty1 + yc
a = 1 
b = 1
loop
{
sx := sx%a%
sy := sy%b%
tx := tx%a%
ty := ty%b%

	OutputDebug "%sx% %sy% %tx% %ty%"
	cts := Clipboard 
a++
if (a = 5)
	b++
}
pause 324 32 341 44  t

	RunWait Capture2Text\Capture2Text_CLI.exe --screen-rect "305 32 322 44"  --clipboard