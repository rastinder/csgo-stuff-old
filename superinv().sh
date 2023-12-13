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

            ; INV processs
            haa := All_UserInfo[acc_num]
                ,haa := StrSplit(haa, ",")
                ,haaa := haa[4]
                ,clipboard := ""
                while(cancelis != 0)
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
                         cancel_bt:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"
                         if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
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