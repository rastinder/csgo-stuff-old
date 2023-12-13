#include <Vis2>  ; Equivalent to #include .\lib\Vis2.ahk

global sx,sy,l,b,x,y
x = 640
y = 480
sx = 0
sy = 0
l = 0
b = 0
p::Pause


box1 :=ocr([sx,sy,l,b])
box2 :=ocr([sx + x*1 ,sy,l,b]) 
box3 :=ocr([sx + x*2 ,sy,l,b]) 
box4 :=ocr([sx + x*3 ,sy,l,b]) 
box5 :=ocr([sx,sy + y,l,b]) 
box6 :=ocr([sx + x*1 ,sy + y,l,b]) 
box7 :=ocr([sx + x*2 ,sy + y,l,b]) 
box8 :=ocr([sx + x*3 ,sy + y,l,b]) 
box9 :=ocr([sx + x*4 ,sy,l,b]) 
box10 :=ocr([sx + x*4 ,sy + y,l,b]) 

TrayTip, %box1% %box2% %box3% %box4% %box5% 
TrayTip, %box6% %box7% %box8% %box9% %box10% 
sleep 1000

loop {
x = 640
y = 480
sx = 0
sy = 0


;text1  :=ocr([5 ,17,50,14])
;text1  :=ocr([310 ,17,26,12])
;text2  :=ocr([310 + x ,35,26,12])
;text3  :=ocr([310 + x*2,35,26,12])
;text4  :=ocr([310 + x*3,35,26,12])
;text5  :=ocr([310,35 +y*1,26,12])
;text6  :=ocr([310 + x,35 +y,26,12])
;text7  :=ocr([310 + x*2,35 +y,26,12])
;text8  :=ocr([310 + x*3,35 +y,26,12])
;text9  :=ocr([310 + x*4,35,26,12])
;text10 :=ocr([310 + x*4,35+y,26,12])




;team5  :=ocr([5,22 +y*1,50,14])
;team6  :=ocr([5 + x,22 +y,50,14])
;team7  :=ocr([5 + x*2,22 +y,50,14])
;team8  :=ocr([5 + x*3,22 +y,50,14])
;team9  :=ocr([5 + x*4,22,50,14])
;team10 :=ocr([5 + x*4,22+y,50,14])
;t := "0:03"


;TrayTip, %text1%, ;%text2%, %text3% ,%text4%, %text9%
;if ( t = text1)
	;MsgBox ok

;TrayTip, %text5%, %text6%, %text7%, %text8%, %text10% 
;sleep 1000
;
;text1 :=ocr([305,50,39,14])
;
;TrayTip, %text1% %text2% %text3% %text4% %text5% 
;TrayTip, %text6% %text7% %text8% %text9% %text10% 
;sleep 1000
getteam()
getscore()
TrayTip, %box1% ,%box2%, %box3%, %box4% ,%box5% 
TrayTip, %box6%, %box7% ,%box8%, %box9%, %box10% ,
;sleep 1000
}

getteam()
{	
	team = asdfg
	team :=ocr([5,22,50,14])
	TrayTip, team %team%
	IfInString, team, "T Start" or "CT start"
	;~ IfInString, team, "T Start" or "CT start"
	{
		
		TrayTip, team found
		if(team := "T Start")
		{
			TrayTip, t's are upper
			t = up 
		}	
		else
		{
			t = down
			TrayTip, t's are down
		}
			return
	}
	team  :=ocr([5 + x ,22,50,14])
	TrayTip, team %team%
	IfInString, team, "T Start" or "CT start"
 ;~ IfInString, team, "T Start" or "CT start"
	{
		
		TrayTip, team found
		if(team := "T Start")
		{
			TrayTip, t's are upper
			t = up 
		}	
		else
		{
			t = down
			TrayTip, t's are down
		}	
		return
	}
	team  :=ocr([5 + x*2,22,50,14])
	TrayTip, team %team%
IfInString, team, "T Start" or "CT start"
	{
		
		TrayTip, team found
		if(team := "T Start")
		{
			TrayTip, t's are upper
			t = up 
		}	
		else
		{
			t = down
			TrayTip, t's are down
		}	
		return
	}
	team  :=ocr([5 + x*3,22,50,14])
	TrayTip, team %team%
IfInString, team, "T Start" or "CT start"
	{
		
		TrayTip, team found
		if(team := "T Start")
		{
			TrayTip, t's are upper
			t = up 
		}	
		else
		{
			t = down
			TrayTip, t's are down
		}	
		return
	}
	team :=ocr([5,22 +y*1,50,14]) ;5
	TrayTip, team %team%
IfInString, team, "T Start" or "CT start"
	{
		
		TrayTip, team found
		if(team := "T Start")
		{
			TrayTip, t's are upper
			t = up 
		}	
		else
		{
			t = down
			TrayTip, t's are down
		}
		return
	}
		team  :=ocr([5 + x,22 +y,50,14]) ;6
		TrayTip, team %team%
IfInString, team, "T Start" or "CT start"
	{
		
		TrayTip, team found
		if(team := "T Start")
		{
			TrayTip, t's are upper
			t = up 
		}	
		else
		{
			t = down
			TrayTip, t's are down
		}
		return
	}
}
getscore()
{	
	sx = 305
	sy = 31
	l = 18
	b = 11
	i = 1
	while(i <= 10)
	{	
		cts := box%i%  + 0
		if ( cts >= 0 or cts <= 15)
		{	
			TrayTip, ct score %cts%
			break
		}
		TrayTip, cts %cts% /  box %box% /i %i%
		i++
	}
	sx = 326
	sy = 31
	i = 0
	while (i <= 10)
	{
			tss := box%i% + 0
			if(tss >= 0 or cts <= 15)
			{
				TrayTip, ts score %tss%
				
				break
			}	
			TrayTip, ts %tss%   box %box% i %i%
			i++
	}
}
	
	


