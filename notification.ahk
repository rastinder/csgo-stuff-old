
t1:=A_TickCount

Text:="|<?>*140$10.kC0Ek7USDky7sz7szXyDzzXyDsy"

if (ok:=FindText(572, 133, 150000, 150000, 0, 0, Text))
{
  CoordMode, Mouse
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  ; Click, %X%, %Y%
}

MsgBox, 4096,, % "Time:`t" (A_TickCount-t1) " ms`n`n"
  . "Pos:`t" X ", " Y "`n`n"
  . "Result:`t" (ok ? "Success !":"Failed !"), 3
MouseMove, X, Y

















FindText(x,y,Text,c,w=150,h=150,ByRef rx="",ByRef ry="")
{
xywh2xywh(x-w,y-h,2*w+1,2*h+1,x,y,w,h,c)
if (w<1 or h<1)
Return, 0
v:=Trim(RegExReplace(Text,"[^0_\n]+"),"`n") . "`n"
w2:=InStr(v,"`n")-1, h2:=StrLen(v)//(w2+1)
fmt:=A_FormatInteger
SetFormat, IntegerFast, d
re1:="[0_]{" (w2+0) "}\n", re2:=".{" (w-w2) "}"
SetFormat, IntegerFast, %fmt%
if (w2<1 or RegExReplace(v,re1)!="")
Return, 0
bch:=A_BatchLines
SetBatchLines, -1
if InStr(c,"-")
re:=StrReplace(v,"_","1"), c:=StrReplace(c,"-")
else
re:=StrReplace(StrReplace(v,"0","1"),"_","0")
; Starting from the 1 and 0 mutants can speed up the match
pos:=re~="10|01", re:=SubStr(re,pos+=!pos,-1)
GetBitsFromScreen(x,y,w,h,Scan0,Stride,bits,c)
if !InStr(c,"*") ; Color Mode, it is very fast
ss:=StrGet(&bits,w*h,"utf-16")
else ; Gray Threshold Mode
{
; In order to speed up the speed,
; only to take the green as the gray value
ListLines, Off
Threshold:=StrReplace(c,"*"), i:=-3
VarSetCapacity(tmp,w*h+1,Asc("0")), k:=Asc("1")
Loop, % w*h
if NumGet(bits,i+=4,"uchar")<=Threshold
NumPut(k,tmp,A_Index,"char")
ListLines, On
ss:=StrGet(&tmp+1,w*h,0)
}
SetBatchLines, %bch%
if i:=(ss~=StrReplace(re,"`n",re2))
{
rx:=x+Mod(i-1,w)-Mod(pos-1,w2+1)+(w2-1)//2
ry:=y+(i-1)//w-(pos-1)//(w2+1)+(h2-1)//2
Return, 1
}
Return, 0
}

; Fixed the range to make it no more than screen borders

