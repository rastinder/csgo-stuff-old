
t1:=A_TickCount

Text:="|<?>*130$20.z0Dzs7zz3zztzzs7zw0zy67zXlzswTzy7zz3zzVzzszzwTzz7zzlzzzzzz7zzlzzwTzzzzzzzzzzy"

if (ok:=FindText(572, 612, 572, 612, 0, 0, Text))
{
  CoordMode, Mouse
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  ; Click, %X%, %Y%
}

MsgBox, 4096,, % "Time:`t" (A_TickCount-t1) " ms`n`n"
  . "Pos:`t" X ", " Y "`n`n"
  . "Result:`t" (ok ? "Success !":"Failed !"), 3
MouseMove, X, Y

