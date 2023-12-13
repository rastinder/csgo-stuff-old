superinv()
{
    SetMouseDelay, 1
    zz := "350"
    ,a1 := ""
    ,a2 := ""
    ,outside_accs_up:=[]
    ,outside_accs_down:=[]
    msg:="|<msg>0xF8F8F8@1.00$14.001zU7kEkb0tsSTzbzs00U"
    ,notinlobby:="|<notinlobby>*108$8.ks4M63XswT7XtyTbzyTbU"
    ,cancel_bt:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"
     if (ok2:=FindText(320, 0, 2580, 580, 0, 0, notinlobby))
    {
        OutputDebug % ok2.maxindex() " not in lobby"
        for i,v in ok2
        {
            ;detect which is not inlobby
            Xas :=ok2[i].x , Yas :=ok2[i].y
            FindText_MouseTip(Xas, Yas)
            acc_num := Xas/640
            ,acc_num:=Ceil(acc_num)
            if Yas > 480
            {
                acc_num := acc_num + 5 
                 ,outside_accs_down.push(acc_num)
            }
            else
                outside_accs_up.push(acc_num)
             ODebug = %acc_num% not in lobby

            ; copy INV code
            haa := All_UserInfo[acc_num]
                ,haa := StrSplit(haa, ",")
                ,haaa := haa[4]
                ,clipboard := ""
                loop, 2
                {
                if !haaa
                    {
                        OutputDebug get inv code
                        ; look for join msg
                        x := acc_num * 640 - 20
                        if y > 480
                        y := 128 + 480
                        else
                        y = 128
                        MouseClick,left,x,y
                        MouseClick,left,-127,29,,50,, R
                        MouseClick,left,-145,133,,10,,R
                        MouseClick,left,59,2,,10,,R

                        if clipboard
                        {
                         inv_code[acc_num] := clipboard
                          break
                        }
                         if (ok:=FindText(0, 0, 3200, 1920, 0, 0, cancel_bt))
                         {
                            for i,v in ok
                            {
                                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                MouseClick,left, %x%, %y%
                            }
                        }
                    }

                } 
        }
        OutputDebug inv remaining accs
        if (outside_accs_up.maxindex() > outside_accs_up.maxindex())
        {
           loop, % outside_accs_up.maxindex()
           {


           }
        }
    }
    SetMouseDelay, -1
}


initiate_inv(a1,a2)
{
    gosub,up_inv
    gosub,down_inv
    while (a1 != 0 and a1 != 0)
    sleep 100
}

up_inv::
zz = 350
    Clipboard1 := a1
        if Clipboard1
        {
            ;odebug = %A_Index%, %a% 
            MouseMove	3182,125
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	3182,125
            sleep %zz%	
            MouseClick, left,	3053,155
            sleep %zz%	
            MouseClick, left,	2836,245 ;type
            sleep %zz%	
            ;odebug = %Clipboard%
            Sleep 100
            SendInput, %Clipboard1%
            sleep %zz%	
            MouseClick, left,	2915,247
            sleep %zz%	
            sleep %zz%
            MouseClick, left,	2795,265
            sleep %zz%	
            MouseClick, left,	3008,267 ; lobby inv
            Text:="|<inv_msg>*156$14.zzw0C01W4MG601U0Q0DzzU"
            if (ok:=FindText(2777, 207, 3121, 864, 0, 0, Text))
            {
                X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                Click, %X%, %Y%
            }	
            sleep %zz%
            MouseClick, left,	2975,314
            sleep %zz%
            Text:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"
            if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
            {
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                SetKeyDelay ,,50
                MouseClick,left, %x%, %y%
                sleep %zz%
                zz := zz + 100
                MouseMove	3182,125
                sleep %zz%	
                sleep %zz%	
                MouseClick, left,	3182,125
                sleep %zz%	
                MouseClick, left,	3053,155
                sleep %zz%	
                MouseClick, left,	2836,245 ;type
                sleep %zz%	
                ;odebug = %Clipboard%
                Sleep 100
                SendInput, %Clipboard1%
                sleep %zz%	
                MouseClick, left,	2915,247
                sleep %zz%	
                sleep %zz%
                MouseClick, left,	2795,262
                sleep %zz%	
                MouseClick, left,	3013,266 ; lobby inv
                sleep %zz%
                sleep %zz%
                MouseClick, left,	2975,314
                zz := zz - 100
            }
        }
        a1 = 0

return
down_inv::
zz = 350
    Clipboard1 := a2
        if Clipboard1
        {
            MouseMove	3179,604
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	3179,604
            if a_index = 1
                sleep %zz%
            sleep %zz%	
            MouseClick, left,	3053,634
            sleep %zz%	
            MouseClick, left,	2850,732
            sleep %zz%
            ;odebug = %Clipboard%
            Sleep 100
            SendInput, %Clipboard1%
            sleep %zz%
            MouseClick, left,	2916,719 ; tic
            sleep %zz%	
            sleep %zz%
            MouseClick, left,	2792,748 ; click dp
            sleep %zz%	
            MouseClick, left,	3009,747
            sleep %zz%	
            Text:="|<inv_msg>*156$14.zzw0C01W4MG601U0Q0DzzU"
            if (ok:=FindText(2777, 207, 3121, 864, 0, 0, Text))
            {
                X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                Click, %X%, %Y%
            }
            sleep %zz%
            MouseClick, left,	2967,790
            sleep %zz%
            Text:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"
            if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
            {
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                MouseClick,left, %x%, %y%
                sleep %zz%
                zz := zz + 100
                MouseMove	3179,604
                sleep %zz%	
                sleep %zz%	
                MouseClick, left,	3179,604
                sleep %zz%	
                MouseClick, left,	3053,634
                sleep %zz%	
                MouseClick, left,	2850,732
                sleep %zz%
                ;odebug = %Clipboard%
                Sleep 100
                SendInput, %Clipboard1%
                sleep %zz%
                MouseClick, left,	2916,719 ; tic
                sleep %zz%	
                sleep %zz%
                MouseClick, left,	2793,736 ; click dp
                sleep %zz%	
                MouseClick, left,	3009,735
                sleep %zz%	
                MouseClick, left,	2967,790
                zz := zz - 100
            }
        }
a2 = 0
return