xywh2xywh(x1,y1,w1,h1,ByRef x,ByRef y,ByRef w,ByRef h,c="*")
{
; Use this rather than A_ScreenWidth etc can support multiple displays
SysGet, zx, 76
SysGet, zy, 77
SysGet, zw, 78
SysGet, zh, 79
left:=x1, right:=x1+w1-1, up:=y1, down:=y1+h1-1
left:=left<zx ? zx:left, right:=right>zx+zw-1 ? zx+zw-1:right
up:=up<zy ? zy:up, down:=down>zy+zh-1 ? zy+zh-1:down
x:=left, y:=up, w:=right-left+1, h:=down-up+1
; Color Mode --> if Mod(w,2)!=0 --> (Stride:=((w*16+31)//32)*4)!=w*2
if !InStr(c,"*")
w:=(w//2)*2
}

GetBitsFromScreen(x,y,w,h,ByRef Scan0,ByRef Stride,ByRef bits,c="*")
{
Ptr:=A_PtrSize ? "UPtr" : "UInt"
; Use this rather than GetDC(0) can support multiple displays
win:=DllCall("GetDesktopWindow", Ptr)
hDC:=DllCall("GetDC", Ptr,win, Ptr)
mDC1:=DllCall("CreateCompatibleDC", Ptr,hDC, Ptr)
hBM1:=DllCall("CreateCompatibleBitmap", Ptr,hDC, "int",w, "int",h, Ptr)
oBM1:=DllCall("SelectObject", Ptr,mDC1, Ptr,hBM1, Ptr)
DllCall("BitBlt", Ptr,mDC1, "int",0, "int",0, "int",w, "int",h
, Ptr,hDC, "int",x, "int",y, "uint",0xCC0020) ; SRCCOPY
if !InStr(c,"*") ; Color Mode
{
; Color c(RGB)-->COLORREF for WinApi=RGB(R,G,B)=BGR
BGR:=((c&0xFF)<<16)|(c&0xFF00)|((c&0xFF0000)>>16)
; All colors are converted to 1 or 0 utf-16 characters
c1:=16bppTo24bpp(Asc("1")), c0:=16bppTo24bpp(Asc("0"))
VarSetCapacity(Rect, 16)
NumPut(0, Rect, 0, "uint"), NumPut(0, Rect, 4, "uint")
NumPut(w, Rect, 8, "uint"), NumPut(h, Rect, 12, "uint")
mDC2:=DllCall("CreateCompatibleDC", Ptr,hDC, Ptr)
hBM2:=DllCall("CreateCompatibleBitmap", Ptr,hDC, "int",w, "int",h, Ptr)
oBM2:=DllCall("SelectObject", Ptr,mDC2, Ptr,hBM2, Ptr)
hBrush1:=DllCall("CreateSolidBrush", "uint",BGR^c1^c0, Ptr)
DllCall("FillRect", Ptr,mDC2, Ptr,&Rect, Ptr,hBrush1)
DllCall("DeleteObject", Ptr,hBrush1)
DllCall("msimg32.dll\TransparentBlt", Ptr,mDC2
, "int",0, "int",0, "int",w, "int",h, Ptr,mDC1
, "int",0, "int",0, "int",w, "int",h, "uint",BGR)
DllCall("BitBlt", Ptr,mDC2, "int",0, "int",0, "int",w, "int",h
, Ptr,mDC1, "int",0, "int",0, "uint",0x660046) ; SRCINVERT
; Color c-->BGR^(BGR^c1^c0)=c1^c0, the others-->X^X=0
hBrush2:=DllCall("CreateSolidBrush", "uint",c0, Ptr)
DllCall("FillRect", Ptr,mDC1, Ptr,&Rect, Ptr,hBrush2)
DllCall("DeleteObject", Ptr,hBrush2)
DllCall("BitBlt", Ptr,mDC1, "int",0, "int",0, "int",w, "int",h
, Ptr,mDC2, "int",0, "int",0, "uint",0x660046) ; SRCINVERT
; Color c-->(c1^c0)^c0=c1, the others-->0^c0=c0
DllCall("SelectObject", Ptr,mDC2, Ptr,oBM2)
DllCall("DeleteObject", Ptr,hBM2)
DllCall("DeleteDC", Ptr,mDC2)
}
DllCall("ReleaseDC", Ptr,win, Ptr,hDC)
VarSetCapacity(bits, w*h*4, 0), bpp:=!InStr(c,"*") ? 16:32
VarSetCapacity(bi, 40, 0)
NumPut(40, bi, 0, "int"), NumPut(w, bi, 4, "int")
NumPut(-h, bi, 8, "int"), NumPut(1, bi, 12, "short")
NumPut(bpp, bi, 14, "short"), NumPut(0, bi, 16, "int")
DllCall("GetDIBits", Ptr,mDC1, Ptr,hBM1
, "int",0, "int",h, Ptr,&bits, Ptr,&bi, "int",0)
DllCall("SelectObject", Ptr,mDC1, Ptr,oBM1)
DllCall("DeleteObject", Ptr,hBM1)
DllCall("DeleteDC", Ptr,mDC1)
Scan0:=&bits, Stride:=((w*bpp+31)//32)*4
}

16bppTo24bpp(c) {
B:=(c&0x1F)<<3, G:=((c>>5)&0x1F)<<3, R:=((c>>10)&0x1F)<<3
Return, (B<<16)|(G<<8)|R
}

;================= The End =================

Text=
(
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_00000__________0________0_____________________________________________
00___00__________________0_____________________________________________
0_____0__________________0_____________________________________________
0_____00_0___0__0___000__0__00____0000___000___000___000__000__000_____
0_____00_0___0__0__00____0_0_________0__00____00____0___0_0____0_______
0_____00_0___0__0__0_____000_______000__0_____0_____00000_00___00______
0_____0__0___0__0__0_____000______0__0__0_____0_____0______00___00_____
00___00__0___0__0__00____0_00_____0__0__00____00____00______00___00____
_00000____0000__0___000__0__00____0000___000___000___0000_000__000_____
______00_______________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
_______________________________________________________________________
)

if FindText(81,134,Text,"*147",1500,1500,X,Y)
{
CoordMode, Mouse
MouseMove, X, Y
}