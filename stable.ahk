#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
#include <Vis2> ; Equivalent to #include .\lib\Vis2.ahk
#include <tf> 
;#Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen
SetTitleMatchMode, 2

; Text:="|<dc>21@0.78$9.00ECmMH1q04"  dc
;win:="|<ct_or_T_win_logo>*171$9.zxzzxVhhhhhhzw"
;#MaxHotkeysPerInterval 9l9000000
;#HotkeyInterval 99000000
;#KeyHistory 0l
;ListLines Off

;SetBatchLines, -1
;SetKeyDelay, -1, -1
SetMouseDelay, -1
ComObjError(0)
;SetDefaultMouseSpeed, 0
;SetWinDelay, -1
;SetControlDelay, -1
;SendMode Input

RunAsAdmin()
version = v10.21
IniWrite,%version%,status.ini,variable,version
if ( A_ScreenHeight != 2160)
    send_telegram("fix my resolution")
CustomColor := "EEAA99" ; Can be any RGB color (it will be made transparent below).
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %CustomColor%
Gui, -DPIScale
Gui, Font, s12 ; Set a large font size (32-point).
Gui, Add, Text, vMyText cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText21 cYellow, %A_UserName% ,%version% ;XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY  ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText20 cWhite, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText19 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText18 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText17 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText16 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText15 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText14 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText13 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText12 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText10 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText9 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText8 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText7 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText6 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText5 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText4 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText3 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText2 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText1 cLime, XXxxxxxxxxxxxxxxxxxxxxXXX YYyyyyyyyyyyyyyyyyyyyyYYY ; XX & YY serve to auto-size the window.
; Make all pixels of this color transparent and make the text itself translucent (150):
WinSet, TransColor, %CustomColor% 150
tText := []
SetTimer, UpdateOSD, 10
Gosub, UpdateOSD ; Make the first update immediate rather than waiting for the timer.
Gui, Show, x3210 y1 NoActivate ; NoActivate avoids deactivating the currently active window.

IniRead,my_mode,status.ini,SectionName,my_mode
if(my_mode == 16)
{
    Process, Priority, , L
    play_160()
}
else if(my_mode == 15)
{
    Process, Priority, , L
    play_1515()
}
else if(my_mode == "pr2")
{
    play_pr2()
}

NumpadAdd::Pause
NumpadSub::print("imp","imp","1","lan") ; folder,comment,repeat,location
F4::OutputDebug 1614 %do1614%
F6::play_160()
;F6::play_1515()
F7::changeaccs()
F8::tenaccopen()
F2::forcere = 1
F3::isinhome()
;F9::swap_accs()
F10::single_inv()
;F10::getteam()
F11::click_settings_then_video()
F12::update_client_check("1")
!t::topbat()
!b::bottombat()
!r::Reload
!o::time_since_last_match := ""
!k::RunWait kill_steam.bat
![::change("down","500")
!]::change("up","500")

change(state,value)
{
    OutputDebug, %state% by %value%
    IniRead,reconnectdelay,status.ini,SectionName,reconnectdelay
    if (state == "up")
        reconnectdelay := reconnectdelay + value
    else
    {
        reconnectdelay := reconnectdelay - value
        if (reconnectdelay<6400)
            reconnectdelay = 6400
    }
    if (reconnectdelay>7500)
        reconnectdelay = 7500
    IniWrite, %reconnectdelay%, status.ini,SectionName , reconnectdelay
}

global lobby,loading,win,script,script1,go,firstrun,teamwin,wins,join,error1,a1,a2,reconnectdelay,warmupdelay,halftime,UX,UY,my_mode,xc,yc,l,sx1,sx2,sx3,sx4,sx5,sy1,sy2,tx1,tx2,tx3,tx4,tx5,ty1,ty2,get,getu,getd,t,ct,matchcount,skiphftm,fixscore,s,godownfound,godupfound,nextmatch,set,Primes_StartingUser,matchlimit,getct,gett,rank_open,play_now,click_time,click_time1,time_since_last_match,ha,runfuntion,test1,total_accounts_open,i_value,steam_folder,owner,swap_accs,do1614,steampids,odebug,forcere,lobbycount,inv_code,fix_rounddelay,All_UserInfo,need_mode,swap_accs_disable

variables()
{
    matchlimit = 15
    rounddelay = 19000
    reconnectdelay = 13000 ;12000 main, 13 8350 ,15 8320
    reconnectdelay1 = 17000 ;reconnect delay on halftime
    read_value()
    IniRead, map_name, status.ini,SectionName , map_name
    IniRead, map_command, status.ini,variable , map_command
    IniRead, ping, status.ini,variable , ping
    FileDelete, %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg
    FileAppend,%map_command% %map_name% `n , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg
    ;IniWrite, %map_command% %map_name% , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg,map,
    ;IniWrite, mm_dedicated_search_maxping %ping% , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg,map,
    FileAppend,mm_dedicated_search_maxping %ping%  , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg
    ;IniWrite, %competitive% competitive , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg,echo ,
    IniRead,owner,status.ini,SectionName,owner
    IniRead, swap_accs, status.ini,SectionName , swap_accs
    IniRead, more_wins, status.ini,SectionName , more_wins
    IniRead,abandon_num,status.ini,SectionName,abandon_num
    if ( abandon_num > 0)
    {}
        else
        {
            IniWrite,1,status.ini,SectionName,abandon_num
        }
    if (more_wins = 1)
        do1614 = 1
    odebug = ac num %set%
    ;odebug = %steam_folder%
    Primes_StartingUser := []
    loop, Read,Prime_Users.ini
    {
        Primes_StartingUser.push(A_LoopReadLine) ; 
    }

    UX = 1
    UY = 1
    rounds = 7 ; how many rounds to win 
    halftimedelay = 1500
    warmupdelay = 62000
    lobby = 1
    loading = 0
    win = 0
    script = 0
    script1 = 0
    go = 0
    firstrun = 0
    teamwin = 0
    wins = 0
    skiphftm = 1
    fixscore = 0
    ;join = 0 ;  u wanna autojoin on first run?? 1 is run 0 will not
    error1 = 0 ; connection lost bull shit
    test1 = 1
    cts += 0
    tss += 0
    sx1 = 2991
    sy1 = 947
    l = 139
    b = 17
    click_time1 = 0
    click_time = 0
    play_now = 0
    steampids := []
    inv_code := []
    All_UserInfo :=[]
    result := set - 10
    if result <= 0 
        result = 1
    loop,10
    {
        FileReadLine, ha, username.txt, %result%
        All_UserInfo[A_Index] := ha
        result++
    }
    forcere = 0
    ;swap_accs = 0 ; 0 = no 1 = yes

    i_value := total_accounts_open+1
    ImageSearch, FoundX, FoundY, 150, 100, 3060, 320, *5 accept.png
    If (ErrorLevel = 0)
        ErrorLevel1 = 0
    get :=ocr([sx1,sy1,l,b])
    If InStr(get,"G0") or InStr(get,"GO")
    {
        join = 0
    }
    Else If (ErrorLevel1 = 0)
    { 
        lobby = 0
        join = 0
    }
    else
    {
        start_check()
        join = 1
        lobby = 0
        testing()
        odebug = are csgo even launched?
        ;Text:=  "|<new settings>3@1.00$12.8484M6QCHm1U1UU"
        Text:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
        if (ok:=FindText(2582-16, 777-100, 2582+16, 777+100, 0, 0, Text))
        {
            odebug = ys
        }
        else
        {
            odebug = no
            SET := SET - total_accounts_open
            newchangeaccs()
        }
    } 
}

play_pr2()
{
    variables()
    run pr2.exe
    run vote_map.exe
    Loop
    {
        starterror()
        clear_injectinfo()
        ;inject_hack()
        run walkbot.exe ,,hide
        RunWait, video.bat, %steam_folder%userdata
        Text:="|<hack_menu>*90$20.03zk0zwzw1Dy03zXUzssDyC00U0080U"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
            Sleep 500
            send {insert down}
            Sleep 50
            send {insert up}
        }
        Text:="|<setting>*127$16.zzzwDzkzv3T00w03kwDXlyD7kwD00w03v3TwDzkzzzy"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
        }
        Text:="|<video>*82$32.zzzzzzv7TzzyFbzzzY00Tzw007zz801zzm00Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000DzzzzzzzzzzU"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
        }
        Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
        ;while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        ;{
        ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        ;Click, %X%, %Y%
        ;}
        Text:="|<play>*136$24.zs7zzU1zy00Tw00Ds007k003k003U001U401070007k007w007y007k00700U401U001k003k003s007w00Dy00TzU1zzs7zU"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
        }
        ;RunWait "C:\Program Files (x86)\Nemex\Mouse Recorder Pro 2\Mouse Recorder Pro.exe" "C:\Users\FEAR\Documents\My Recorded Scripts\Untitled1.m2s" -count1 -autorun -end,,Hide
        ;Text:="|<war_games>*120$30.1kkI01mUI41kUI0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzU"
        ;Text:="|<deathmatch>*86$45.zzzzzzzz7zvzzzTkztDzntyI000003mU10820SI0810G3kU40880Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000007zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw"
        ;while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        ;{
        ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        ;Click, %X%, %Y%
        ;}
        ;Text:="|<dust 11>*95$32.zzzzzsDzvs6tT4TPiK17qvZVvxitN6zPiqQjqsQ0Ms7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
        ;while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        ;{
        ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        ;Click, %X%, %Y%
        ;sleep 200
        ;send {insert}
        ;sleep 600
        ;Text:="|<select_profile>*87$62.zzzzzzzzzzzzyrjzyTzbzzzZvzv9zvzhwNObCLTAGv+GJYYbbZ9DGwYvffnvuvkc96uutyyiwWuIaigzgdDBUZcQM1AP3zzzzzzzzzys"
        ;if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        ;   {
        ;      X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        ;      MouseClick, left, %X%, %Y%
        ;      sleep 1600
        ;      send {insert}
        ;   }
        ;}
        Text:="|<go>*68$15.1s870AtVzA8tU7AAtU700s4"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            MouseClick, left, %X%, %Y%
            sleep 2000
        }
        Text:="|<go>*69$17.zzz1sC1kAnaNzAmCNUQnAta1kA3UTzzk"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            MouseClick, left, %X%, %Y%
            sleep 2000
        }
        sleep 20000
        StartTime := A_TickCount
        ElapsedTime := A_TickCount - StartTime
        total_pr2_done :=count_pr2()
        osd := total_pr2_done
        odebug = %osd% already pr2+
        while ( ElapsedTime <= 2400000 ) ;........................................................................................................... loop start
        {
            if (osd != total_pr2_done)
            {
                osd := total_pr2_done
                odebug = total pr2 done = %osd%
            }
            if (total_pr2_done >= total_accounts_open)
                break
            ElapsedTime := A_TickCount - StartTime
            MyTicks := ElapsedTime/60000
            MyTicks:= SubStr(MyTicks,1,4)
            TrayTip,time, %MyTicks% mins,1
            Text:="|<team_select>*190$10.k+S3wTxzrzTszfxkC"
            ;Text:="|<auto_team select>*124$17.zzzzDzs5zbXyT3xyTnzzbyTjwzDnzD7y0Tz3zzzy"
            while (ok:=FindText(0, 0, 3200, 1920, 0.1, 0.1, Text))
            {
                ;odebug = auto select found
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                y9:=y-200
                ,x9 := x-100
                Click, %X9%, %Y9%
                Click down
                Sleep 50
                Click up
                Sleep 20
                MouseClick, left, 3800, 490
                Click, %X%, %Y%
                Sleep 20
                MouseClick, left, 3800, 490 
            }
            Text:="|<ok>*111$11.zzXq4ActFmXV/zy"
            while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
            {
                MouseGetPos, xpos, ypos 
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                while (x!=0)
                {
                    Click, %X%, %Y%
                    MouseMove, xpos, ypos
                    sleep 100
                    Click, %X%, %Y%
                    MouseMove, xpos, ypos
                    if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                    {
                        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    }
                    else
                    {
                        x = 0
                    }
                }
                Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                }
                Text:="|<play>*136$24.zs7zzU1zy00Tw00Ds007k003k003U001U401070007k007w007y007k00700U401U001k003k003s007w00Dy00TzU1zzs7zU"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                }
                ;Text:="|<deathmatch>*86$45.zzzzzzzz7zvzzzTkztDzntyI000003mU10820SI0810G3kU40880Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000007zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw"
                ;while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                ;{
                ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                ;Click, %X%, %Y%
                ;}
                ;Text:="|<dust 11>*95$32.zzzzzsDzvs6tT4TPiK17qvZVvxitN6zPiqQjqsQ0Ms7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
                ;while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                ;{
                ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                ;Click, %X%, %Y%
                ;}
                Text:="|<go>*68$15.1s870AtVzA8tU7AAtU700s4"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    MouseClick, left, %X%, %Y%
                    sleep 2000
                }
                Text:="|<go>*69$17.zzz1sC1kAnaNzAmCNUQnAta1kA3UTzzk"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    MouseClick, left, %X%, %Y%
                    sleep 2000
                }
            }
            total_pr2_done :=count_pr2()
            crash_check()
        }
        pr1_users()
        newchangeaccs()
        make_pr2_ini()
    }
} 
check_for_pr1()
{
    ;i_value := total_accounts_open+1
    ;IniWrite, %total_pr2_done%, status.ini,result, pr2
    sx1 := "612"
    ,sy1 := "67"
    ,tx1 := "628"
    ,ty1 := "78"
    ,xc := "640"
    ,yc := "480"
    ,sx1 := sx1
    ,sx2 := sx1 + xc
    ,sx3 := sx1 + xc*2
    ,sx4 := sx1 + xc*3
    ,sx5 := sx1 + xc*4
    ,sy2 := sy1 + yc
    ,sy3 := sy1 + yc*2
    ,sy4 := sy1 + yc*3
    ,tx1 := tx1
    ,tx2 := tx1 + xc
    ,tx3 := tx1 + xc*2
    ,tx4 := tx1 + xc*3
    ,tx5 := tx1 + xc*4
    ,ty2 := ty1 + yc
    ,ty3 := ty1 + yc*2
    ,ty4 := ty1 + yc*3
    ,i := "1"
    ,b := "1"
    ,a := "1"
    ,pos1 := "-x 3 -y 16"
    ,pos2 := "-x 643 -y 16"
    ,pos3 := "-x 1283 -y 16"
    ,pos4 := "-x 1923 -y 16"
    ,pos5 := "-x 2563 -y 16"
    ,pos6 := "-x 3 -y 496"
    ,pos7 := "-x 643 -y 496"
    ,pos8 := "-x 1283 -y 496"
    ,pos9 := "-x 1923 -y 496"
    ,pos10 := "-x 2563 -y 496"
    ,pos11 := "-x 3 -y 976"
    ,pos12 := "-x 643 -y 976"
    ,pos13 := "-x 1283 -y 976"
    ,pos14 := "-x 1923 -y 976"
    ,pos15 := "-x 2563 -y 976"
    ,pos16 := "-x 3 -y 1456"
    ,pos17 := "-x 643 -y 1456"
    ,pos18 := "-x 1283 -y 1456"
    ,pos19 := "-x 1923 -y 1456"
    ,pos20 := "-x 2563 -y 1456"
    while (i < i_value )
    {
        ; IniRead, total_pr2_done, status.ini,result , pr2
        if (i = 6)
        {
            b := "2"
            ,a := "1"
        }
        if (i = 11)
        {
            b := "3"
            ,a := "1"
        }
        if (i = 16)
        {
            b := "4"
            ,a := "1"
        }
        sx := sx%a%
        ,sy := sy%b%
        ,tx := tx%a%
        ,ty := ty%b%
        ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 pr1.png 
        if (errorlevel = 0)
        {
            odebug = %i%th acc is pr1
            ;total_pr2_done++
            send_telegram("pr1")
            if (my_mode == "pr2")
            {
            }
            else
            {
                loop, Read,pr1.ini
                {
                    pr1_folder.push(A_LoopReadLine) ; 
                }
                IniRead, set_accs, status.ini,SectionName , set
                user_num := set_accs + i
                FileReadLine,pr1_user,username.txt,%user_num%
                ,pr1_user := StrSplit(pr1_user, ",")
                ,pr1_user := pr1_user[1]
                IniWrite, %pr1_user%, pr1.ini,pr1, %i%

                v := HasVal(pr1_folder, pr1_user)
                if (v = 0)
                {
                    FileAppend, %pr1_user% `n, pr1.ini
                }
                forcere = 1
                return
            }
        }
        else if (my_mode == "pr2")
        {
            odebug = cant find pr of %i%th acc
            ;print("pr ni lbea @"%i%)
            IniWrite, 1, pr2.ini,current, %i%
            IniWrite, 1, pr2.ini,%set%, %i%
            IniWrite, 1, pr2.ini,%set%_problem, %i%
        }
        ;diff := i_value + 1 - i
        ;result := set - diff
        ;IniWrite, %total_pr2_done%, status.ini,result, pr2
        i++
        ,a++
    } ;while
}

count_pr2()
{
    i = 1
    count = 0
    loop ,%total_accounts_open%
    {
        IniRead, count_it, pr2.ini,current , %i%
        count := count+count_it
        i ++
    }
    return count
}
make_pr2_ini()
{
    i = 1
    while (i <= total_accounts_open)
    {
        IniWrite, 0, pr2.ini,current, %i%
        i ++
    }
}
clear_injectinfo()
{
    FileDelete, %ha% injected.ini
}
inject_hack()
{
    ;ProcessID := "csgo.exe"
    pids := pidListFromName("csgo.exe")
    value1 := pids[1]
    ,value2 := pids[2]
    ,value3 := pids[3]
    ,value4 := pids[4]
    ,value5 := pids[5]
    ,value6 := pids[6]
    ,value7 := pids[7]
    ,value8 := pids[8]
    ,value9 := pids[9]
    ,value10 := pids[10]
    ,value11 := pids[11]
    ,value12 := pids[12]
    ,value13 := pids[13]
    ,value14 := pids[14]
    ,value15 := pids[15]
    ,value16 := pids[16]
    ,value17 := pids[17]
    ,value18 := pids[18]
    ,value19 := pids[19]
    ,value20 := pids[20]
    ;odebug = %pids%
    ;odebug = %pids0%
    i = 1
    Loop 20
    {
        apid := value%i%
        ;odebug = %apid%
        if (apid = "")
        {
            odebug = done injecting total %i%
            return
        }
        Run Injector.exe -p %apid% -i aa.dll
        FileAppend, %apid% `n, injected.ini
        Sleep 500
        i++
    }
}
pr1_users()
{
    i = 1
    while (i <= total_accounts_open)
    {
        IniRead, so, pr2.ini,current, %i%
        if (so = 0)
        {
            Index := set - total_accounts_open + i
            FileReadLine, ha,username.txt, %Index%
            ,ha := StrSplit(ha, ",")
            ,ha := ha[1]
            FileAppend, %ha% `n pr1.txt
        }
        i ++
    }
    Iniwrite,0,status.ini,result,pr2
}

play_160()
{
    S = 1
    IniRead,rank_open,status.ini,SectionName,rank_open
    if (rank_open = 1)
        swap_accs_disable=1
    variables()
    need_mode = 0
    play()
}

play_1515()
{ 
    S = 1
    variables()
    need_mode = 1
    play()
}
play()
{
    odebug =ro %rank_open%,mw:%more_wins%,m:%medal%
    ; SLEEP 2000
    changeaccs()
    loop
    {
        ;Sleep 100
        starterror()
        If ( lobby = 1 ) 
        {
            goe()
        } 
        If ( go = 0 ) 
        {
            accept()
            ;odebug = accepted
        } 
        If ( a1 = 1 && a2 = 1 )
        {
            odebug = match found
            a1 = 0
            a2 = 0
            lobby = 0
            loading = 1
            firstrun = 1
            go = 1
            nextmatch = 1
            odebug = match %matchcount% completed
        }
        Else If ( a1 = 1 or a2 = 1 )
        { 
            a1 = 0
            a2 = 0
            odebug = 1 ACCEPT DETECTED
            uclose = 0
            dclose = 0
            ;sleep 26000
            StartTime := A_TickCount
            ElapsedTime := A_TickCount - StartTime
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 accept.png
            while (ErrorLevel = 0)
            {
                gos()
                ;error()
                if(ElapsedTime > 40000 )
                {
                    Text:="|<reconnect>*153$27.000W16F4F0H8006F0180004"
                    if (ok:=FindText(0, 0, 2560, 960, 0, 0, Text))
                    {
                        break
                    } 
                }
                else if (ElapsedTime > 80000 )
                {
                    x := FoundX 
                    y := FoundY
                    MouseClick, left, x, y
                    Sleep 100
                    WinGet, var, PID, A
                    RunWait taskkill /PID %var% /F /T ,,hide
                    RunWait,Taskkill /FI "USERNAME eq %USERNAME%" /fi “status eq not responding” /IM csgo.exe /F /T,,hide
                }
                ElapsedTime := A_TickCount - StartTime
                ; odebug =  i c accept loop
                ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 accept.png
            }
            gos()
            lobbycheck() 
            sleep 44000
        } 
        if ( loading = 1 )
        {
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 540, *2 accept.png
            theaccept = 0
            while (ErrorLevel = 0 and theaccept < 8)
            {
                theaccept++
                sleep 1000
                ImageSearch, FoundX, FoundY, 0, 0, 3200, 540, *2 accept.png
            }
            If (ErrorLevel = 0)
            {
                t = "no"
                matchcount--
                odebug = matchcount-- %matchcount%
                lobby = 1
                loading = 0
                firstrun = 0
                go = 0
                nextmatch = 0
                ;break
            }
            else
            {
                if ( firstrun = 1 )
                { 
                    gett = 0
                    getct = 0 
                    t = no
                    odebug = chking for map now
                        map()
                    odebug = map gone wait %warmupdelay% sec
                    StartTime := A_TickCount
                    ElapsedTime := A_TickCount - StartTime
                        IniRead, more_wins, status.ini,SectionName , more_wins
                    if (more_wins = 1)
                    do1614 = 1
                    ODebug =warmup_w8 %warmupdelay% sec 1614-%do1614%
                    while(ElapsedTime < warmupdelay )
                    {
                        ;odebug = Wait time %ElapsedTime%/%warmupdelay%
                        if (t = "no" and ElapsedTime > 65000 )
                        {
                            getteam()
                            if (t = "up")
                                ct = down
                            else
                                ct = up
                        }
                        ElapsedTime := A_TickCount - StartTime
                        sleep 10
                        if ( ElapsedTime < warmupdelay*0.7)
                            error()
                        re := reconnecterror()
                        if re = 1
                        {
                            map()
                            ElapsedTime := A_TickCount - StartTime
                            re = 0
                        }
                        ifWinExist, Engine 
                        {
                            send_telegram("gc crash while warm up")
                            Sleep 3000
                            Shutdown,6
                        }
                        pid := pidListFromName("csgo.exe")
                        if (pid.MaxIndex() != 10){
                            scoreboard("1")
                            ODebug = out from pid
                            reload
                        }

                    }
                    getteam()
                    if (t = "up")
                        ct = down
                    else
                        ct = up
                    ;sleep %warmupdelay%
                    ;getteam()
                    halftime = 0
                    ;skiphftm = 1
                    firstrun = 0
                    IniRead,rank_variation,status.ini,SectionName,rank_variation
                    IniRead,rank_variation_old,status.ini,SectionName,rank_variation_old
                }
                reconnectdelay = 6800 ; previouly 6800
                if (my_mode == "abandon")
                {
                    
                }
                if (my_mode = 15)
                {
                    ;,,,,,,,,,,,,,,,,chk needed for 1614,,,,,,,,,,,,,,,,,,,,,,,,,
                    if (do1614 = 1)
                    {
                        if (rank_variation = 0)
                        {
                            temp := t
                            ,t := ct 
                            ,ct:= temp
                        }
                    }
                    ;,,,,,,,,,,,,,,,,chk needed for 1614,,,,,,,,,,,,,,,,,,,,,,,,,
                    super_dis(ct)
                    reconnect()
                    dis_8_acc(t,"4")
                    super_dis(t)
                }
                if (my_mode = 16)
                {
                    if (rank_variation = 0)
                    {
                        if (t = "up")
                            t = down
                        else
                            t = up
                    }
                    else if (rank_variation == "up")
                    {
                        t = up
                        Iniwrite,%rank_variation_old%,status.ini,SectionName,rank_variation
                    }
                    else if (rank_variation == "down")
                    {
                        t = down
                        Iniwrite,%rank_variation_old%,status.ini,SectionName,rank_variation
                    }
;..............................abandaon
IniRead,abandon_num,status.ini,SectionName,abandon_num
abandon_function(abandon_num)
Iniwrite,%abandon_num%,status.ini,SectionName,abandon_num
;.................................
;                    if (rank_open = 1)
;                    {
;                        dis_8_acc("down")
;                        super_dis("down")
;                    }
;                    else if (t = "up") ;..........................................................................................................LOGIC............................
;                    {
;                        dis_8_acc("up")
;                        super_dis("up")
;                    }
;                    else
;                    {
;                        dis_8_acc("down")
;                        super_dis("down")
;                    }
;                }

                IniRead,my_mode,status.ini,SectionName,my_mode
                matchcount++
                loading := "0"
                ,do1614 := "0"
                ,cts := "0"
                ,tss := "0"
                ,lobbycount := "1"
                Iniwrite, 0, status.ini, variable, reaload_n
                FormatTime, OutputVar, , h:mm:ss tt
                Iniwrite, %matchcount%, status.ini,match logs , set_%set%
                IniWrite, %OutputVar%, status.ini,SectionName, last_match
                if(A_WDay = 7)
                    IniWrite,0,status.ini,week,1
                else
                {	
                    maymay := A_WDay + 1
                    IniWrite,0,status.ini,week,%maymay%
                }
                IniRead,matchesperday,status.ini,week,%A_WDay%
                if (matchesperday == "ERROR")
                    matchesperday = 0
                matchesperday++
                IniWrite,%matchesperday%,status.ini,week,%A_WDay%
                Start_Time := A_TickCount
                ,time_since_last_match := A_TickCount - Start_Time
                write_value()
                join = 1
                UX = 0
                UY = 0
                Text:="|<cooldown>*149$41.00000007014000E0280011GZGfJ248AcKe29GNGPI7iQiQYc00000000000004"
                if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    odebug = cd lag geya yellow wala
                    sleep 100
                    send_telegram("cd lag geya yellow wala")
                    forcere = 1
                    swap_accs = 0
                    changeaccs() ; fgfgfg
                    ;return
                }
            } 
        }
        IniRead,need_update,status.ini,SectionName,need_update
        if (need_update = 1)
        {
            IniWrite,0,status.ini,SectionName,need_update
            run autostart.exe
            Run Taskkill /FI "USERNAME eq %USERNAME%" /IM host.exe /F /T
            tpid := pidListFromName("telegram.exe")
            cpid := tpid[1]
            RunWait taskkill /PID %cpid% /F /T ,,hide
            tpid := pidListFromName("host.exe")
            cpid := tpid[1]
            RunWait taskkill /PID %cpid% /F /T ,,hide

            ExitApp
        }
        if ( join = 1 )
        { 
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, cd_bar.png
            if (matchcount < matchlimit or ErrorLevel = 0 )
            {
                odebug = 318
                isinhome()
                sleep 250
            }
            changeaccs()
        }
        if (time_since_last_match = "")
            Start_Time := A_TickCount
        time_since_last_match := A_TickCount - Start_Time
        ;odebug = time_since_last_match %time_since_last_match%
        ;MyTicks := time_since_last_match/60000
        ;MyTicks:= SubStr(MyTicks,1,4)
        ;TrayTip,time, %MyTicks% mins,1
        if (time_since_last_match >= 960000)
        {
            if (swap_accs != 2 and swap_accs_disable != 1)
            {
                gos()
                swap_accs()
                join = 1 
                Start_Time := A_TickCount
            }
            else
            {
                odebug = no match found for set = %set% after %matchcount%th match
                    sleep 100
                print("useless","no match","1","lan") ; folder,comment,repeat,location
                forcere = 1
                join = 1
                Start_Time := A_TickCount
                swap_accs = 0
                Iniwrite, %swap_accs%, status.ini,SectionName , swap_accs
            }
        }
    }
}
UpdateOSD:
    reset_timer := A_TickCount - ultra_start_Time
    ,MyTick := reset_timer / 60000
    ,MyTick := SubStr(MyTick,1,4)
    if (reset_timer >= 600000 and join = 0 and go = 0 and lobby = 1)
    {
        odebug = no accept in 10mins 
        gos()
    }
    else if (reset_timer >= 965000 and my_mode != "pr2") ; 1800000
    {
        
        Iniread, reaload_n, status.ini, variable, reaload_n
        reaload_n++
        Iniwrite, %reaload_n%, status.ini, variable, reaload_n
        if (reaload_n =2)
        {
            run kill_steam.bat
        }
        else if (reaload_n >=3)
        {
            send_telegram("major problem","1")
            run kill_steam.bat
        }
        Else
        send_telegram("script stopped","1")
        Reload
        ultra_start_Time := A_TickCount
    }
    GuiControl,, MyText, time %MyTick%/18 mins
    if (odebug = tText[1] )
        return
    jjj = %matchcount%:%matchlimit%_%set% %reconnectdelay%
    tText[20] := jjj
    ,tText[19] := tText[18]
    ,tText[18] := tText[17]
    ,tText[17] := tText[16]
    ,tText[16] := tText[15]
    ,tText[15] := tText[14]
    ,tText[14] := tText[13]
    ,tText[13] := tText[12]
    ,tText[12] := tText[11]
    ,tText[11] := tText[10]
    ,tText[10] := tText[9]
    ,tText[9] := tText[8]
    ,tText[8] := tText[7]
    ,tText[7] := tText[6]
    ,tText[6] := tText[5]
    ,tText[5] := tText[4]
    ,tText[4] := tText[3]
    ,tText[3] := tText[2]
    ,tText[2] := tText[1]
    ,tText[1] := odebug
    ,ultra_start_Time := A_TickCount
    loop , 20
    {
        nv := tText[A_Index]
        GuiControl,, MyText%A_Index%,%nv%
    }
return

swap_accs(ab1 = 0 , ab2 = 0)
{
    gos()
    home()
    if ab1 = 0
    {
        Random,ab1,1,4
        Random,ab3,1,4
        while (ab1 == ab3)
            Random,ab3,1,4
        do = 4
    }
    else
        do = 2
    lobby := "0"
    ,join := "1"
    ,odebug := "swap & quiting"
    ,temp := total_accounts_open ;ede lod ni awen line wdai he
    ,pid_array := []
    ,ab2 := ab1 + 5
    ,ab4 := ab3 + 5

    , bb1:=ab2
    , bb2:=ab1
    , bb3:=ab4
    , bb4:=ab3

    , i :="1"
    swap_array_value("inv_code",ab2,ab1)
    if do = 4
        swap_array_value("inv_code",ab3,ab4)
    loop,%do%
    {
        total_accounts_open := ab%i%
        ,x := placing("c","x",total_accounts_open)
        ,y := placing("c","y",total_accounts_open)
        MouseClick,left,x,y,,10,,
        Sleep 100
        WinGet, OutputVar, PID , A
        OutputDebug pid of %A_Index% ,%OutputVar% `n
        pid_array.Push(OutputVar)
        i++
    }
    i =1
    loop, %do%
    {
        total_accounts_open := bb%i%
        ,x := placing("a","x",total_accounts_open)
        ,y := placing("a","y",total_accounts_open)
        ,oooo := pid_array[A_Index]
        OutputDebug %oooo% x%x% y%y% `n
        WinMove,ahk_pid %oooo%,, x, y
        Sleep 100
        i++
    }

    total_accounts_open := temp
    ,swap_accs := "1"
    ,lobbycount := ""
    Iniwrite, %swap_accs%, status.ini,SectionName , swap_accs

    ; tenaccopen()
}
swap_array_value(array,this,that){
    if (array == "inv_code")
    {
        Temp := inv_code[this]
        inv_code[this] := inv_code[that] ; <--
        inv_code[that] := Temp
        Return
    }

}
super_dis(which)
{
    Text:="|<join_msg>*197$18.DDArrrrrrDroU"
    ,new_settings:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
    ,halftime1:="|<halftime>*49$13.zzk0PUBk6k3M1g0q0P0Bg6a301zzk"
    ,map_check:="|<map_check>0xF8D764@1.00$13.6A2231bUzkTsDw7y3z1zUwkM8844E"
    ,in_match_check:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
    ,reconnect_r:="|<reconnect>*153$27.000W16F4F0H8006F0180004"
    ,Text14:="|<14>*138$9.DZsi5og5wjY"
    ,win:="|<ct_or_T_win_logo>*171$9.zxzzxVhhhhhhzw"
    ,cooldown:="|<cooldown>*149$41.00000007014000E0280011GZGfJ248AcKe29GNGPI7iQiQYc00000000000004"
    if (ok:=FindText(0, 0, 3200, 1920, 0, 0, cooldown))
    {
        odebug = cd lag geya yellow wala
        return
    }
    while (ok:=FindText(2560, 0, 3200, 960, 0, 0, halftime1))
        odebug = halftime so w8

    if (which == "up"){
        from_acc := "1"
        ,till_acc := "5"
        ,x1 := placing("a" , "x",from_acc)
        ,y1 := placing("a" , "y",from_acc)
        ,x2 := placing("b" , "x",till_acc)
        ,y2 := placing("b" , "y",till_acc)
        ,y3 := y1 + 480
        ,y4:= y2 + 480
        ,Text14_y1 := "510"
        ,Text14_y2 := "526"
    }
    else{
        from_acc := "6"
        ,till_acc := "10"
        ,x1 := placing("a" , "x",from_acc)
        ,y1 := placing("a" , "y",from_acc)
        ,x2 := placing("b" , "x",till_acc)
        ,y2 := placing("b" , "y",till_acc)
        ,y3 := y1 - 480
        ,y4:= y2 - 480
        ,Text14_y1 := "29"
        ,Text14_y2 := "44"
    }
    ODebug = 1614 : %do1614%
    if (ok:=FindText("16", y3, "2602", y4, "0.03", "0.03", new_settings))
    {
        tt123 := ok.maxindex()
        OutputDebug settings found = %tt123%
        if (ok.maxindex() >= 4)
        {
            ODebug = settings found : %tt123% exit 1139
            scoreboard("1")
            join=1
            return 
        }
    }
    loop,
    {

        if (ok:=FindText(x1, y1, x2, y2, "0", "0", reconnect_r)) ;.................................................................................................................................reconect.............................................................................................
        {
            total_reconnect_found := ok.MaxIndex()
            outputdebug %total_reconnect_found% reconnect_found, click %re_num%
            ;            if (a_index > 3 and ok.maxindex() >= 4)
            ;                change("down",100)
            ;            else if (a_index > 3 and ok.maxindex() = 1)
            ;                change("up",200)
            ;            else if (a_index > 3 and ok.maxindex() = 2)
            ;                change("up",100)
            OutputDebug delay %reconnectdelay%
            ;            if (total_reconnect_found >= 3 )
            ;            {
            Random, re_num, 1 , total_reconnect_found
            X:=ok[re_num].x, Y:=ok[re_num].y
            ;OutputDebug %X% %Y% `n
            loop, 2 
            {
                x := X - 10 
                ,y := Y + 5
                MouseClick, left, x, y
                MouseMove, 20, 40, 10, R
            }
            ;            }
        }
        StartTime := A_TickCount
        ,ElapsedTime := A_TickCount - StartTime			
        error()
        if ( A_ScreenHeight != 2160)
        {

        }
        pid := pidListFromName("csgo.exe")
        if (pid.MaxIndex() != 10){
            scoreboard("1")
            ODebug = out from pid
            if(pid.MaxIndex() > 7)
                Reload
            return
        }
        reconnect_winteam(which)
        while (ElapsedTime < reconnectdelay) ;............................................................................................................................................wait_time,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
        {
            if (ok:=FindText(x1, y1, x2, y2, "0.03", "0.01", in_match_check)) {
                if (ook:=FindText(355,111, 2941, 606, 0.01, 0.01, win)){
                    ElapsedTimeWin := ""
                    ,xx1:=ook.1.x -10, yy1:=ook.1.y -10,xx2:=ook.1.x + 10, yy2:=ook.1.y + 10,StartTimeWin := A_TickCount
                    while(ook:=FindText(xx1, yy1, xx2, yy2, "0.01", "0.01", win))
                        ElapsedTimeWin := A_TickCount - StartTimeWin			
                    OutputDebug win gone after %ElapsedTimeWin%
                    ;change("up","50")
                }
                ;inthematch := ok.MaxIndex()
                ;OutputDebug %inthematch% in match no win logo
                if (ok:=FindText(x1, y1, x2, y2, "0.03", "0.01", in_match_check))
                {
                    for i,v in ok
                    {
                        Xas :=ok[i].x , Yas :=ok[i].y + 150
                        ;OutputDebug %Xas% %Yas% `n
                        MouseClick,left, %Xas%, %Yas%
                        sleep 50
                        Send, {l down}
                        sleep 80
                        Send, {l up}
                    }
                    while (ok:=FindText(x1, y1, x2, y2, "0.03", "0.01", in_match_check)){
                        Xas :=ok[1].x , Yas :=ok[1].y + 150
                        OutputDebug in match %Xas% %Yas%
                        MouseClick,left, %Xas%, %Yas%
                        sleep 50
                        ;Click down
                        ;sleep 50
                        Send, {l down}
                        sleep 80
                        Send, {l up}
                    }
                }
            }
            if (ok:=FindText(0, 0, 3200, 1920, 0, 0, cooldown))
            {
                odebug = cd lag geya yellow wala
                send_telegram("cd lag geya yellow wala")
                return
            }
            if scoreboard()
            {
                ODebug = out from scoreboard
                return
            }
            if (ok:=FindText("16", y3, "2602", y4, "0.02", "0.01", new_settings))
            {
                tt123 := ok.maxindex()
                oDebug = settings found ? %tt123%
                if (ok.maxindex() >= 5)
                {
                    ODebug = settings found : %tt123%
                    scoreboard("1")
                    join=1
                    return 
                }
            }
            if (ok:=FindText(2560, 0, 3200, 960, 0, 0, halftime1))
            {
                if( my_mode = 15 and do1614 != 2)
                {
                    ODebug = half time
                    do1614 = 2
                    return
                }
            }
            if (do1614 = 1 and ok:=FindText("2869", Text14_y1, "2900", Text14_y2, "0", "0", Text14))
            {
                ;ODebug := "1614 = 2"
                OutputDebug out from 1614 = 2
                do1614 = 2
                return
            }
            ElapsedTime := A_TickCount - StartTime
        }
        if (ok:=FindText(x1, y1, x2, y2, "0.03", "0.01", in_match_check)){
            Xas :=ok[1].x , Yas :=ok[1].y + 150
            OutputDebug in match @ loop end %Xas% %Yas%
                MouseClick,left, %Xas%, %Yas%
            sleep 50
            ;Click down
            ;sleep 50
            Send, {l down}
            sleep 80
            Send, {l up}
        }	
    }	

}
reconnect_winteam(which)
{
    reconnect_r:="|<reconnect>*153$27.000W16F4F0H8006F0180004"

    if (which == "down"){
        from_acc := "1"
        ,till_acc := "5"
    }
    else{
        from_acc := "6"
        ,till_acc := "10"
    }
    x1 := placing("a" , "x",from_acc)
    ,y1 := placing("a" , "y",from_acc)
    ,x2 := placing("b" , "x",till_acc)
    ,y2 := placing("b" , "y",till_acc)

    if (ok:=FindText(x1, y1, x2, y2, "0","0", reconnect_r)) ;.................................................................................................................................reconect.............................................................................................
    {
        ODebug = reconnect in win lobby found
        for i,v in ok
        {
            Xas :=ok[i].x - 10 , Yas :=ok[i].y
            ;OutputDebug %Xas% %Yas% `n
            MouseClick,left, %Xas%, %Yas%
            sleep 50
            Click down
            sleep 50
            Click up
            y := Yas + 10
            MouseMove Xas,y
            sleep 50
        }
        MouseClick, left, 3300, 0
    }
}
abandon_function(abandon_num)
{   
        x1 := placing("c" , "x",abandon_num)
        ,y1 := placing("c" , "y",abandon_num) ; cordinates jinnu abandaon krna

        ,ElapsedTime := A_TickCount - StartTime			
        while ( ElapsedTime < 3000)
        {
            MouseClick,right,x1,y2
            Send, {l down}
            sleep 180
            Send, {l up}
            sleep 100
            ElapsedTime := A_TickCount - StartTime
        }  ; ena kuj sirf ek disconnet action waste
        
        if (abandon_num = 5 or abandon_num = 10 )
            vote_from_acc := abandon_num--
        else
            vote_from_acc := abandon_num++
        
        x1 := placing("c" , "x",abandon_num)
        ,y1 := placing("c" , "y",abandon_num) ; cordinates jinnu vote_from_acc krna
        
         MouseClick,right,x1,y2
            Send, {Esc down}
            sleep 180
            Send, {Esc up}
            sleep 100
            
        call_vote:="|<call_vote>0xFFFFFF@1.00$12.03060A0MkkNUD060U"
        if(ok:=FindText(0, 0, 4096, 4096, 0.05, 0.05, call_vote))
            {
                MouseClick, left, x, y
            }
            sleep 980
       SURRENDER_ICON:="|<SURRENDER_ICON>*99$12.ztzUtlknkvktktklU3070DU"
        if(ok:=FindText(0, 0, 4096, 4096, 0.05, 0.05, SURRENDER_ICON))
            {
                MouseClick, left, x, y
            }
       sleep 980
       pressf1:="|<pressf1>0x008000@1.00$12.zwzszkzUD061030707UDkztzU"
        while(ok:=FindText(0, 0, 4096, 4096, 0.05, 0.05, pressf1))
            {
                for ii,v in ok
                {
                    Xas :=ok[ii].x , Yas :=ok[ii].y
                   MouseClick,left, %Xas%, %Yas%
                sleep 50
                Click down
                sleep 50
                Send, {F1 down}
                sleep 180
                Send, {F1 up}
                sleep 50
                Click up
                y := Yas + 10
                MouseMove Xas,y
                sleep 50
                }
                ok:=FindText(0, 0, 4096, 4096, 0.05, 0.05, pressf1)
            }
}
updis()
{
    loop ;   while ( teamwin <= rounds )
    {
        ;odebug = updis started
        ;                        if (teamwin = 7 and fixscore = 0) ;fixscore = 1
        ;                           {
        ;                              reconnectdelay2 := reconnectdelay1
        ;                           }
        ;                        else
        ;                           {
        reconnectdelay2 := reconnectdelay
        ;                           }
        ; if (tss = 14 or cts = 14)
        ; {
        odebug = wait %reconnectdelay2%
        ; reconnectdelay2 := reconnectdelay1
        ; }
        ;bottombat()
        topbat()
        ;reconnectdelay2 := reconnectdelay
        ;sleep 3000
        ;reconnecterror()
        reconnect()
        sleep 2000
        ;odebug = looking for map
        map()
        ;                       if (teamwin = 7 and skiphftm = 0)
        ;                            {
        ;                              odebug = hftm sleep %halftimedelay%
        ;                              StartTime := A_TickCount
        ;                              ElapsedTime := A_TickCount - StartTime
        ;                              t = no
        ;                              ;cts = asd
        ;                              while(ElapsedTime < halftimedelay )
        ;                                      {
        ;                                          ;odebug = Wait time %ElapsedTime%/%halftimedelay%
        ;                                          if (t = "no" and ElapsedTime > halftimedelay * 0.30)
        ;                                            {
        ;                                              error()
        ;                                              getteam()
        ;                                                  runfuntion = 0
        ;                                                  getscore()
        ;                                                  runfuntion = 1
        ;                                            }
        ;                                            ElapsedTime := A_TickCount - StartTime
        ;                                            sleep 1000
        ;                                      }
        ;                              ;skiphftm = 1
        ;                              if (getct >= 15 and gett >= 15)
        ;                                  {   
        ;                                    t = no
        ;                                    return
        ;                                  }
        ;                           }
        ;                       else
        ;                           {    
        odebug = normal sleep %rounddelay%
        StartTime := A_TickCount
        ElapsedTime := A_TickCount - StartTime
        t = no
        ;cts = asd 
        while(ElapsedTime < rounddelay )
        {
            ;odebug = Wait time %ElapsedTime%/%rounddelay%
            if (t = "no" and ElapsedTime > rounddelay * 0.8)
            {
                error()
                odebug = chk score %ElapsedTime%
                getteam()
                runfuntion = 0
                getscore()
                runfuntion = 1
            }
            if scoreboard()
                return
            ElapsedTime := A_TickCount - StartTime
            sleep 1000
        }
        ;                            }  
        ;						if ( my_mode = 15)
        ;                       teamwin++
        if (t = "no" or my_mode = 15)
            return 
        ;odebug = first team = %teamwin%*2 , 2nd team = %wins%*2
    } 
}
updis_16(the_count = 30)
{
    OutputDebug count %the_count%
    if the_count = 0
        return
    halftime1:="|<halftime>*49$13.zzk0PUBk6k3M1g0q0P0Bg6a301zzk"
    ,Text:="|<join_msg>*197$18.DDArrrrrrDroU"
    ,map_check:="|<map_check>0xF8D764@1.00$13.6A2231bUzkTsDw7y3z1zUwkM8844E"
    ,the_posi := "1"
    Loop, %the_count%
    {

        if (sup:=do_16_16("1"))
        {
            OutputDebug score %sup%
            if sup = 1
                return
        }

        ; disconnect .....................................................................................
        x1 := placing("c" , "x",the_posi)
        ,y1 := placing("a" , "y",the_posi)
        ,x2 := placing("b" , "x",the_posi)
        ,y2 := placing("c" , "y",the_posi)
        ,StartTime := A_TickCount
        ,ElapsedTime := A_TickCount - StartTime			
        ImageSearch, FoundX, FoundY, %x1%, %y1%, %x2%, %y2%, *5 reconnect.png
        while (ErrorLevel != 0 and ElapsedTime < 3000)
        {
            ElapsedTime := A_TickCount - StartTime
            MouseClick,right,x1,y2
            Send, {l down}
            sleep 180
            Send, {l up}
            sleep 100
            ImageSearch, FoundX, FoundY, 2560, 0, 3200, 720,*5 reconnect.png
        }
        ;OutputDebug time to disconnect %ElapsedTime%

        the_posi++
        if the_posi = 6
            the_posi = 1

        WinGet, OutputVar, PID , A
        RunWait wmic process where ProcessID=%OutputVar% CALL setpriority "realtime" ,,hide

        ; click reconnect ......................................................................................................

        reconnect_16(the_posi)
        StartTime := A_TickCount
        ElapsedTime := A_TickCount - StartTime

        ;OutputDebug look for join_msg 
        while(ok:=FindText(2560, 362, 2706, 976, 0, 0, map_check))
        {
            ElapsedTime := A_TickCount - StartTime
            if(ok:=FindText(2600, 904, 2740, 930, 0.15, 0.15, Text))
                break
            if (ElapsedTime < 110) 
                getteam()
            if scoreboard()
                return
            if (ok:=FindText(2582-20, 777-100, 2582+20, 777+100, 0.01, 0.01, new_settings))
                return 
            if (ok:=FindText(2560, 0, 3200, 1920, 0, 0, halftime1))
            {
                if( my_mode = 15 and do1614 != 2)
                    return
            }
            if (ElapsedTime > 16000) 
            {
                getteam()
                break
            }
        }
        if (ElapsedTime > 9500) 
        {
            Error()
            overtime++
        }
        else if (ElapsedTime < 1000 and ElapsedTime > 1 )
            print("useless","join_fail","1","local") ; folder,comment,repeat,location
        RunWait wmic process where ProcessID=%OutputVar% CALL setpriority "idle" ,,hide
        weeee := ok.1.id
        OutputDebug msg %weeee% in %ElapsedTime% , ot =%overtime%
        ODebug = msg %weeee% in %ElapsedTime% , ot =%overtime%
        if (ok:=FindText(2582-20, 777-100, 2582+20, 777+100, 0.01, 0.01, new_settings))
            return 
        if (overtime = 8 or overtime = 10 )
        {
            if (my_mode = 16)
            {
                overtime = 0
                reconnect()
                map()
                dis_8_acc("down")
                dndis_16("2" )
                reconnect("down")
                map()
                dis_8_acc("up")
            }
            if (overtime = 10)
            {
                if ( my_mode = 15)
                {
                    reconnect()
                    map()
                    dis_8_acc("down")
                    dndis_16("9")
                    reconnect()
                    map()
                    dis_8_acc("up")
                    updis_16("4")
                    return 1
                }
            }
        }
    }
}
testfind()
{
    Text:="|<notinlobby>*101$16.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzkzy1zkXz6DwszzXzwTzlzyDztzzbzyTzzzzby"

    if (ook:=FindText(355,111, 2941, 606, 0.01, 0.01, win)){
        ;OutputDebug foud
        X:=ook.1.x, Y:=ook.1.y, Comment:=ook.1.id
        ; Click, %X%, %Y%
        xx1:=ook.1.x -10, yy1:=ook.1.y -10,xx2:=ook.1.x + 10, yy2:=ook.1.y + 10

        while(ook:=FindText(xx1, yy1, xx2, yy2, "0.01", "0.01", win))
            ;ok:=FindText(x1, y1, x2, y2, "0.03", "0.01", in_match_check)
        Sleep 1
    }

    ;Text:="|<join_msg>0xE7E7E6@0.94$39.kAAAkaM000000E0000061U0643U"
    Text:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
    ;if(ok:=FindText(2600, 424, 2740, 450, 0, 0, Text))
    if(ok:=FindText(0, 0, 4096, 4096, 0.15, 0.15, Text))
    {

        X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
        OutputDebug %x% , %y%
    }
    MsgBox % ok.maxindex()
    if(ok:=FindText(0, 0, 4096, 4096, 0, 0, Text))
    {
        X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
        ;OutputDebug %x% , %y%
    }
    MsgBox % ok.maxindex()
    OutputDebug %x% , %y%
}
dndis()
{
    loop ; while ( wins <= rounds )
    {
        ;odebug = dndis started
        ;              if (wins = 7 and fixscore = 0)
        ;                 {
        ;                     reconnectdelay2 := reconnectdelay1
        ;                   }
        ;               else
        ;                   {
        reconnectdelay2 := reconnectdelay
        ;                     }
        ; if (tss = 14 or cts = 14)
        ; {
        ;   odebug = t = %14% there fore 
        ; reconnectdelay2 := reconnectdelay1
        ; }
        bottombat()
        ;topbat()
        odebug = wait %reconnectdelay2%
        ;reconnectdelay2 := reconnectdelay
        ;sleep 3000
        ;reconnecterror()
        reconnect()
        sleep 2000
        ;odebug = looking for map
        map()
        ;                      if (wins = 7 and skiphftm = 0)
        ;                          {
        ;                            odebug = hftm sleep %halftimedelay%
        ;                            StartTime := A_TickCount
        ;                            ElapsedTime := A_TickCount - StartTime
        ;                            t = no
        ;                            ;cts = asd                    
        ;                            while(ElapsedTime < halftimedelay )
        ;                                    {
        ;                                      ;odebug = Wait time %ElapsedTime%/%halftimedelay%
        ;                                      if (t = "no" and ElapsedTime > halftimedelay * 0.3)
        ;                                      ;if (t = "asd")
        ;                                          {
        ;                                              error()
        ;                                              getteam()
        ;                                                    runfuntion = 0
        ;                                                    getscore()
        ;                                                    runfuntion = 1
        ;                                          }
        ;                                        ElapsedTime := A_TickCount - StartTime
        ;                                        sleep 1000
        ;                                    }
        ;                            skiphftm = 1
        ;                            if (getct >= 15 and gett >= 15)
        ;                              {   
        ;                                t = no
        ;                                return
        ;                              }
        ;                          }
        ;                        else
        ;                          {    
        odebug = normal sleep %rounddelay%
        StartTime := A_TickCount
        ElapsedTime := A_TickCount - StartTime
        t = no
        ;cts = asd
        while(ElapsedTime < rounddelay )
        {
            ;odebug = Wait time %ElapsedTime%/%rounddelay%
            if (t = "no" and ElapsedTime > rounddelay * 0.8)
                ;if (t = "asd")
            {
                error()
                odebug = chk score %ElapsedTime%
                getteam()
                runfuntion = 0
                getscore()
                runfuntion = 1
            }
            if scoreboard()
                return
            ElapsedTime := A_TickCount - StartTime
            sleep 500
        }
        ;                         }
        ;						if ( my_mode = 15)						
        ;                        wins++
        if (t = "no" or my_mode = 15)
            return
        ;odebug = first team = %teamwin%*2 , 2nd team = %wins%*2
    } 
} 
dndis_16(the_count = 30 )
{
    OutputDebug count %the_count%
    if the_count = 0
        return
    new_settings:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
    ,halftime1:="|<halftime>*49$13.zzk0PUBk6k3M1g0q0P0Bg6a301zzk"
    ,Text:="|<join_msg>*197$18.DDArrrrrrDroU"
    ,map_check:="|<map_check>0xF8D764@1.00$13.6A2231bUzkTsDw7y3z1zUwkM8844E"
    ,the_posi := "6"
    Loop, %the_count%
    {
        if (sup:=do_16_16("2"))
        {
            OutputDebug score %sup%
            if sup = 1
                return
        }

        ; disconnect .....................................................................................
        x1 := placing("c" , "x",the_posi)
        ,y1 := placing("a" , "y",the_posi)
        ,x2 := placing("b" , "x",the_posi)
        ,y2 := placing("c" , "y",the_posi)
        ,StartTime := A_TickCount
        ,ElapsedTime := A_TickCount - StartTime			
        ImageSearch, FoundX, FoundY, x1, y1, x2, y2, *5 reconnect.png		
        while (ErrorLevel != 0 and ElapsedTime < 3000)
        {
            ElapsedTime := A_TickCount - StartTime
            MouseClick,right,x1,y2
            sleep 180
            Send, {l down}
            sleep 180
            Send, {l up}
            sleep 18
        }
        ;OutputDebug dis in %ElapsedTime%
        the_posi++
        if the_posi = 11
            the_posi = 6
        WinGet, OutputVar, PID , A
        RunWait wmic process where ProcessID=%OutputVar% CALL setpriority "realtime" ,,hide
        reconnect_16(the_posi)
        StartTime := A_TickCount
        ElapsedTime := A_TickCount - StartTime

        ;OutputDebug look for msg 

        while(ok:=FindText(2560, 362, 2706, 976, 0, 0, map_check))
        {
            ElapsedTime := A_TickCount - StartTime
            if(ok:=FindText(2600, 424, 2740, 450, 0.15, 0.15, Text))
                break
            if (ok:=FindText(2584-100, 256-30, 2584+100, 256+30, 0.01, 0.01, new_settings))
                return 
            if (ElapsedTime < 110) 
                getteam()
            if scoreboard()
                return
            if (ok:=FindText(2560, 0, 3200, 1920, 0, 0, halftime1))
            {
                if( my_mode = 15 and do1614 != 2)
                    return
            }
            if (ElapsedTime > 16000) 
            {
                getteam()
                break
            }
        }
        if (ElapsedTime > 9500) 
        {
            Error()
            overtime++
        }
        else if (ElapsedTime < 1000 and ElapsedTime > 1 )
            print("useless","join_fail","1","local") ; folder,comment,repeat,location
        RunWait wmic process where ProcessID=%OutputVar% CALL setpriority "idle" ,,hide
        weeee := ok.1.id
        OutputDebug msg is %weeee% in %ElapsedTime% ot =%overtime%
        ODebug = msg %weeee% in %ElapsedTime% , ot =%overtime%

        if (ok:=FindText(2584-100, 256-30, 2584+100, 256+30, 0.01, 0.01, new_settings))
            return 	
        if (overtime = 8 or overtime = 10 )
        {
            if ( my_mode = 16)
            {
                reconnect()
                map()
                dis_8_acc("up")
                updis_16("2")
                overtime = 0
                reconnect("up")
                map()
                dis_8_acc("down")
            }
            if (overtime = 10)
            {
                if ( my_mode = 15)
                {
                    reconnect()
                    map()
                    dis_8_acc("up")
                    updis_16("9")
                    reconnect()
                    map()
                    dis_8_acc("down")
                    dndis_16("4")
                    return 1
                }
            }
        }
    }
}
topbat()
{ 
    ;odebug = topbat
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    BlockInput, On ; BlockInput, off
    Sleep 10
    MouseClick,left,550,180,,10,,

    Click down
    sleep 100
    Send, {l down}
    sleep 150

    x_1 = 550
    asdasdasd = 1
    loop,5
    {
        asdasdasd := A_Index + 1
        x_%asdasdasd% := x_%A_Index% + 640
    }

    Send, {l up}
    sleep 100
    Click up
    sleep 100
    MouseMove, 550, 180
    asdasdasd = 1
    loop,5
    {
        MouseClick, left,x_%asdasdasd% ,180,,0,, 
        asdasdasd++
        sleep 100
        Click down
        sleep 100
        Send, {l down}
        sleep 200
        Send, {l up}
        sleep 100
        Click up
        sleep 100
    }
    MouseClick, left,3839,1079
    MouseMove, xpos, ypos
    BlockInput, off

    ;Sleep %reconnectdelay2%              ; THIS IS SOMETHING WE NEED TO WROK
    StartTime := A_TickCount
    ,ElapsedTime := A_TickCount - StartTime
    ,Text:="|<halftime>*49$13.zzk0PUBk6k3M1g0q0P0Bg6a301zzk"
    while (ElapsedTime < reconnectdelay2)
    {
        if scoreboard()
            return
        if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            StartTime := A_TickCount
            halftime = 1
        }
        ElapsedTime := A_TickCount - StartTime
    }

    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    BlockInput, On ; BlockInput, off
    MouseClick, Left,467,45,,10,,
    loop,4
    {
        MouseClick, left,640,0,,0,,R
        sleep 600
    }
    ;Send, {l down}
    ;sleep 200
    ;Send, {l up}
    ;sleep 100
    MouseClick, left,3839,1079
    sleep 100
    MouseMove, xpos, ypos
    BlockInput, off
    sleep 2000
    ;reconnecterror()
    reconnect()
}
bottombat()
{ 
    ;odebug = bottombat
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    BlockInput, On ; BlockInput, off
    MouseClick, left,450,545,,0,,
    Click down
    sleep 100
    Send, {l down}
    sleep 150

    x_1 = 450
    asdasdasd = 1
    loop,5
    {
        asdasdasd := A_Index + 1
        x_%asdasdasd% := x_%A_Index% + 640
    }

    Send, {l up}
    sleep 100
    Click up
    sleep 100
    asdasdasd = 1
    loop,5
    {
        MouseClick, left,x_%asdasdasd%,545,,0,,
        asdasdasd++
        Click down
        sleep 100
        Send, {l down}
        sleep 200
        Send, {l up}
        sleep 100
        Click up
        sleep 100
    }
    MouseClick, left,3839,1079
    sleep 100
    Send, {l down}
    sleep 200
    Send, {l up}
    sleep 100
    MouseMove, xpos, ypos
    BlockInput, off 
    ;Sleep %reconnectdelay2% ; this is also some thing we need to do
    StartTime := A_TickCount
    ,ElapsedTime := A_TickCount - StartTime
    ,Text:="|<halftime>*49$13.zzk0PUBk6k3M1g0q0P0Bg6a301zzk"
    while (ElapsedTime < reconnectdelay2)
    {
        if scoreboard()
            return
        if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
            StartTime := A_TickCount
        ElapsedTime := A_TickCount - StartTime
    }

    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    BlockInput, On ; BlockInput, off
    MouseClick, left,467,525,,0,,
    loop,4
    {
        MouseClick, left,640,0,,0,, R
        sleep 600
    }
    sleep 50
    MouseClick, left,3839,1079
    sleep 50
    MouseMove, xpos, ypos
    BlockInput, off
    sleep 2000
    ;reconnecterror()
    reconnect()
}
dis_8_acc(which,howmany :="")
{
    if which = no 
        return
    OutputDebug %ok%
    if howmany = 4
        xaxis2 = 2020
    else
        xaxis2 = 2660
    loop, 2
    {
        while (ok !=0)
        {
            Text:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
            if instr(which, "all")
                ok:=FindText("0", "0", xaxis2, "960", "0.15", "0.15", Text)
            else if instr(which, "up")
                ok:=FindText("0", "0", xaxis2, "460", "0.15", "0.15", Text) 
            else if instr(which, "down")
                ok:=FindText("0", "480", xaxis2, "960", "0.15", "0.15", Text)
            for i,v in ok
            {
                Xas :=ok[i].x , Yas :=ok[i].y + 150
                ;OutputDebug %Xas% %Yas%
                MouseClick,left, %Xas%, %Yas%
                sleep 50
                Click down
                sleep 50
                Send, {l down}
                sleep 180
                Send, {l up}
                sleep 50
                Click up
                y := Yas + 10
                MouseMove Xas,y
                sleep 50
            }
        }
        Sleep 500
    }
return
if instr(which, "all") or if instr(which, "down") 
{
    sleep 100
    MouseClick, left,450,545,,0,,
    Click down
    sleep 50
    Send, {l down}
    sleep 180
    Send, {l up}
    sleep 50
    Click up
    sleep 50
    loop,4
    {
        MouseClick, left,640,0,,0,, R
        Click down
        sleep 100
        Send, {l down}
        sleep 200
        Send, {l up}
        sleep 100
        Click up
        sleep 100
    }
    MouseClick, left,3839,1079
    sleep 100
    Send, {l down}
    sleep 200
    Send, {l up}
    sleep 100
}

if instr(which, "all") or if instr(which, "up") 
{
    MouseClick,left,550,180,,10,,
    Click down
    sleep 100
    Send, {l down}
    sleep 200
    Send, {l up}
    sleep 100
    Click up
    sleep 100
    MouseMove, 550, 180
    loop,4
    {
        MouseClick, left,640,0,,0,, R
        sleep 100
        Click down
        sleep 100
        Send, {l down}
        sleep 200
        Send, {l up}
        sleep 100
        Click up
        sleep 100
    }
    MouseClick, left,3839,1079

}

if instr(which, "all")
    ok:=FindText(0, 0, 2560, 960, 0.15, 0.15, Text)
if instr(which, "up")
    ok:=FindText(0, 0, 2560, 460, 0.15, 0.15, Text) 
if instr(which, "down")
    ok:=FindText(0, 480, 2560, 960, 0.15, 0.15, Text)
for i,v in ok
{
    Xas :=ok[i].x , Yas :=ok[i].y + 150
    ;OutputDebug %Xas% %Yas%
    MouseClick,left, %Xas%, %Yas%
    sleep 50
    Click down
    sleep 50
    Send, {l down}
    sleep 180
    Send, {l up}
    sleep 50
    Click up
    y := Yas + 10
    MouseMove Xas,y
    sleep 50
}
}
scoreboard(forceout = 0)
{
    scoreboard:="|<scoreboard>0x676767@0.95$7.0+YG94q0E" ;scoreboard
    ,in_match_check:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
    ,map_check:="|<map_check>0xF8D764@1.00$13.6A2231bUzkTsDw7y3z1zUwkM8844E"
    ;if (ok:=FindText(288, 482, 2859, 975, 0.01, 0.01, scoreboard))
    ;	{
    ;		toal := ok.MaxIndex()
    ;		print("scoreboard_found",toal,"1","lan") 
    ;		OutputDebug %toal% acc has scoreboard
    ;	}
    while (ok:=FindText(288, 482, 2859, 975, 0.01, 0.01, scoreboard) or forceout > 0)
    {
        if (ok:=FindText(288, 482, 2859, 975, 0.01, 0.01, scoreboard))
            odebug = scoreboard found
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            ;OutputDebug scoreboard %Xas% %Yas% `n
            MouseClick,left, %Xas%, %Yas%
            sleep 50
            Click down
            sleep 50
            Send, {l down}
            sleep 180
            Send, {l up}
            sleep 50
            Click up
            y := Yas + 10
            MouseMove Xas,y
            sleep 50
        }
        while (ok:=FindText(0, 0, 3200, 960, 0, 0, map_check))
        {
            odebug = map_check found
            for j,v in ok
            {
                Xas :=ok[j].x , Yas :=ok[j].y - 350
                ;OutputDebug map_check %Xas% %Yas% `n
                MouseClick,left, %Xas%, %Yas%
                sleep 50
                Click down
                sleep 50
                Send, {l down}
                sleep 180
                Send, {l up}
                sleep 50
                Click up
                y := Yas + 10
                MouseMove Xas,y
                sleep 50
            }
        }
        while (ok:=FindText(0, 0, 3200, 960, 0, 0, in_match_check))
        {
            odebug = in_match found
            for k,v in ok
            {
                Xas :=ok[k].x , Yas :=ok[k].y + 150
                ;OutputDebug %Xas% %Yas% `n
                MouseClick,left, %Xas%, %Yas%
                sleep 50
                Click down
                sleep 50
                Send, {l down}
                sleep 180
                Send, {l up}
                sleep 50
                Click up
                y := Yas + 10
                MouseMove Xas,y
                sleep 50
            }
        }
        forceout := forceout - 0.5
    }
return ok
}
accept() 
{ 
    upaccept()
    if (a1 = 0 or a2 = 0)
        downaccept()
}
upaccept()
{
    ImageSearch, FoundX, FoundY, 150, 100, 3060, 320, *5 accept.png
    If (ErrorLevel = 1)
    {
        a1 = 0 ; this is trash code
    } 
    Else
    {
        a1 = 1
        ImageSearch, FoundX, FoundY, 150, 607, 3060, 786, *5 accept.png
        If (ErrorLevel = 1)
        {
            a2 = 0 ; this is trash code
        }
        Else{ 
            ;run accept.bat
            pressaccept()
            Sleep 5000
            a2 = 1
            ;odebug = Up >running accept bat %a1% =a1= 1 , %a2% = a2 = 1  
        } 
    }
}
downaccept() 
{ 
    ImageSearch, FoundX, FoundY, 150, 607, 3060, 786, *5 accept.png
    If (ErrorLevel = 1)
    {
        a2 = 0 ; this is trash code
    }
    Else{
        a2 = 1
        ImageSearch, FoundX, FoundY, 150, 100, 3060, 320, *5 accept.png
        If (ErrorLevel = 1)
        {
            a1 = 0 ; this is trash code
        } 
        Else
        {
            ;run accept.bat
            pressaccept()
            Sleep 5000
            a1 = 1
            ;odebug = down >running accept bat %a1% =a1= 1 , %a2% = a2 = 1  
        }
    } 
}
anygo()
{
    sx1 := "2988"
    ,sy1 := "465"
    ,l := "146"
    ,b := "21"
    getu :=ocr([sx1,sy1,l,b])
    If InStr(get,"O") or InStr(get,"G") or InStr(get,"0")
    {
        ErrorLevel = 0
        goupfound = 1
    }
    sx1 := "2991"
    ,sy1 := "947"
    ,l := "139"
    ,b := "17"
    getd :=ocr([sx1,sy1,l,b])
    If InStr(get,"O") or InStr(get,"G") or InStr(get,"0")
    {
        ErrorLevel = 0
        godownfound = 1
    }
} 
upgo()
{
    sx1 := "2988"
    ,sy1 := "465"
    ,l := "146"
    ,b := "21"
    get :=ocr([sx1,sy1,l,b])
    If InStr(get,"O") or InStr(get,"G") or InStr(get,"0")
    {
        ErrorLevel = 0
        goupfound = 1
    }
    else
    {
        ErrorLevel = 1
        goupfound = 0
    }
}
downgo()
{
    sx1 := "2991"
    ,sy1 := "947"
    ,l := "139"
    ,b := "17"
    get :=ocr([sx1,sy1,l,b])
    If InStr(get,"O") or InStr(get,"G") or InStr(get,"0")
    {
        ErrorLevel = 0
        godownfound = 1
    }
    else
    {
        ErrorLevel = 1
        godownfound = 0
    }
}
goe()
{
    sx1 := "2988"
    ,sy1 := "465"
    ,l := "146"
    ,b := "21"
    get :=ocr([sx1,sy1,l,b])
    ;odebug = 1 %get%
    If InStr(get,"CAN")
    {
    }
    else
    {
        MouseClick, left,2583,400,,0,, ; uper wala       ; es use kro agar pc use nahi karde tan
    }
    If InStr(get,"O") or InStr(get,"G") or InStr(get,"0")
    {
        MouseGetPos, xpos, ypos
        MouseClick, left, 2586, 400
        X = sx1 + l/2
        y = sy1 + b/2
        click_time1++
        ; MouseMove, xpos, ypos
        BlockInput, On ; BlockInput, off
        ;Sleep 10
        MouseClick, left,3058,473,,0,, ; uper wala go
        ;Sleep 10
        MouseMove, -120, 12, 0, R
        Sleep 150
        MouseClick, left,
        MouseMove, xpos, ypos
        BlockInput, off
        ;Sleep 10                        
        go = 1
        odebug = clicked on go
    }
    else
    {
        go = 0
        click_time1 = 0
    }
    sx1 := "2991"
    ,sy1 := "947"
    ,l := "139"
    ,b := "17"
    get :=ocr([sx1,sy1,l,b])
    ;odebug = 2 %get%
    If InStr(get,"CAN")
    {
    }
    else
    {
        MouseClick, left,2585,850,,0,,
    }
    If InStr(get,"O") or InStr(get,"G") or InStr(get,"0")
    {
        X = sx1 + l/2
        y = sy1 + b/2
        click_time++
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On ; BlockInput, off
        ;Sleep 10
        MouseClick, left,3058,956,,0,, ; niche wala go
        ;Sleep 10
        MouseMove, -120, 2, 0, R
        Sleep 150
        MouseClick, left,
        MouseMove, xpos, ypos
        BlockInput, off
        ;Sleep 10                        
        go = 1
        odebug = clicked on go
    }
    else
    {
        go = 0
        click_time = 0
    }
    ;odebug = clicked on = %click_time% & %click_time1%
    if (click_time = 10) or (click_time1 = 10 )
    {
        click_time = click_time1 = 0
        Text:="|<vac>*127$10.zzzu4eL0QOzy"
        if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            IniWrite, vac error on %matchcount% match, status.ini,vac_check, set_%set%
            odebug = vac error after %matchcount% match set_%set%
        }
        else
        {
            odebug = something happend cant press go
            print("logs","cant press go","1","lan") ; folder,comment,repeat,location
        }
        forcere = 1
        join = 1
    }
}
gos()
{
    sx1 := "2992" ; orignal"2988"
    ,sy1 := "467" ; orignal 465
    ,l := "82" ;146
    ,b := "17" ;21
    get :=ocr([sx1,sy1,l,b])
    ;odebug = 1 %get%
    If InStr(get,"CAN") ; a wala check odo chlda ni jdo go glow kar rheha hove 
    {
        MouseGetPos, xpos, ypos
        MouseClick, left, 2586, 400
        X = sx1 + l/2
        y = sy1 + b/2
        BlockInput, On ; BlockInput, off
        ;Sleep 10
        MouseClick, left,3058,473,,0,, ; uper wala go
        ;Sleep 10
        MouseMove, -220, 20, 0, R 
        Sleep 100
        MouseClick, left,
        MouseMove, xpos, ypos
        BlockInput, off
        ;Sleep 10                        
        ;odebug = If InStr(get,"CANCEL SEARCH")
    }
    sx1 := "2991"
    ,sy1 := "947"
    ,l := "139"
    ,b := "17"
    get :=ocr([sx1,sy1,l,b])
    ;odebug = 2 %get%
    If InStr(get,"CAN")
    {
        X = sx1 + l/2
        y = sy1 + b/2
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On ; BlockInput, off
        ;Sleep 10
        MouseClick, left,3058,956,,0,, ; niche wala go
        ;Sleep 10
        MouseMove, -120, 12, 0, R
        Sleep 100
        MouseClick, left,
        MouseMove, xpos, ypos
        BlockInput, off
        ;Sleep 10                        
        ;odebug = If InStr(get,"CANCEL SEARCH")
    }
}
start_check()
{
    error()
    Text:="|<>*104$26.zzzzzz01zzU0Dzs03zy00zzU0Dzs03zy00zzU0Dz003zk00zc00Tk0Dzw03zz3kzzswTzyD7zz3kzzk0Dzw03zzc5zzz3zzzkzzzzzzzzzzzs"
    while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        Click, %X%, %Y%
        Sleep 100
        z := y - 200
        Click %X%, %z%
        videosettingfix = 1
    }
    Text:="|<>*110$24.zzzzzw03zs01zs01zs01zs01zs01zs01zs01zU01zU01xU03s07zs07zsS7zwSDzwSDzsS7zs07zs07zx0jzzVzzzVzzzzzzU"
    while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        Click, %X%, %Y%
        Sleep 100
        z := y - 200
        Click %X%, %z%
        videosettingfix = 1
    }
return videosettingfix
}
starterror()
{ 
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *5 ok.png
    if (ErrorLevel = 0)
        odebug = errors found
    while (ErrorLevel = 0)
    {
        x := FoundX 
        y := FoundY
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On ; BlockInput, off
        MouseClick, left, x, y
        MouseMove, 20, 30, 10, R
        MouseMove, xpos, ypos
        BlockInput, off
        Sleep 20
        error1 = 1
        join = 1
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *5 ok.png
    }
    error2:=error()
    If (error1 = 1 or error2 = 1 )
    { 
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        isinhome()
        ;single_inv()
        Sleep 3000
        MouseMove, xpos, ypos
        odebug = going home screen
        sx1 := "3038"
        ,sy1 := "459"
        ,l := "53"
        ,b := "31"
        get :=ocr([sx1,sy1,l,b])
        thisgo := get
        odebug = 1 %get%
        sy1 = 939
        get :=ocr([sx1,sy1,l,b])
        thatgo := get
        If InStr(thisgot,"GO") AND InStr(thatgo,"GO")
        {
            error1 = 0
            error2 = 0
            odebug = errors fixed
            join = 0
        }
    } 
} 
error()
{ 
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *5 ok.png
    if (ErrorLevel = 0)
    {
        if (loading = 1 && nextmatch = 1)
        {
            matchcount--
            odebug = matchcount-- %matchcount%
            nextmatch = 0
        }
        if (join = 1)
        {
            Text:="|<>*125$16.331hhaqqPPMBhc"
            if (ok:=FindText(0, 0, 2560, 960, 0, 0, Text))
            {
                MouseClick, left,2580,74,,10,,
                Sleep 900
                MouseClick, left,2680,470,,10,,
                Sleep 500
                MouseClick, left,2580,568,,10,,
                Sleep 900
                MouseClick, left,2680,953,,10,,
                Sleep 500
                MouseClick, left,2680,470,,10,,
                Sleep 500
                MouseClick, left,2680,953,,10,,
                home()
            }
        } 
        odebug = errors found
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On ; BlockInput, off
        join = 1
        error1 = 1
        while (ErrorLevel = 0)
        {
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *10 ok.png
            MouseClick, left, FoundX, FoundY
            sleep 12
            MouseMove, 20, 30, 10, R
            Sleep 80
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *10 ok.png 
        }
        MouseMove, xpos, ypos
        BlockInput, off
    }
    else
        error1 = 0
    if ( loading != 1 ) ; loading one means match wich aa
    {

        Text:="|<close>*115$56.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzlyAlzzzzzsH20TzzzzyImYTzzzzzbAg1zzzzztH+lzzzzzy40U7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Sleep 100
            Click, %X%, %Y%
            Sleep 100
            MouseMove, 20, 30, 10, R
            num_of_clicks++
            if (Mod(num_of_clicks, 50) = 0)
            {
                WinGet, var, PID, A
                RunWait taskkill /PID %var% /F /T ,,hide
                RunWait,Taskkill /FI "USERNAME eq %USERNAME%" /fi “status eq not responding” /IM csgo.exe /F /T,,hide
                ;num_of_clicks = 0
            }
            if (num_of_clicks >= 500)
                Reload
        } 
        Text:="|<back>*105$25.zzzzzXiDTVa4Dml+DsOb7wcGXy5UGzzzzs"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
            MouseMove, 20, 30, 10, R
        }
        Text:="|<close_purchase>*89$71.xzzzzzzzzzzzvzzzzzzzzzzzrzzzzzzzzzzzjzzzzzzzzzzzTzzzzzzzzzzyzzzzzzzzzzzxzzzzzzzzzzzvzzzzzzzzzzzrzzzzzzzzzzzjzzzzzzzzzzzTzwTzzzzzzzyzzkbzzzzzzzxzzZ04DzzzzzvzzC48TzzzzzrzyI+0zzzzzzjzw801zzzzzzTzzzzzzzzzzyzzzzzzzzzzzxzzzzzzzzzzzvzzzzzzzzzzzrzzzzzzzzzzzjzzzzzzzzzzzTzzzzzzzzzzyzzzzzzzzzzzxzzzzzzzzzzz"
        if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
            {
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                Click, %X%, %Y%
                MouseMove, 20, 30, 10, R
            }
        }
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *10 network_error.png
        if (ErrorLevel = 0)
        {
            Text:="|<network_error>*181$22.3zzxxvrbW4ARV21m48EWEYU"
            console_close:="|<console_close>*181$10.zySMlkDVy7kCANtzy"
            if (ok:=FindText(0, 0, 3200, 1920, 0.1, 0.1, Text))
            {
                gos()
                odebug = real network error detected
                timer = 0
                ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *10 ok.png
                if(errorlevel = 0)
                {
                    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                    BlockInput, On ; BlockInput, off
                    MouseClick, left, FoundX, FoundY
                    sleep 12
                    MouseMove, 20, 30, 10, R
                    MouseMove, xpos, ypos
                    BlockInput, off
                }
                while (ok:=FindText(0, 0, 3200, 1920, 0.1, 0.1, Text)) 
                {
                    odebug = its network error
                    time_since_last_match := ""
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    y := y + 15
                    x := x + 40
                    sleep 20
                    MouseClick, left,x,y
                    sleep 3000
                    html := ping_check()
                    If html 
                    {
                        odebug = its online
                        if (band_karan_ton_pehlan_ruk_joa == "theek_aa")
                        {
                            timer = -30
                            band_karan_ton_pehlan_ruk_joa := ""
                        }
                        timer++
                        odebug = quitting in %timer%/20
                        if (timer = 20)
                        {
                            if (loading = 1) ; match de wich a je tan sara sare close
                            {
                                matchcount--
                                SET := SET - total_accounts_open	 									 
                                newchangeaccs()
                                return
                            }
                            odebug = quiting
                            SendRaw,``
                            sleep 500
                            sendraw,`quit
                            sleep 200
                            send {enter}
                            timer = 0
                            while (ok1:=FindText(0, 0, 3200, 1920, 0, 0, console_close))
                            {
                                X:=ok1.1.x, Y:=ok1.1.y
                                Click, %X%, %Y%
                            }
                            tenaccopen()
                            return
                        }
                    }
                    else if ( ok.MaxIndex() >= 6)
                    {
                        band_karan_ton_pehlan_ruk_joa := "theek_aa"
                    }
                }
                odebug = network error solved or doesnt work
                ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *25 ok.png
                if (ErrorLevel = 0)
                    error1 = 1
                while (ErrorLevel = 0)
                {

                    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                    BlockInput, On ; BlockInput, off
                    MouseClick, left, FoundX, FoundY
                    MouseMove, 20, 30, 10, R
                    MouseMove, xpos, ypos
                    BlockInput, off
                    ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *25 ok.png
                }
            }
        } 

    }
    if (loading = 0) ; firstrun = 1
    {
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *25 ok.png
        if (ErrorLevel = 0)
            error1 = 1
        while (ErrorLevel = 0)
        {
            MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
            BlockInput, On ; BlockInput, off
            MouseClick, left, FoundX, FoundY
            MouseMove, 20, 30, 10, R
            MouseMove, xpos, ypos
            BlockInput, off
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *25 ok.png
        }

        Text:="|<confirm>*87$20.2E02UA8c00+0kUYA+"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            odebug = confirm found
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
            BlockInput, On ; BlockInput, off
            Click, %X%, %Y%
            MouseMove, xpos, ypos
            BlockInput, off
            Sleep 300
        }
    }
    If (error1 = 1)
    { 
        ;odebug = errors fixed
        ; join = 1
        return error1
    }
} 
map()
{	
    Text:="|<map_check>0xF8D764@1.00$13.6A2231bUzkTsDw7y3z1zUwkM8844E"
    if (firstrun = 1)
    {
        Text1:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
        ;thismap = universal_map.png
        ;odebug = checking map
        odebug = map screen ;errorlevel = %ErrorLevel%
        StartTime := A_TickCount
        ,ElapsedTime := A_TickCount - StartTime
        if (!ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
            odebug = not a map screen
        while (!ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
            if (ErrorLevel = 0 or ElapsedTime > 20000)
            {
                break
            }
            ;ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *6 %thismap%
            Sleep 5000
            ElapsedTime := A_TickCount - StartTime
            if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text1))
                break
        }
        odebug = a map screen
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            ;ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *6 %thismap%
            Sleep 1000
            ;odebug =  waiting %thismap% to disappear
        }
        return
    }
    else
    {
        StartTime := A_TickCount
        ,ElapsedTime := A_TickCount - StartTime
        ,red_check:="1"
        ,too_late1 := "0"
        ,odebug := "checking map"
        ,scoreboard:="|<scoreboard>0x676767@0.95$7.0+YG94q0E" ;scoreboard
        ;ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *6 %thismap%
        ;odebug = map errorlevel = %ErrorLevel%
        if (!ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
            odebug = not a map screen
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            ElapsedTime := A_TickCount - StartTime
            if (red_check = 1)
            {
                too_late:="|<too_late>0xFFFFFF@1.00$14.k0I0100E040J00E08"
                ,red_dots:="|<red_dots>#128@0.95$18.000S0SG0GG8GG0GG0GG0GS8S000U"
                if (ok:=FindText(0, 0, 2980, 530, 0.05, 0.05, red_dots))
                {
                    redTimes := A_TickCount
                    ,redTime := A_TickCount - redTimes
                    ,white_check:="1"
                    ,join_check:="1"
                    ,red_check:="0"
                }
                else if (ok:=FindText(0, 0, 2980, 530, 0.05, 0.05,too_late))
                {
                    ;red_check:="0"
                    too_late1++
                    Sleep 1000
                }
            }	
            if (join_check = 1)
            {
                join_msg:="|<join_msg>0xE7E7E6@0.94$39.kAAAkaM000000E0000061U0643U"
                if(ok:=FindText(0, 0, 3200, 960, 0.1, 0.1, join_msg))
                {
                    ;joinTimes := A_TickCount
                    joinTime := A_TickCount - redTimes
                    ,join_check:="0"
                }
            }
            if (white_check = 1)
            {
                white_dot:="|<white_dot>#69@0.86$11.00s0E0V1020408E04"
                if (ok:=FindText(0, 0, 3200, 960, 0, 0, white_dot))
                {
                    ;whiteTimes := A_TickCount
                    whiteTime := A_TickCount - redTimes
                    ,white_check:="0"
                }
            }
            if (halftime = 0)
            {
                halftime1:="|<halftime>*49$13.zzk0PUBk6k3M1g0q0P0Bg6a301zzk"
                if (ok:=FindText(0, 0, 3200, 1920, 0, 0, halftime1))
                    halftime = 1
            }
            if (ElapsedTime > 300000)
            {
                print("useless","freez_on_map","1","lan") ; folder,comment,repeat,location
                return
            }
            if (ok:=FindText(0, 0, 3200, 960, 0, 0, scoreboard))
                return
        }
        if (halftime = 0 and reconnectdelay != 700)
        {
            if(white_check = 0 and join_check = 0)
            {
                diff := joinTime - whiteTime
                ,deff := diff
                OutputDebug diff=%diff% `n
                if(diff<0)
                {
                    diff := Abs(diff) + 500
                    change("up",diff)
                }
                else if (diff>6000)
                {
                    ;diff := diff - 500
                    ; change("down","20")
                }
                else if (diff<950)
                {
                    change("up","800")
                }
                else if (diff>4700)
                    change("down","10")
            }
            else if(white_check = 1 and join_check = 0)
                change("up","7500")
            else if (too_late1 > 1)
                change("down","7500")
        }
        else
        {
            halftime = 0
            if reconnectdelay = 700
                reconnectdelay =701
        }
        OutputDebug white=%white_check%,%whiteTime%join=%join_check%,%joinTime% hftm%halftime% d=%deff% := %diff%==%reconnectdelay%`n
        oDebug =white=%white_check%,%whiteTime%join=%join_check%,%joinTime% hftm%halftime% d=%deff% := %diff%==%reconnectdelay%`n
        Text:="|<cooldown>*149$41.00000007014000E0280011GZGfJ248AcKe29GNGPI7iQiQYc00000000000004"
        if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            odebug = cd lag geya yellow wala
            send_telegram("cd lag geya yellow wala")
            if(A_WDay = 7)
                IniWrite,0,data.ini,week,1
            else
            {	
                maymay := A_WDay + 1
                IniWrite,0,data.ini,week,%maymay%
            }
            IniRead,cdperday,data.ini,week,%A_WDay%
            if (cdperday == "ERROR")
                cdperday = 0
            cdperday++
            IniWrite,%cdperday%,data.ini,week,%A_WDay%

            sleep 100
            forcere = 1
            swap_accs = 0
            changeaccs()
            return
        }
    }
}
reconnecterror()
{ 
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
    while (ErrorLevel = 0)
    {
        MouseClick, left, FoundX, FoundY ,,10
        MouseMove, 20, 40, 10, R
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
    }
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
    while (ErrorLevel = 0)
    {
        odebug = reconnect found
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
        x := FoundX - 10 
        y := FoundY + 5
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On ; BlockInput, off        
        MouseClick, left, x, y ,,10
        MouseMove, 20, 40, 10, R
        sleep 20
        MouseMove, xpos, ypos
        BlockInput, off 
        reconnect = 1
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
    }
return reconnect
}
reconnect(lobby1 = 0)
{ 
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
    while (ErrorLevel = 0)
    {
        odebug = ok in reconnect() 2873
        MouseClick,left, %FoundX%, %Foundy%
        MouseMove, 20, 40, 10, R
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
    }
    reconnect_r:="|<reconnect>*153$27.000W16F4F0H8006F0180004"
    loop, 2
    {
        while (ok !=0)
        {
            if (lobby1 = 0)
                ok:=FindText(366, 10, 3120, 560, 0.1, 0.1, reconnect_r)
            else if(lobby1 != "down")
                ok:=FindText(0, 0, 2660, 460, 0.15, 0.15, reconnect_r) 
            else if (lobby1 != "up")
                ok:=FindText(0, 480, 2660, 960, 0.15, 0.15, reconnect_r)
            for i,v in ok
            {
                Xas :=ok[i].x , Yas :=ok[i].y
                ;OutputDebug %Xas% %Yas%
                MouseClick,left, %Xas%, %Yas%
                sleep 50
                Click down
                sleep 50
                Send, {l down}
                sleep 180
                Send, {l up}
                sleep 50
                Click up
                y := Yas + 10
                MouseMove Xas,y
                sleep 50
            }
        }
        Sleep 500
    }
return	

if (lobby1 != "down")
{
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 240,*5 reconnect.png
    if (ErrorLevel = 0)
    {
        odebug = reconnect found
        BlockInput, on
        MouseGetPos, xpos, ypos					 
    }
    while (ErrorLevel = 0)
    {
        (while ErrorLevel = 0)
        {
            error()
            X = 0
            odebug = reconnect found
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 240,*5 reconnect.png
            x := FoundX - 10 
            y := FoundY + 5
            MouseClick, left, x, y ,,10
            MouseMove, 20, 40, 10, R
            sleep 20
            MouseClick, left, 3300, 0
        } 
        MouseMove, xpos, ypos
        BlockInput, off
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 240, *5 reconnect.png
        X = 0
        Sleep 300
    }
}	 

if (lobby1 != "up")
{
    ImageSearch, FoundX, FoundY, 0, 480, 3200, 960,*5 reconnect.png
    if (ErrorLevel = 0)
    {
        odebug = reconnect found
        BlockInput, on
        MouseGetPos, xpos, ypos					 
    }
    while (ErrorLevel = 0)
    {
        (while ErrorLevel = 0)
        {
            error()
            X = 0
            odebug = reconnect found
            ImageSearch, FoundX, FoundY, 0, 480, 3200, 960,*5 reconnect.png
            x := FoundX - 10 
            y := FoundY + 5
            MouseClick, left, x, y ,,10
            MouseMove, 20, 40, 10, R
            sleep 20
            MouseClick, left, 3300, 0
        } 
        MouseMove, xpos, ypos
        BlockInput, off
        ImageSearch, FoundX, FoundY, 0, 480, 3200, 960, *5 reconnect.png
        X = 0
        Sleep 300
    }
}
MouseClick, left, 3300, 0
}
reconnect_16(the_posi)
{ 
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
    while (ErrorLevel = 0)
    {
        MouseClick, left, FoundX,FoundY ,,10
        MouseMove, 20, 40, 0, R
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
    }

    x1 := placing("c" , "x",the_posi)
    ,y1 := placing("a" , "y",the_posi)
    ,x2 := placing("b" , "x",the_posi)
    ,y2 := placing("c" , "y",the_posi)			
    ImageSearch, FoundX, FoundY, x1, y1, x2, y2, *5 reconnect.png		
    ;ImageSearch, FoundX, FoundY, 2560, 0, 3200, 720,*5 reconnect.png
    if (ErrorLevel = 0)
    {
        while (ErrorLevel = 0)
        {
            x := FoundX - 10 
            ,y := FoundY + 5
            MouseClick, left, x, y
            ImageSearch, FoundX, FoundY, x1, y1, x2, y2, *5 reconnect.png	
            MouseMove, 20, 40, 10, R
        }
        ;StartTime := A_TickCount
        ;,ElapsedTime := A_TickCount - StartTime			  
        ;MouseClick, left,3839,1079
        ;ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *8 universal_map.png
        ;	while (ErrorLevel != 0)
        ;      {
        ;          ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *8 universal_map.png
        ;          Sleep 200
        ;		  ElapsedTime := A_TickCount - StartTime
        ;		  if ElapsedTime > 8000
        ;			break
        ;        }
        ;Sleep 2000
    } 
    MouseClick, left, 3300, 0
}
freezcheck()
{
    x = 0
    y = 0
    odebug = looking 4 freez
    while (x = 0)
    {
        Text:="|<>*65$10.UWHdCYuHdCUu3jzU"
        if (ok:=FindText(0, 0, 3000, 580, 0, 0, Text))
        {
            odebug = found in 1st
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            ; Click, %X%, %Y%
        }
        Text:="|<>*86$14.UXvCynjgvvCynjYvsCzzzU"
        if (ok:=FindText(0, 0, 3000, 580, 0, 0, Text))
        {
            odebug = found in 2nd
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            ;  Click, %X%, %Y%
        }
        Text:="|<>*117$14.ifviyvjivviyvjivwSzzzzzs"
        if (ok:=FindText(0, 0, 3000, 580, 0, 0, Text))
        {
            odebug = found in 3rd
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            ; 
        }
    }
    odebug = freez found @ %X%, %Y%,
}
isinhome()
{ 
    onetime := "0"
    ,Text:="|<scoreboard>0xFDFDFD@0.29$5.1w07+8EU8" ;scoreboard
    loop
    {
        if (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
        {
            if (onetime = 0)
            {
                oDebug = scoreboard found
                ;RunWait reducexp.exe
                ;print("score",A_UserName,"0","lan") ; folder,comment,repeat,location
                onetime++
            }
            while (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
            {
                X:=ok.1.1, Y:=ok.1.2 + 20, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                MouseClick,Right, %x%, %y%
                sleep 50
                Send, {l down}
                sleep 100
                Send, {l up}
                y := y + 10
                MouseMove x,y
                onetime++
                if (onetime = 5000)
                {
                    print("logs","wrong scoreboard or stuck ","1","lan") ; folder,comment,repeat,location
                    break
                }
            }
        }
        else 
        {
            break 
        }
    }
    scoreboard("1")
    Text:="|<cooldown>*149$41.00000007014000E0280011GZGfJ248AcKe29GNGPI7iQiQYc00000000000004"
    if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        odebug = cd lag geya yellow wala
        sleep 100
        forcere = 1
        send_telegram("cd lag geya yellow wala")
        swap_accs = 0
        if changeaccs()
            return
    }
    exe_update_check()
    odebug := "are we on home Screen?"
    ,lobby := "0"
    ,x := "0" 
    sleep 210
    while (x = 0)
    {
        start_check()
        if changeaccs()
            return
        ;TText:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"  ; are we on home screen?
        Text:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
        if (ok:=FindText(2582-16, 777-100, 2582+16, 777+100, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        } 
        Text:="|<inlobby>*150$13.ndvhwqTfq/7zzU"
        if (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
        {
            home("1")
        }
        Text:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
        if (ok:=FindText(2103-700, 1171-150, 2103+700, 1171+150, 0.15, 0.15, Text))
        { 
            for i,v in ok
            {
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                MouseClick,left, %x%, %y%
                sleep 50
                Send, {l down}
                sleep 100
                Send, {l up}
                y := y + 10
                MouseMove x,y
            }
            x = 0
        }
        pid := pidListFromName("csgo.exe")
        if (pid.MaxIndex() != 10){
            scoreboard("1")
            ODebug = out from pid
            tenaccopen()
        }
        Text:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs" 
    }

    odebug = i think yes
    update_client_check("0")
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    home("1")
    popout()
    if (need_mode = 1)
    {
        OutputDebug `n
        Text:="|<expired>*68$38.zzzzzzs00000Czzzzzxjzw7zzPzyATzqzzArzxjznCzzPzxnjzqzzQvzxjzmQzzPzwTTzqzznDzxjzy7zzPzzzzzq000003zzzzzzs"
        if (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
            OutputDebug % ok.maxindex() " expired       "
                    Text:="|<unranked>*72$8.zk3zks6NySDbzyzjzzw0zs"
        if (ok:=FindText(0, 0, 3200, 960, 0.1, 0.1, Text))
            OutputDebug % ok.maxindex() " unranked       "
        OutputDebug `n
        ;  mode_change() ;need improvements
   expiredrank:="|<expired>*68$38.zzzzzzs00000Czzzzzxjzw7zzPzyATzqzzArzxjznCzzPzxnjzqzzQvzxjzmQzzPzwTTzqzznDzxjzy7zzPzzzzzq000003zzzzzzs"
  ,itsunranked:="|<unranked>*72$8.zk3zks6NySDbzyzjzzw0zs"
  if (ok:=FindText(0, 16, 3200, 976, 0, 0, itsunranked))
    itsunranked = 1
  matchleft :=matchlimit - matchount
  if (my_mode = 15 and matchleft <= 2 and itsunranked = 1)
    do1614 = 1
 
    }
    zzz = 500

    if !lobbycount
    {
        odebug = super invite initiated
        superinv()
    }
    else
    {

        OutputDebug, lobbycount=%lobbycount% `n
        Text:="|<nearby_chk>*131$7.zssBqvtwwyzTzrvzs" ; near by wich bande hege k nhi?
        msg:="|<msg>*120$14.00804U4000G0000000201U"
        if ( lobbycount >= 1 && lobbycount <= 3 && swap_accs != 1)
        {
            odebug = normal invite initiated lobbycount=%lobbycount%
            inlobby:="|<lobby>#7@0.90$9.kM0G80kQ"

            ok:=FindText(300, 10, 3200, 180, 0, 0, inlobby)
            if (ok.maxindex() != 5)
            {
                SetMouseDelay,20
                ;SetBatchLines,100
                MouseMove,3189,122 ;3180,122
                nearby:="|<nearby>*63$19.w00M008800m00t00QU0SE0T00Dk00QbwTXy03z03zk"
                ok :=""
                while(!ok and timer < 20){
                    ok:=FindText(3100, 100, 3200, 240, 0, 0, nearby)
                    Sleep 100
                    timer++
                }
                X = 3138
                Y:=ok.1.2
                if !Y
                {
                    ok:=FindText(3100, 100, 3200, 240, 0, 0, msg)
                    Y:=ok.1.2
                    if !Y
                    {
                        y = 122
                    }
                    ;send_telegram("3157 te nearby ni lbea","1")
                }
                Click, %x%, %Y%
                sleep 400
                ;MouseClick,left,3138,124,,10,, 
                Sleep 200
                MouseClick,left,-1,32,,10,,R
                Sleep 200
                MouseClick,left,-39,-2,,10,,R
                Sleep 200
                MouseClick,left,44,24,,10,,R
                Sleep 200
                MouseClick,left,-43,-1,,10,,R
                Sleep 200
                MouseClick,left,35,32,,10,,R
                Sleep 200
                MouseClick,left,-44,-4,,10,,R
                Sleep 200
                MouseClick,left,34,30,,10,,R
                Sleep 200
                MouseClick,left,-43,-1,,10,,R
            }
            ok:=FindText(300, 480, 3200, 680, 0, 0, inlobby)
            if (ok.maxindex() != 5)
            {
                SetMouseDelay,20
                MouseMove,3189,602 ;3180,126  
                nearby:="|<nearby>*63$19.w00M008800m00t00QU0SE0T00Dk00QbwTXy03z03zk"
                ok :=""
                while(!ok and timer < 20){
                    ok:=FindText(3100,550, 3200, 686, 0, 0, nearby)
                    Sleep 100
                    timer++
                }
                X:="3189", Y:=ok.1.2
                if !Y
                {
                    ok:=FindText(3100, 100, 3200, 240, 0, 0, msg)
                    Y:=ok.1.2
                    if !Y
                    {
                        y = 602
                        ;send_telegram("3193 te nearby ni lbea","1")
                    }
                }
                Click, %X%, %Y%
                MouseClick,left,3138, %Y%
                sleep 400
                ;MouseClick,left,3138,604,,10,, 
                Sleep 200
                MouseClick,left,-1,32,,10,,R
                Sleep 200
                MouseClick,left,-39,-2,,10,,R
                Sleep 200
                MouseClick,left,44,24,,10,,R
                Sleep 200
                MouseClick,left,-39,-1,,10,,R
                Sleep 200
                MouseClick,left,35,32,,10,,R
                Sleep 200
                MouseClick,left,-44,-4,,10,,R
                Sleep 200
                MouseClick,left,34,30,,10,,R
                Sleep 200
                MouseClick,left,-43,-1,,10,,R
            }
            lobbycount++
        }
        else
        {
            odebug = super invite initiated
            superinv()
        }
    }
    SetMouseDelay,-1
    Text:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"
    if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            Click, %Xas%, %Yas%
            sleep 100
        }
    }
    Text:="|<>*112$28.2052EdmIc0V9EU+QZ+0UG4V8"
    if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            Click, %Xas%, %Yas%
            sleep 100
        }
    }
    popout()

    pending_joins()

    lobbyfull := lobbycheck() 
    if (lobbyfull = 1)
    {
        ;odebug = cick on play
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        ;BlockInput, On ; BlockInput, off      
        MouseClick, left,2583,80,,0,, ; uper wala

        ;MouseClick, left,3058,473,,90,,  ; uper wala go

        MouseClick, left,2583,574,,0,, ; niche wala
        ;MouseClick, left,3058,956,,90,,     ; niche wala go
        Sleep 1000 ; j death match lag reha he tan e sleep wdao
        MouseClick, left, 2638,90,,0,, ;....uper wala compi
        MouseClick, left,0,480,,0,, R ; .....niche wala compi

        MouseClick, left,2585,850,,0,,
        MouseMove, xpos, ypos
        ;BlockInput, off 

        ImageSearch, FoundX, FoundY, 2400, 0, 3200, 1920, *5 ok.png
        timer = 0
        while (ErrorLevel = 0)
        {
            timer++
            Click, %FoundX%, %FoundY%
            MouseMove,10,10,,r
            ImageSearch, FoundX, FoundY, 2400, 0, 3200, 1920, *5 ok.png
            if timer = 30
                send_telegram("3305 prob in ok while loop")
        }
        pre_search()
        Text:="|<map_select_tick>*151$8.sC73lwTHqzi"
        ok:=FindText(2400, 150, 3200, 960, 0, 0, Text)
        odebug = % ok.MaxIndex() "selected maps"
        if (ok.MaxIndex() > 6)
        {
            send_telegram("problem in autoexec")
            MouseClick, left,2583,80,,0,, ; uper wala
            Sleep 100
            update_map_command()
            
            MouseClick, left,2583,574,,0,, ; niche wala
            Sleep 100
                SendRaw,``
    sleep 200
    SendRaw,`quit
   sleep 200
    send {enter}
            tenaccopen()
            join = 1 
            return
        }

        lobbystatus1 = nonprime
        lobbystatus2 = nonprime
        Text:="|<nonprime>*95$25.zzzvzDzZk0Vma20tG12Ac2064zzzyTzzz8"
        if (ok:=FindText(2806-50, 73-50, 2806+50, 73+50, 0, 0, Text))
        {
            lobbystatus1 = nonprime
            ;odebug = %lobbystatus1%
        }
        if (ok:=FindText(2806-50, 553-50, 2806+50, 553+50, 0, 0, Text))
        {
            lobbystatus2 = nonprime
            ;odebug = %lobbystatus2%
        }
        Text:="|<prime>*103$54.WDv77xly808O619VA08c2SM8ZAm08260+VA2Ac2SM0ZAmAUO616100U"
        if (ok:=FindText(2806-50, 73-50, 2806+50, 73+50, 0, 0, Text))
        {
            lobbystatus1 = 1
            ;odebug = %lobbystatus1%
        }
        if (ok:=FindText(2806-50, 553-50, 2806+50, 553+50, 0, 0, Text))
        {
            lobbystatus2 = 1
            ;odebug = %lobbystatus2%
        }
        IniRead, medal, status.ini,SectionName , medal
        if (lobbystatus2 != lobbystatus1)
        {
            if (swap_accs != 1)
            {
                home()
                check_rank()
                under21 := []
                loop , 10
                {
                    nana1 := All_UserInfo[A_Index] 
                    ,nana1 := StrSplit(nana1, ",")
                    ,nana1 := nana1[3] ; pr
                    if (nana1 < 21)
                        under21.push(A_Index)
                }
                if ( under21.MaxIndex() > 1)
                {
                    ab1 := under21[1]
                    ab2 := under21[2] + 1
                    if ab1 > 5
                        ab1 := ab1 - 5
                    if ab2 > 10
                        ab2 := ab2 - 5
                    swap_accs(ab1,ab2) ; INCOMPLETE
                }
                else
                {
                    odebug = one is prime other is non prime %matchcount% done till ac num %set% , mode %my_mode%
                    send_telegram(odebug)
                    Index:= under21[1]
                    ,nana1 := All_UserInfo[Index] 
                    ,nana1 := StrSplit(nana1, ",")
                    ,nana1 := nana1[1] ; pr
                    ,under21 :={}
                    bb = \\2700-pc\C\DLL
                    if FileExist(bb){
                        loop,Read, \\2700-pc\C\DLL\nonprime.txt
                        {
                            under21.push(A_LoopReadLine) ; 
                        }
                        v := HasVal(under21,nana1) 
                        OutputDebug v=%v%
                        if (v = 0)
                            FileAppend,%nana1%`n, \\2700-pc\C\DLL\nonprime.txt
                    }
                    else{
                        loop,Read, nonprime.txt
                        {
                            under21.push(A_LoopReadLine) ; 
                        }
                        v := HasVal(under21,nana1) 
                        OutputDebug v=%v%
                        if (v = 0)
                            FileAppend,%nana1%`n, nonprime.txt
                    }
                    met := set - 10
                    FileReadLine, ha,username.txt, %met%
                    FileAppend,%ha%`n, Prime_Users.ini
                    Primes_StartingUser.push(ha) ;

                    forcere = 1
                    if changeaccs()
                        return
                }
                return
            }
            else
            {
                Iniwrite, %matchlimit%, status.ini,match logs , set_%set%
                ;print("swap_needed",A_UserName,"0","lan") ; folder,comment,repeat,location		
                ;Iniwrite, %matchlimit%, status.ini,match logs , set_%set%
                swap_accs = 0
                forcere = 1
                if changeaccs()
                    return
            }
        }
        else if (lobbystatus2 = 1 and lobbystatus1 = 1 and medal != 1)
        {
            MouseMove,623,420
            sleep 200
            MouseMove,0,480,,r
            sleep 800
            norank:="|<520unranked>*117$10.zzVs1kD0s1kD0w3zy"
            if (ok:=FindText(510, 20, 540, 860, 0, 0, norank ))
            {
                odebug = unranked or expired
                unrankedup = 0
                unrankeddown = 0
                OutputDebug `n
                OutputDebug % ok.MaxIndex()
                for ii,v in ok
                {
                    Xas :=ok[ii].x , Yas :=ok[ii].y
                    OutputDebug,`n %Yas%
                    if (yas > 480)
                    {
                        unrankeddown = 1
                    }
                    else
                    {
                        unrankedup = 1
                    }
                    if (unrankedup = 1 and unrankeddown = 1)
                        break

                }

                do1614 = 0
                if !lobbycount
                {
                loop , 10
                    {
                        nana1 := All_UserInfo[A_Index] 
                        ,nana1 := StrSplit(nana1, ",")
                        ,nana1 := nana1[2] ; pr
                        if (nana1 == "expired")
                        {
                            expired11 = %A_Index%
                            break
                        }
                         else if (nana1 == "Unranked")
                        unranked11 = %A_Index%
                    }
                }
                if lobbycount
                    {
                        if (unrankeddown = 1 or unrankedup = 1 )
                            unranked11 = 1
                    }
                if expired11 and unranked11 and lobbycount >= 1
                {
                    expired11 := ""
                }	
                if expired11 and unranked11
                {
                    ;my_mode = 15
                    return
                }	
                else if expired11
                {
                    matchcount := matchlimit - 1
                    my_mode = 15
                    return
                }	
                else if unranked11
                {
                    IniRead,rank_variation,status.ini,SectionName,rank_variation
                    if (rank_variation != "up" and rank_variation != "down")
                    {
                        IniRead,rank_variation_old,status.ini,SectionName,rank_variation
                        Iniwrite,%rank_variation_old%,status.ini,SectionName,rank_variation_old
                    }
                    my_mode = 16
                    if (unrankedup = 1 and unrankeddown = 1)
                    {
                        rank_variation = 0
                    }
                    Else
                    {
                        Y:=ok.1.2
                        if (Y > 480)
                            rank_variation = up
                        else
                            rank_variation = down
                        Iniwrite,%rank_variation%,status.ini,SectionName,rank_variation
                    }
                    OutputDebug %rank_variation% disconnect
                    odebug = %rank_variation% disconnect
                    return
                }
            }

            else
            {
                odebug = both prime, %matchcount% done till ac num %set% , mode %my_mode%
                IniWrite, %lobbystatus1%"," %lobbystatus2% , status.ini,prime_status, prime_%set%
                Iniwrite, %matchlimit%, status.ini,match logs , set_%set%
                Iniwrite,15,status.ini,SectionName,matchlimit
                met := set - 10
                FileReadLine, ha,username.txt, %met%
                FileAppend,%ha%`n, Prime_Users.ini
                Primes_StartingUser.push(ha) ;
                swap_accs = 0
                forcere = 1
                changeaccs()
                return
            }
        }
        else ; both nonprime
        {
            if (my_mode != 16)
            {
                do1614 = 0
                Text:="|<unranked>*70$17.zzzzzw007zzzsTzUTzAzztzz7zyTzzzzvzU"
                if (ok:=FindText(0, 0, 3200, 960, 0.1, 0.1, Text))
                {
                    newmatchcount := matchlimit - 2
                    if (matchcount >= newmatchcount)
                        do1614 = 1
                }
                else
                {
                    IniRead, matchlimit, status.ini,SectionName , matchlimit
                }
                IniRead, more_wins, status.ini,SectionName , more_wins
                if (more_wins = 1)
                    do1614 = 1
                oDebug = limit>%matchlimit%, do1614>%do1614%
                outputDebug limit-%matchlimit%, do1614-%do1614%
            }
            goe()
            ;clear_cache()	
        }
    }
}
pre_search()
{
            Text:="|<compi_tab>*50$31.zzwtzzzm4zk00080U0V00E0EUU8002EyTzzzzDzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzy00000zzzzzzzzzzzzzzzw"
        while (ok:=FindText(2649-150, 347-260, 2649+150, 347+260, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2
            Click, %X%, %Y%
        }
        Text:="|<hidden_compi_pr1>*40$41.+000020QWW0V10d5412G0E+08EY8"
        if (ok:=FindText(2649-150, 347-260, 2649+150, 347+260, 0, 0, Text))
        {
            send_telegram("pr1")
            loop, Read,pr1.ini
            {
                pr1_folder.push(A_LoopReadLine) ; 
            }
            IniRead, set_accs, status.ini,SectionName , set
            loop, 10
            {
                nana3 := All_UserInfo[A_Index] 
                ,nana1 := StrSplit(nana3, ",")
                ,nana1 := nana1[3] ; pr
                if (nana1 = 1)
                    break
            }
            pr1_user := StrSplit(nana3, ",")
            ,pr1_user := pr1_user[1]
            ; IniWrite, %pr1_user%, pr1.ini,pr1, %i%

            v := HasVal(pr1_folder, pr1_user)
            if (v = 0)
            {
                FileAppend, %pr1_user% `n, pr1.ini
            }
            forcere = 1
            return

            ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
            if (errorlevel = 0)
            {
                odebug = ok found in isinhome funtion
                isinhome()
                return
            }
            odebug = lobby joined
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
            if (errorlevel = 0)
            {
                isinhome()
                return
            }
        }
}
pending_joins()
{ 
    Text1:="|<joinbutton>*138$10.kC0Ek30z3w30A81kC"
    ,Text:="|<pending_joins>*210$48.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyjzzzzzzxrzzzzzzzrzzzzzzzzzzzzzzzjzzzzzzzzzzzzzzzTzzzzzzzTzzzzzzzzzzzzzzzTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzU"
    loop,2
    {
        if (ok:=FindText(0, 0, 3200, 960, 0.00, 0.01, Text))
        {
            ras := ok.MaxIndex()
            oDebug = super_join on %ras%
            for i,v in ok
            {
                Xas :=ok[i].x , Yas :=ok[i].y
                ;OutputDebug Xas=%Xas% , Yas=%Yas% `n
                MouseMove, %Xas%, %Yas%
                sleep 250
            }
            MouseMove, 0, 60 ,,R

            while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text1))
            {
                X:=ok.1.1, Y:=ok.1.2
                Click, %X%, %Y%
                sleep 100
            }
            sleep 100
        }
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text1))
        {
            X:=ok.1.1, Y:=ok.1.2
            Click, %X%, %Y%
            sleep 100
        }
    }
}
clear_cache()
{
    odebug = freez
    loop % total_accounts_open
    {
        x := placing("c","x",A_Index)
        ,y := placing("a","y",A_Index)
        x:=x+5
        y:=y+5
        Click, %X%, %Y%
        Sleep 70
        SendRaw,``
        sleep 200
        SendRaw,`exec ping
        sleep 100
        send {enter}
        sleep 100
        SendRaw,``
    }
}
lobbycheck()
{
    sleep 1000
    read_value()
    odebug := "adv lobby check"
    ,lobby4:="|<lobby>#7@0.90$9.kM0G80kQ"
    ,single_lobby:="|<in_lobby>*90$8.zs67cHYVzs"
    if(ok:=FindText(300, 10, 3200, 580, 0, 0, Text))
        OutputDebug % ok.MaxIndex() " are in lobby"
    if ( ok.MaxIndex() != 10)
    {
        sx1 := "444"
        ,sy1 := "10"
        ,tx1 := "648"
        ,ty1 := "72"
        ,xc := "640"
        ,yc := "480"
        ,sx1 := sx1
        ,sx2 := sx1 + xc
        ,sx3 := sx1 + xc*2
        ,sx4 := sx1 + xc*3
        ,sx5 := sx1 + xc*4
        ,sy2 := sy1 + yc
        ,sy3 := sy1 + yc*2
        ,sy4 := sy1 + yc*3
        ,tx1 := tx1
        ,tx2 := tx1 + xc
        ,tx3 := tx1 + xc*2
        ,tx4 := tx1 + xc*3
        ,tx5 := tx1 + xc*4
        ,ty2 := ty1 + yc
        ,ty3 := ty1 + yc*2
        ,ty4 := ty1 + yc*3
        ,i := "1"
        ,b := "1"
        ,a := "1"
        ,pos1 := "-x 3 -y 16"
        ,pos2 := "-x 643 -y 16"
        ,pos3 := "-x 1283 -y 16"
        ,pos4 := "-x 1923 -y 16"
        ,pos5 := "-x 2563 -y 16"
        ,pos6 := "-x 3 -y 496"
        ,pos7 := "-x 643 -y 496"
        ,pos8 := "-x 1283 -y 496"
        ,pos9 := "-x 1923 -y 496"
        ,pos10 := "-x 2563 -y 496"
        ,pos11 := "-x 3 -y 976"
        ,pos12 := "-x 643 -y 976"
        ,pos13 := "-x 1283 -y 976"
        ,pos14 := "-x 1923 -y 976"
        ,pos15 := "-x 2563 -y 976"
        ,pos16 := "-x 3 -y 1456"
        ,pos17 := "-x 643 -y 1456"
        ,pos18 := "-x 1283 -y 1456"
        ,pos19 := "-x 1923 -y 1456"
        ,pos20 := "-x 2563 -y 1456"
        ;sleep 1000
        error()
        while (i <= 10)
        {
            if (i = 6)
            {
                b := "2"
                ,a := "1"
            }
            sx := sx%a%
            ,sy := sy%b%
            ,tx := tx%a%
            ,ty := ty%b%
            if(ok:=FindText(sx, sy, tx, ty,"0", "0", single_lobby))
                ;ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *55 green.png 
            ; if (errorlevel = 0)
            {
                odebug = %i% is in lobby
            }
            else
            {
                odebug = %i% is not in lobby fk
                ;odebug = waiting 5 sec
                Text:="|<cancel_inv>*112$28.XjwMwAm10ml0InDI1kAcE5Akg840U"
                if (ok:=FindText(2560, 200, 3200,900, 0, 0, Text))
                {
                    X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                    Click, %X%, %Y%
                }
                ;single_inv()
                pending_joins()
                sleep 3000
                ; ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *55 green.png
                ; if (errorlevel = 0)
                if(ok:=FindText(sx, sy, tx, ty,"0", "0", single_lobby))
                {
                    odebug = %i% is in lobby
                }
                else
                {	
                    odebug = still %i% is not in lobby
                    if (i = 5 or i = 10)
                        home()
                    join = 1
                    lobby = 0
                    lobbyfull = 0
                    tenaccopen()
                    return lobbyfull
                }
            }
            i++
            ,a++
        }
        if(ok:=FindText(300, 10, 3200, 580, 0, 0, lobby4)) ;Text
        {
            OutputDebug % ok.MaxIndex() " are in lobby new chk"
            ODebug = % ok.MaxIndex() " are in lobby new chk"
            if (ok.maxindex() <= 9)
            {
                home()
                join = 1
                lobby = 0
                lobbyfull = 0
                return lobbyfull
            }
            else
                lobbyfull = 1
        }

    } 
    else
    {
        odebug= % "in lobby=" ok.MaxIndex() " are in lobby"
        lobbyfull = 1
    }
    join = 0
    lobby = 1
return lobbyfull
}
superinv()
{
    SetMouseDelay, 1
    zz := "350"
    ,a1 := ""
    ,a2 := ""
    ,outside_accs_up:=[]
    ,outside_accs_down:=[]
    ,msg:="|<msg>0xF8F8F8@1.00$14.001zU7kEkb0tsSTzbzs00U"
    ;,notinlobby:="|<?>*108$8.ks4M63XswT7XtyTbzyTbU"
    ,notinlobby:="|<displaypic>*20$43.000000000000000000000000000000000000000000003zzzk007zzzy08"
    ,cancel_bt:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"
    if (ok2:=FindText(450, 0, 2580, 580, 0.01, 0.01, notinlobby))
    {
        OutputDebug `n
        OutputDebug % ok2.maxindex() " accs not in lobby"
        OutputDebug `n
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
            ODebug = %acc_num% num not in lobby

            haaa := inv_code[acc_num]
            if !haaa
            {
                haa := All_UserInfo[acc_num]
                ,haa := StrSplit(haa, ",")
                ,haaa := haa[4]
            }
            clipboard := ""
            loop, 2
            {
                ;  if !haaa
                ;     {
                ;OutputDebug get inv code
                ; look for join msg
                if acc_num > 5
                {
                    posi_num := acc_num - 5
                    y := 128 + 480
                }
                else
                {
                    posi_num := acc_num 
                    y = 128
                }
                x := posi_num * 640 - 20

                MouseClick,left,x,y,,0,,
                sleep 400
                MouseClick,left,x,y
                MouseClick,left,-127,29,,30,, R
                MouseClick,left,-145,133,,6,,R
                MouseClick,left,59,2,,1,,R

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
                ;   }
                ;   else
                ;  {
                ;     inv_code[acc_num] := haaa
                ;    break
                ; }
            } 
        }
        Gui, _MouseTip_: Destroy
        OutputDebug `n inv remaining
        OutputDebug % inv_code.MaxIndex() "accs"
        OutputDebug `n
        ;*******************run before inv***********************************************************************
        MouseMove	3182,125
        MouseMove,	0,480,,r
        Sleep 200
        if (ok:=FindText(3162, 100, 3202, 690, 0, 0, msg))
        {
            for i,v in ok
            {
                Xas :=ok[i].x , Yas :=ok[i].y
                Click, %Xas%, %Yas%
                Sleep 300
                Click, %Xas%, %Yas%
                Click, %Xas%, %Yas%
            }
        }
        ;******************************************************************************************
        msg:="|<msg>0xF8F8F8@1.00$14.001zU7kEkb0tsSTzbzs00U"
        ,inv_window:="|<inv_window>*117$12.sTkDkDkDsTzvU3000003U"
        SetMouseDelay, 35
        if (outside_accs_down.maxindex() > outside_accs_up.maxindex())
        {
            loop, % outside_accs_up.maxindex()
            {
                num :=outside_accs_up[A_Index]
                a1 := inv_code[num]
                num :=outside_accs_down[A_Index]
                a2 := inv_code[num]
                initiate_inv(a1,a2)
                total := A_Index
            }
            loop
            {
                total++
                if (outside_accs_down.maxindex() < total)
                    Break
                num :=outside_accs_down[total]
                a2 := inv_code[num]
                initiate_inv("0",a2)
            }

        }
        Else
        {
            loop, % outside_accs_down.maxindex()
            {
                num :=outside_accs_down[A_Index]
                a2 := inv_code[num]
                num :=outside_accs_up[A_Index]
                a1 := inv_code[num]
                initiate_inv(a1,a2)
                total := A_Index
            }
            loop
            {
                total++
                if (outside_accs_up.maxindex() < total)
                    Break
                num :=outside_accs_up[total]
                a1 := inv_code[num]
                initiate_inv(a1,"0")
            }
        }
    }
    SetMouseDelay, -1
    ; saving in allusersinfo and usertext file
    if (swap_accs = 0)
    {

        file_write2 := "!username.txt"
        ,indexing := set - total_accounts_open
        if (indexing < 0)
            indexing := set
        Loop,9 ; add code to usertext
        {
            haa := All_UserInfo[a_index]
            ,haa := StrSplit(haa, ",")
            ,haaa := haa[4]
            if (haaa == "" and A_Index != 5) 
            {
                haa[4] := inv_code[a_index]
                Str := ""
                For Index, Value In haa
                    Str .= "," . Value
                Str := LTrim(Str, ",") ; Remove leading pipes (|)
                All_UserInfo[A_Index] := Str
                ;OutputDebug no.%indexing% %Str% `n
                if Str
                    TF_ReplaceLine(file_write2,indexing,indexing,str)
            }
            indexing++
        }
    }
}

initiate_inv(a1,a2)
{
    msg:="|<msg>0xF8F8F8@1.00$14.001zU7kEkb0tsSTzbzs00U"
    ,inv_window:="|<inv_window>*117$12.sTkDkDkDsTzvU3000003U"
    SetMouseDelay, 35
    OutputDebug %a1% %a2%
    ; if (a1 != 0 and a2 != 0)
    ; {
    MouseMove	3182,125
    MouseMove,	0,480,,r
    Sleep 200
    if (ok:=FindText(3162, 100, 3202, 690, 0, 0, msg))
    {
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            Click, %Xas%, %Yas%
        }
        Loop,20
        {
            if (ok2:=FindText(3000, 100, 3202, 719, 0, 0, inv_window))
                if (ok2.maxindex() >= 2)
                break
            OutputDebug % ok2.maxindex() " inv buttonfound"
            sleep 100
        }
        for j,v in ok2
        {
            Xas :=ok2[j].x , Yas :=ok2[j].y
            Click, %Xas%, %Yas%
        }
    }
    ;sleep 200
    MouseClick, left,	2836,245 ;type

    ;odebug = %Clipboard%
    if a1 != 0
        SendInput, %a1%

    MouseClick,left,0,480,,0,,R ;type
    if a2 != 0
        SendInput, %a2%

    MouseClick, left,	2915,247 ;tick

    MouseClick,left,0,480,,0,,R
    Sleep 200
    MouseClick, left,	2795,265 ;? clk
    MouseClick,left,0,480,,0,,R
    Sleep 200
    MouseClick, left,	3008,267 ; lobby inv
    MouseClick,left,0,480,,0,,R
    Text:="|<inv_msg>*156$14.zzw0C01W4MG601U0Q0DzzU"
    while (ok:=FindText(2777, 207, 3121, 864, 0, 0, Text))
    {
        X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
        Click, %X%, %Y%
    }	

    MouseClick, left,	2975,314
    MouseClick,left,0,480,,0,,R
    ; }

}
initiate_inv1(a1,a2)
{
    msg:="|<msg>0xF8F8F8@1.00$14.001zU7kEkb0tsSTzbzs00U"
    ,inv_window:="|<inv_window>*117$12.sTkDkDkDsTzvU3000003U"
    SetMouseDelay, 35
    OutputDebug %a1% %a2%
    MouseMove	3182,125
    MouseMove,	0,480,,r
    Sleep 200
    if (ok:=FindText(3162, 100, 3202, 690, 0, 0, msg))
    {
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            Click, %Xas%, %Yas%
        }
        Loop,20
        {
            if (ok2:=FindText(3000, 100, 3202, 719, 0, 0, inv_window))
                if (ok2.maxindex() >= 2)
                break
            OutputDebug % ok2.maxindex() " inv buttonfound"
            sleep 100
        }
        for j,v in ok2
        {
            Xas :=ok2[j].x , Yas :=ok2[j].y
            Click, %Xas%, %Yas%
        }
    }
    ;sleep 200
    MouseClick, left,	2836,245 ;type

    ;odebug = %Clipboard%
    if a1 != 0
        SendInput, %a1%

    MouseClick,left,0,480,,0,,R ;type
    if a2 != 0
        SendInput, %a2%

    MouseClick, left,	2915,247 ;tick

    MouseClick,left,0,480,,0,,R
    Sleep 200
    MouseClick, left,	2795,265 ;? clk
    MouseClick,left,0,480,,0,,R
    Sleep 200
    MouseClick, left,	3008,267 ; lobby inv
    MouseClick,left,0,480,,0,,R
    Text:="|<inv_msg>*156$14.zzw0C01W4MG601U0Q0DzzU"
    while (ok:=FindText(2777, 207, 3121, 864, 0, 0, Text))
    {
        X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
        Click, %X%, %Y%
    }	

    MouseClick, left,	2975,314
    MouseClick,left,0,480,,0,,R
    ; }

}
superinv1()
{
    ya := Clipboard 
    ,Clipboard := ""
    ,zz := "350"
    ,a1 := ""
    ,a2 := ""
    ,no_code_found:=1
    if (swap_accs = 0)
    {
        haa := All_UserInfo[a_index]
        ,haa := StrSplit(haa, ",")
        ,haaa := haa[1]
        ;OutputDebug `n %haaa% `n
        if (haaa == "")
        {
            index := set - 10
            loop 10
            {
                FileReadLine, ha,username.txt, %Index%
                All_UserInfo[a_index] := ha
                ;OutputDebug %ha% `n
                Index++
            }

        }
        Loop, 9
        {
            haa := All_UserInfo[a_index]
            ,haa := StrSplit(haa, ",")
            ,haaa := haa[4]
            ;OutputDebug `n %haaa% `n
            if (haaa == "" and a_index != 5) 
            {
                no_code_found = 1
                break
            }
            else
                no_code_found = 0
        }
        if (no_code_found = 0)
        {
            inv_code.RemoveAll()
            i = 1
            For Index, Value In All_UserInfo
            {
                ;if (i = 5)
                ;	i++
                haa := All_UserInfo[a_index]
                ,haa := StrSplit(haa, ",")
                ,inv_code[i] := haa[4]
                i++
            }
        }
    }
    if (no_code_found = 1)
    {
        MouseMove	620,128 ;msg
        sleep %zz%
        sleep %zz%
        MouseClick, left,	620,128 ;msg
        sleep %zz%	
        MouseClick, left,	493,159
        sleep %zz%	
        MouseClick, left,	339,292 ;copy
        sleep %zz%	
        MouseClick, left,	403,290 ;exit
        a1 := Clipboard

        if (a1 == "")
        {
            zz = 650
            MouseMove	620,128 ;msg
            sleep %zz%
            sleep %zz%
            MouseClick, left,	620,128 ;msg
            sleep %zz%	
            MouseClick, left,	493,159
            sleep %zz%	
            MouseClick, left,	339,292 ;copy
            sleep %zz%	
            MouseClick, left,	403,290 ;exit
            a1 := Clipboard
            zz = 350
        }
        Clipboard := ""
        ;odebug = a1 %Clipboard%

        MouseMove	1258,126
        sleep %zz%	
        sleep %zz%	
        MouseClick, left,	1258,126
        sleep %zz%	
        MouseClick, left,	1134,160
        sleep %zz%	
        MouseClick, left,	989,294
        sleep %zz%	
        MouseClick, left,	1044,284
        a2 := Clipboard

        if (a2 == "")
        {
            zz = 650
            MouseMove	1258,126
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	1258,126
            sleep %zz%	
            MouseClick, left,	1134,160
            sleep %zz%	
            MouseClick, left,	989,294
            sleep %zz%	
            MouseClick, left,	1044,284
            a2 := Clipboard
            zz = 350
        }
        Clipboard := ""
        ;odebug = a2 %Clipboard% 

        MouseMove	1899,126
        sleep %zz%	
        sleep %zz%	
        MouseClick, left,	1899,126
        sleep %zz%	
        MouseClick, left,	1773,157
        sleep %zz%	
        MouseClick, left,	1631,295
        sleep %zz%	
        MouseClick, left,	1683,294
        a3 := Clipboard

        if(a3 == "")
        {
            zz = 650
            MouseMove	1899,126
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	1899,126
            sleep %zz%	
            MouseClick, left,	1773,157
            sleep %zz%	
            MouseClick, left,	1631,295
            sleep %zz%	
            MouseClick, left,	1683,294
            a3 := Clipboard
            zz = 350
        }
        Clipboard := ""
        ;odebug = a3 %Clipboard%

        MouseMove	2536,123
        sleep %zz%	
        sleep %zz%	
        MouseClick, left,	2536,123
        sleep %zz%	
        MouseClick, left,	2413,155
        sleep %zz%	
        MouseClick, left,	2270,292
        sleep %zz%	
        MouseClick, left,	2323,290
        a4 := Clipboard
        if(a4 == "")
        {
            zz = 650
            MouseMove	2536,123
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	2536,123
            sleep %zz%	
            MouseClick, left,	2413,155
            sleep %zz%	
            MouseClick, left,	2270,292
            sleep %zz%	
            MouseClick, left,	2323,290
            a4 := Clipboard
            zz = 350
        }
        Clipboard := ""
        ;odebug = a4 %Clipboard%

        MouseMove	619,607
        sleep %zz%	
        sleep %zz%	
        MouseClick, left,	619,607
        sleep %zz%	
        MouseClick, left,	496,629
        sleep %zz%	
        MouseClick, left,	339,765
        sleep %zz%	
        MouseClick, left,	404,770
        b1 := Clipboard
        if (b1 == "")
        {
            zz = 650
            MouseMove	619,607
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	619,607
            sleep %zz%	
            MouseClick, left,	496,629
            sleep %zz%	
            MouseClick, left,	339,765
            sleep %zz%	
            MouseClick, left,	404,770
            b1 := Clipboard
            zz = 350
        }
        Clipboard := ""
        ;odebug = b1 %Clipboard%

        MouseMove	1258,610
        sleep %zz%	
        sleep %zz%	
        MouseClick, left,	1258,610
        sleep %zz%	
        MouseClick, left,	1130,635
        sleep %zz%	
        MouseClick, left,	987,766
        sleep %zz%	
        MouseClick, left,	1036,766
        b2 := Clipboard

        if (b2 == "")
        {
            zz = 650
            MouseMove	1258,610
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	1258,610
            sleep %zz%	
            MouseClick, left,	1130,635
            sleep %zz%	
            MouseClick, left,	987,766
            sleep %zz%	
            MouseClick, left,	1036,766
            b2 := Clipboard
            zz = 350
        }

        Clipboard := ""
        ;odebug = b2 %Clipboard%

        MouseMove	1899,612
        sleep %zz%	
        sleep %zz%	
        MouseClick, left,	1899,612
        sleep %zz%	
        MouseClick, left,	1773,639
        sleep %zz%	
        MouseClick, left,	1632,774
        sleep %zz%	
        MouseClick, left,	1679,763
        b3 := Clipboard

        if (b3 == "")
        {
            zz = 650
            MouseMove	1899,612
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	1899,612
            sleep %zz%	
            MouseClick, left,	1773,639
            sleep %zz%	
            MouseClick, left,	1632,774
            sleep %zz%	
            MouseClick, left,	1679,763
            b3 := Clipboard
            zz = 350
        }
        Clipboard := ""
        ;odebug = b3 %Clipboard%

        MouseMove	2536,607
        sleep %zz%	
        sleep %zz%	
        MouseClick, left,	2536,607
        sleep %zz%	
        MouseClick, left,	2418,638
        sleep %zz%	
        MouseClick, left,	2261,764
        sleep %zz%	
        MouseClick, left,	2322,773
        b4 := Clipboard

        if (b4 == "")
        {
            zz = 650
            MouseMove	2536,607
            sleep %zz%	
            sleep %zz%	
            MouseClick, left,	2536,607
            sleep %zz%	
            MouseClick, left,	2418,638
            sleep %zz%	
            MouseClick, left,	2261,764
            sleep %zz%	
            MouseClick, left,	2322,773
            b4 := Clipboard
            zz = 350
        }

        Clipboard := ""
        ;odebug = b4 %Clipboard%
    }

    Loop,4 ; retrive code from previous run
    {
        if (a%a_index% == "") 
            a%a_index% := inv_code[a_index]
        else
            inv_code[a_index] := a%a_index%

        b_index := a_index + 5

        if (b%a_index%== "") 
            b%a_index% := inv_code[b_index]
        else
            inv_code[b_index] := b%a_index%
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

    loop 4
    {
        Clipboard1 := a%A_Index%
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
    }
    loop 4
    {
        Clipboard1 := b%A_Index%
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
    }
    if (swap_accs = 0)
    {

        file_write2 := "!username.txt"
        ,indexing := set - total_accounts_open
        if (indexing < 0)
            indexing := set
        Loop,9 ; add code to usertext
        {
            haa := All_UserInfo[a_index]
            ,haa := StrSplit(haa, ",")
            ,haaa := haa[4]
            if (haaa == "" and A_Index != 5) 
            {
                haa[4] := inv_code[a_index]
                Str := ""
                For Index, Value In haa
                    Str .= "," . Value
                Str := LTrim(Str, ",") ; Remove leading pipes (|)
                All_UserInfo[A_Index] := Str
                ;OutputDebug no.%indexing% %Str% `n
                if Str
                    TF_ReplaceLine(file_write2,indexing,indexing,str)
            }
            indexing++
        }
    }

    ;    if (a%a_index% == "") 
    ;        a%a_index% := inv_code[a_index]
    ;    else
    ;        inv_code[a_index] := a%a_index%
}
single_inv()
{
    gos()
    zz = 350
    msg:="|<msg>0xF8F8F8@1.00$14.001zU7kEkb0tsSTzbzs00U"
    Text:="|<displaypic>*20$43.000000000000000000000000000000000000000000003zzzk007zzzy08"
    if (ok2:=FindText(320, 0, 2580, 580, 0, 0, Text))
    {
        OutputDebug % ok2.maxindex() " total"
        for i,v in ok2
        {
            ;detect which is not inlobby
            Xas :=ok2[i].x , Yas :=ok2[i].y
            FindText_MouseTip(Xas, Yas)
            if (swap_accs = 0)
            {
                MouseMove,xas,yas
                sleep 800

            }

            acc_num := Xas/640
            ,acc_num:=Ceil(acc_num)
            OutputDebug x%Xas% y%Yas%,no.%acc_num%
            if Yas > 480
            {
                acc_num := acc_num + 5 
                ODebug = %acc_num% not in lobby
                haa := All_UserInfo[acc_num]
                ,haa := StrSplit(haa, ",")
                ,haaa := haa[4]
                if !haaa
                    return
                MouseMove,3183,877
                sleep %zz%
                sleep %zz%
                sleep %zz%
                if (ok:=FindText(3162, 591, 3202, 690, 0, 0, msg))
                {
                    X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                    Click, %X%, %Y%
                }

                if a_index = 1
                    sleep %zz%
                sleep %zz%	
                MouseClick,left,-127,29,,9,, R
                sleep %zz%	
                MouseClick, left,	2850,732
                sleep %zz%
                ;odebug = %Clipboard%
                Sleep 100
                SendInput, %haaa%
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
                    if (ok:=FindText(3162, 591, 3202, 690, 0, 0, msg))
                    {
                        X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                        Click, %X%, %Y%
                    }

                    if a_index = 1
                        sleep %zz%
                    sleep %zz%	
                    MouseClick,left,-127,29,,9,, R
                    sleep %zz%	
                    MouseClick, left,	2850,732
                    sleep %zz%
                    ;odebug = %Clipboard%
                    Sleep 100
                    SendInput, %haaa%
                    sleep %zz%
                    MouseClick, left,	2916,719 ; tic
                    sleep %zz%	
                    sleep %zz%
                    MouseClick, left,	2793,736 ; click dp
                    sleep %zz%	
                    MouseClick, left,	3009,735
                    sleep %zz%	
                    MouseClick, left,	2967,790

                }
            }
            else
            {
                ODebug = %acc_num% not in lobby
                haa := All_UserInfo[acc_num]
                ,haa := StrSplit(haa, ",")
                ,haaa := haa[4]
                if !haaa
                    return
                ;odebug = %A_Index%, %a% 
                MouseMove,3183,383
                sleep %zz%
                sleep %zz%
                sleep %zz%
                if (ok:=FindText(3162, 110, 3202, 210, 0, 0, msg))
                {
                    X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                    Click, %X%, %Y%
                }

                if a_index = 1
                    sleep %zz%
                sleep %zz%	
                MouseClick,left,-127,29,,9,, R
                sleep %zz%	
                MouseClick, left,	3053,155
                sleep %zz%	
                MouseClick, left,	2836,245 ;type
                sleep %zz%	
                ;odebug = %Clipboard%
                Sleep 100
                SendInput, %haaa%
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
                MouseClick, left,2975,314
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
                    if (ok:=FindText(3162, 110, 3202, 210, 0, 0, msg))
                    {
                        X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
                        Click, %X%, %Y%
                    }

                    if a_index = 1
                        sleep %zz%
                    sleep %zz%	
                    MouseClick,left,-127,29,,9,, R
                    sleep %zz%	
                    MouseClick, left,	2836,245 ;type
                    sleep %zz%	
                    ;odebug = %Clipboard%
                    Sleep 100
                    SendInput, %haaa%
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
                }
            }
        }
        Gui, _MouseTip_: Destroy
        ; click join

        pending_joins()

        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text1))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
            sleep 100
        }

    }
    ;if (okseen := error())
    ;   single_inv()
} 
crossfix()
{
    ;odebug = checking for cross
    sleep 100
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, crossfix.png
    if (ErrorLevel = 0)
    {
        odebug = cross found
        x := FoundX
        ,y := FoundY
        loop , 2
        {
            MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
            BlockInput, On ; BlockInput, off      
            MouseMove, x, y, 10, 
            sleep 100
            ;MouseClick, left, x, y
            MouseMove, 10, 10, 10, R
            sleep 100
            MouseMove, xpos, ypos
            BlockInput, off

        }
    }
} 
pressaccept()
{
    loop,2
    {
        MouseClick,left,2880,270,,10,,
        Sleep 80
        MouseClick,left,0,480,,10,,R
    }
    Sleep 5000
    Text:="|<accept_check>0x1C471F@1.00$19.000DzzbzznyDty3wy0yT0TDUDbk7nw7tzzww0SQ07A01a00n00Nzzwzzy000E"
    ok:=FindText(2722, 222, 3050, 787, 0, 0, Text)
    if ( ok.MaxIndex() = 16)
    {
        loop 2
        {
            MouseClick,left,320,270,,0,,
            loop,4
            {
                MouseClick, left,640,0,,0,, R
            }
            MouseClick, left,320,750,,0,,
            loop,5
            {
                MouseClick, left,640,0,,0,, R
                Sleep 30
            }
        } 
        MouseClick,left, 3324,709
    }
    else
    {
        sleep 6000
        a2 = 0
        a1 = 0
    }
}
join1()
{
    MouseClick,left, 3124,709
    Sleep 2000
    MouseMove, 2541, 140 
    Sleep 1000
    MouseClick,left, 2541, 140 
    Sleep 1000
    MouseMove, 1901, 140 
    Sleep 1000
    MouseClick,left, 1901, 140 
    Sleep 1000
    MouseMove, 1261, 140 
    Sleep 1000
    MouseClick,left, 1261, 140 
    Sleep 1000
    MouseMove, 621, 140 
    Sleep 1000
    MouseClick,left, 621, 140 
    Sleep 1000
    MouseMove, 2541, 620 
    Sleep 1000
    MouseClick,left, 2541, 620 
    Sleep 1000
    MouseMove, 1901, 620 
    Sleep 1000
    MouseClick,left, 1901, 620 
    Sleep 1000
    MouseMove, 1261, 620 
    Sleep 1000
    MouseClick,left, 1261, 620 
    Sleep 1000
    MouseMove, 621, 620 
    Sleep 1000
    MouseClick,left, 621, 620 
    Sleep 1000
    Sleep 1000
    MouseMove, 2581, 856 
    MouseClick,left, 2581, 856 
    Sleep 1000
    MouseMove, 2593, 313 
    MouseClick,left, 2593, 313 

    MouseMove, 3180,126 
    Sleep 1500
    MouseClick,left, 3140,126 
    Sleep 1500
    MouseClick,left, 3165,150 
    Sleep 1500
    MouseClick,left, 3124,148
    Sleep 1500
    MouseClick,left, 3165,177 
    Sleep 1500 
    MouseClick,left, 3124,175
    Sleep 1500
    MouseClick,left, 3165,204 
    Sleep 1500
    MouseClick,left, 3124,202
    Sleep 1500
    MouseClick,left, 3165,231 
    Sleep 1500
    MouseClick,left, 3124,229
    Sleep 1500
    MouseMove, 3180,606 
    Sleep 1500
    MouseClick,left, 3140,606 
    Sleep 1500
    MouseClick,left, 3165,630 
    Sleep 1500
    MouseClick,left, 3124,628
    Sleep 1500
    MouseClick,left, 3165,657 
    Sleep 1500
    MouseClick,left, 3124,655
    Sleep 1500
    MouseClick,left, 3165,684 
    Sleep 1500
    MouseClick,left, 3124,682
    Sleep 1500
    MouseClick,left, 3165,711 
    Sleep 1500
}

join2()
{
    MouseClick,left, 3124,709
    Sleep 2000
    MouseMove, 2541, 140 
    Sleep 1000
    MouseClick,left, 2541, 140 
    Sleep 1000
    MouseMove, 1901, 140 
    Sleep 1000
    MouseClick,left, 1901, 140 
    Sleep 1000
    MouseMove, 1261, 140 
    Sleep 1000
    MouseClick,left, 1261, 140 
    Sleep 1000
    MouseMove, 621, 140 
    Sleep 1000
    MouseClick,left, 621, 140 
    Sleep 1000
    MouseMove, 2541, 620 
    Sleep 1000
    MouseClick,left, 2541, 620 
    Sleep 1000
    MouseMove, 1901, 620 
    Sleep 1000
    MouseClick,left, 1901, 620 
    Sleep 1000
    MouseMove, 1261, 620 
    Sleep 1000
    MouseClick,left, 1261, 620 
    Sleep 1000
    MouseMove, 621, 620 
    Sleep 1000
    MouseClick,left, 621, 620 
    Sleep 1000
    Sleep 1000
    MouseMove, 2581, 856 
    MouseClick,left, 2581, 856 
    Sleep 1000
    MouseMove, 2593, 313 
    MouseClick,left, 2593, 313 
}
popout()
{

    Text:="|<fixinv>*136$14.zzw0C01UkMS67VUkM067VXwNza01k0zzy"
    while (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
    {
        X:=ok.1.x, Y:=ok.1.y, Comment:=ok.1.id
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On ; BlockInput, off
        MouseClick, left, x, y
        MouseMove, 20, 30, 10, R
        MouseMove, xpos, ypos
        BlockInput, off
        Sleep 20
    }
    ;        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 fixinv.png
    ;        if (ErrorLevel = 0)
    ;        odebug =  popout found
    ;		MsgBox % odebug
    ;        while (ErrorLevel = 0)
    ;                {
    ;                   x :=  FoundX 
    ;                   y :=  FoundY
    ;                   MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    ;                   BlockInput, On          ; BlockInput, off
    ;                   MouseClick, left, x, y
    ;                   MouseMove, 20, 30, 10, R
    ;                   MouseMove, xpos, ypos
    ;                   BlockInput, off
    ;                   Sleep 20
    ;                   ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 fixinv.png
    ;                }
} 
update_client_check(dhkka)
{
    ;dhkka :: 0 is skip ,1 is csgo update, 2 is steam only
    if (dhkka = 1)
        play_now = 1
    Text:="|<update_client>*150$39.0000003k0E10040G0840Z2GZ/Z50GH9psd2GNGc4sSQvqs002000000E000000000U"
    if (ok:=FindText(0, 0, 2560, 960, 0, 0, Text) or play_now = 1)
    {
        Length := StrLen(A_UserName)
        word = % SubStr(A_UserName, Length, 1)
        if ( word = 2)
        {
            odebug = waiting for update to complete 
                run kill_steam.bat
            pids := pidListFromName("steam.exe")
            IniRead, lastupdated,%steam_folder%update.ini,update,lastupdated
            lastupdated := A_TickCount - lastupdated
            while (lastupdated > 900000)
            {
                IniRead, lastupdated,%steam_folder%update.ini,update,lastupdated
                lastupdated := A_TickCount - lastupdated
                Sleep 5000
            }
            return
        }
        else

        MouseMove x,y
        odebug = client check %play_now%
        send_telegram("updating csgo")
        Sleep 100
        play_now = 0
        runwait kill_steam.bat 
        runwait Taskkill /IM vac.exe /F
        steam_1 = %steam_folder%Steam1.exe
        if !FileExist(steam_1)
            FileCopy,%steam_folder%Steam.exe, %steam_folder%Steam1.exe
        IniRead,arguments,status.ini,SectionName,arguments
        ,ha := StrSplit(ha, ",")
        ,ha := ha[1]
        Run, Steam1.exe -applaunch 730 -silent -safe -novid -d3d9ex -login %ha% -low ,%steam_folder%,,steam_pid
        ;Run	%steam_folder%Steam1.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  -low
        Sleep 5000
        time_since_last_match := ""
        WinGetTitle, Var, Counter
        If InStr(var,"Updating")
        {
        }
        else
        {
            WinGetText, yup,,Steam,
            timer2 = 0
            loop
            {
                IfInString,yup,pdate
                    sleep 5000
                else
                    break
                WinGetText, yup,,Steam,
                timer2++
                Sleep 1000
                if (timer2 = 100) ; 800 ton jada kar eha because update ni ho reha
                {
                    print("useless","update steam broken","1","lan") ; folder,comment,repeat,location
                    break
                }
            }
        }
        x = 0
        timer = 0
        while(x = 0)
        {
            ifWinExist, vac.exe
                WinClose, vac.exe
            ControlClick , OK, VAC bypass
            ControlClick , Close, @ Steam
            ControlClick , close, csgo.exe
            ControlClick , close, @ csgo.exe
            start_check()
            timer1 = 0
            WinGetTitle, Var, Counter
            loop
            {
                while InStr(var,"Ready") or InStr(var,"Updating")
                {
                    If InStr(var,"Updating")
                    {
                        WinGetPos , x, y, w, h ,%var%
                        x:= x+w
                        ,y:= y +h
                        x:= x-6
                        ,y:= y-3
                    }
                    else	If InStr(var,"Ready")
                    {
                        x7 := x , y7 := y
                        loop,20
                        {
                            y7:= y7-3 , x7 := x7 - 1
                            MouseClick,left, %x7%, %y7%
                        }
                        MouseGetPos,x,y
                        Sleep 5000
                    }
                    timer1++
                    Sleep 1000
                    if (timer1 = 800) ; 800 ton jada kar eha because update ni ho reha
                    {
                        print("useless","update broken","1","lan") ; folder,comment,repeat,location
                        break
                    }
                    WinGetTitle, var, Counter
                }
                ;click, 2009 ,1222  ; click close
                WinActivate, Counter
                sleep 100
                IfWinActive,Counter
                {
                    Send, {Esc down}
                    sleep 100
                    Send, {Esc up}
                }
                ;ControlSend,,{Esc},Counter
                ; ControlSend,,{Esc},csgo.exe
                Text:="|<close>*115$56.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzlyAlzzzzzsH20TzzzzyImYTzzzzzbAg1zzzzztH+lzzzzzy40U7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
                if (ok:=FindText(0, 0, 3200, 1920, 0.11, 0.11, Text))
                { 
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    MouseClick, left,%X%, %Y%,1,50,,
                    sleep 500
                    y := y + 60
                    MouseMove x,y
                    x = 0
                }
                new_settings:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
                if (ok:=FindText(0, 0, 3200, 3200, 0.1, 0.1, new_settings))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                    break
                }
                Text:="|<UPDATED_SETTING>*172$14.zzzzzgrrCxnizxjzPzqzxryxzjbby7zzy"
                if (ok:=FindText(0, 0, 3200, 3200, 0.1, 0.1, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                    break
                }
                Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
                if (ok:=FindText(2103-700, 1171-750, 21037+700, 1171+750, 0.1, 0.1, Text))
                { 
                    odebug = old play game clicked
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    MouseClick, left,%X%, %Y%,1,50,,
                    sleep 500
                    y := y + 60
                    MouseMove x,y
                    x = 0
                }
                Text:="|<play_win10>*130$55.zzzzzzzzzs0yTzwyDyQ07DzwDXyCTnbzy7tyDDsnzy1wTDbwNzzAz7DnyAzzaTn7tz6Tzbbsbwz7Dznny7y07bzlszXz07nzs0Tnzbztzw0DtznzwzwTXwztzyTyTtyTwzzDzDwTDyTzU17yDbzDzk0bzbnzzzzzzzzzzU"
                if (ok:=FindText(2103-700, 1171-750, 21037+700, 1171+750, 0.1, 0.1, Text))
                { 
                    odebug = win 10 play game clicked
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    MouseClick, left,%X%, %Y%,1,50,,
                    sleep 500
                    y := y + 60
                    MouseMove x,y
                    x = 0
                }
                Text:="|<play_game>*134$58.3jvTTbvrq1qzKvxjLCPrPxRTjxQtj3jivylipK1yy3jvq3JPrvvizqvhJjTUTPzbTKq2"
                if (ok:=FindText(2103-700, 1171-750, 21037+700, 1171+750, 0.1, 0.1, Text))
                { 
                    odebug = new play game clicked
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    MouseClick, left,%X%, %Y%,1,50,,
                    sleep 500
                    y := y + 60
                    MouseMove x,y
                    x = 0
                }
                timer++
                if (timer = 70)
                {
                    play_now = 1
                    update_client_check("0") 
                    return
                }
                Text:="|<rety_connection>*124$71.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzy71bHg661MAvtotCXPtrSb9rrvuhKrryxTJjjrp+pUjxuydTSjf5XTSvpxMyRCL/ayRrdmty71iLg67jMBns"
                if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    play_now = 1
                    update_client_check("0") 
                    return
                }
                WinGetTitle, Var, Counter						 
            }
        }
        sleep 5000
        update_map_command()
        run %steam_folder%Steam1.exe -app_stop 730 1
        sleep 1000
        run %steam_folder%Steam1.exe -shutdown
        sleep 5000 
        Process, Exist, steam1.exe
        while errorlevel=0
        {
            Sleep 1000
            run %steam_folder%Steam1.exe -app_stop 730 1
            run %steam_folder%Steam1.exe -shutdown
            qwe++
            if (qwe >= 60)
            {
                runwait kill_steam.bat
                break
            }
            Process, Exist, steam1.exe
        }
        ;return ; uncheck for old fashion	
        ;IniRead,arguments,status.ini,SectionName,arguments
        ;Run,steam1.exe %arguments% -login %ha% -low  ,%steam_folder%,,steam_pid
        ;Sleep 10000
        ;Process, Exist, csgo.exe
        ;if(errorlevel = 0)
        FileCopy,%steam_folder%Steam1.exe, %steam_folder%Steam.exe ,1
        SET := SET - total_accounts_open
        odebug = OPENING FROM ac %set%			 									 
        newchangeaccs()
        IniWrite, %a_tickcount%,%steam_folder%update.ini,update,lastupdated
    } 
    if (dhkka = 2)
    {
        runwait kill_steam.bat
        runwait Taskkill /IM vac.exe /F
        run %steam_folder%Steam.exe
        Sleep 3000
        WinGetText, yup,,Steam,
        timer = 0
        loop
        {
            IfInString,yup,pdate
            {
                sleep 1000
            }
            else
            {
                WinGetTitle, var,Steam
                WinGetPos , x, y, w, h ,%var%
                if (var := "Steam Login" && w >= 1)
                {
                    Sleep 13000
                    run %steam_folder%Steam.exe -shutdown
                    Sleep 3000
                    break
                }
                sleep 1000
                timer ++
                odebug = timer = %timer%
                if (timer = 300)
                    break
            }
            WinGetText, yup,,Steam,
        }
        c = C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\panorama\videos
        if FileExist(c)
            FileRemoveDir, %c%, 1
        SET := SET - total_accounts_open
        newchangeaccs()
    }
}
testing()
{

    If InStr(owner,"testingzzzzzzzzzzzz")
    {
        OutputDebug testing `n
        scoreboard:="|<scoreboard>0x676767@0.95$7.0+YG94q0E" ;scoreboard
        ,in_match_check:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
        ,map_check:="|<map_check>0xF8D764@1.00$13.6A2231bUzkTsDw7y3z1zUwkM8844E"
        if (ok:=FindText(288, 482, 2859, 975, 0.01, 0.01, scoreboard))
        {
            toal := ok.MaxIndex()
            OutputDebug %toal%
            ;print("scoreboard_found",toal,"1","lan") 
        }
        Pause
    }
}
update_map_command(skip = 0)
{
     IniRead, map_name, status.ini,SectionName , map_name
     IniRead, ping, status.ini,variable , ping
    SendRaw,``
    sleep 200
    SendRaw,`player_competitive_maplist_8
    sleep 200
    send {Down}
    sleep 200
    Send, {ctrl down}
    Sleep 100
    Send, {a down}
    sleep 100
    Send, {a up}
    sleep 100
    Send, {ctrl up}
    Sleep 100
    Send, {ctrl down}
    Sleep 100
    Send, {x down}
    sleep 100
    Send, {x up}
    sleep 100
    Send, {ctrl up}
    Sleep 100
    sleep 700
    map_command := Clipboard
    sleep 200
    SendRaw,`ui_playsettings_mode_official_v
    sleep 200
    send {Down}
    sleep 200
    Send, {ctrl down}
    Sleep 100
    Send, {a down}
    sleep 100
    Send, {a up}
    sleep 100
    Send, {ctrl up}
    Sleep 100
    Send, {ctrl down}
    Sleep 100
    Send, {x down}
    sleep 100
    Send, {x up}
    sleep 100
    Send, {ctrl up}
    Sleep 100
    sleep 700
    competitive := Clipboard
;    if(skip = 1)
;    {
;        Clipboard = %map_command% %map_name%
;         Sleep 100
;    Send, {ctrl down}
;    Sleep 100
;    Send, {v down}
;    sleep 100
;    Send, {v up}
;    sleep 100
;    Send, {ctrl up}
;    Sleep 200
;     send {enter}
;     Sleep 200
;        SendRaw,``
;        Sleep 100
;        
;    }
;    else
;    {
    SendRaw,`quit
   sleep 200
    send {enter}
    sleep 2000
;    }
 if(skip = 1)
    return
    IniWrite,%map_command%,status.ini,variable,map_command
    FileDelete, %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg
    FileAppend, %map_command% %map_name% `n, %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg
    FileAppend, mm_dedicated_search_maxping %ping% `n , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg
    FileAppend, %competitive% competitive , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg
    ;IniWrite, host_writeconfig , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\ping.cfg,host ,
}
showscore()
{
    MouseClick, Right,300,300,,10,, 
    sleep 100 
    SendRaw,``
    sleep 200
    SendRaw,`+showscores
    sleep 100
    send {enter}
    sleep 100
    Sendraw, ``
    sleep 200
    MouseClick, Right,300,700,,10,, 
    sleep 100
    SendRaw, ``
    sleep 200
    SendRaw, `+showscores
    sleep 100
    send {enter}
    sleep 100
    SendRaw, `` 
}

getscore()
{	
    if (t = "no")
    {
        odebug = out from get score no								 
        return
    }
    if( runfuntion = 0) ;check must
    { 
        sx1 := "305"
        ,sy1 := "31"
        ,tx1 := "323"
        ,ty1 := "45"

        ,a := "1"
        ,b := "2"
        ,i := "1"
        ;cts = -1
        ;tss = -1
        ,cts := "ac"
        ,xc := "640"
        ,yc := "480"
        ,sx1 := sx1
        ,sx2 := sx1 + xc
        ,sx3 := sx1 + xc*2
        ,sx4 := sx1 + xc*3
        ,sx5 := sx1 + xc*4
        ,sy2 := sy1 + yc

        ,tx1 := tx1
        ,tx2 := tx1 + xc
        ,tx3 := tx1 + xc*2
        ,tx4 := tx1 + xc*3
        ,tx5 := tx1 + xc*4
        ,ty2 := ty1 + yc
        ,Text_0:="|<0>0xB5D4EE@0.93$6.0SGGGGGS0U"
        ,Text_1:="|<1>0xB5D4EE@0.93$3.t99A"
        ,Text_2:="|<2>0xBCDCF6@0.93$4.yFO8y"
        ,Text_3:="|<3>0xB4D2EC@0.93$4.sFMNu"
        ,Text_4:="|<4>0xA9BED9@0.85$6.6CSKz66U"
        ,Text_5:="|<5>0xB5D4EE@0.93$4.y8oFy"
        ,Text_6:="|<6>0xB5D4EE@0.93$4.y8yNy"
        ,Text_7:="|<7>0xB5D4EE@0.93$4.w284G"
        ,Text_8:="|<8>0xBBD8F1@0.93$4.yNyNy"
        ,Text_9:="|<9>0xB9DAF8@0.93$4.yFO8y"
        ,Text_10:="|<10>0xC1E4FF@0.93$10.swWG98YWG98y"
        ,Text_11:="|<11>0xB5D4EE@0.93$9.st18918918A"
        ,Text_12:="|<12>0xB5D4EE@0.93$10.swWG18MW288y"
        ,Text_13:="|<13>0xB1D0EC@0.93$10.swUG18MUG98u"
        ,Text_14:="|<14>0xB5D4EE@0.93$10.s8VW08UXm282"
        ,Text_15:="|<15>0xBAD9F4@0.93$10.swW288oUG18y"
        while(i <= 10)
        {	
            sx := sx%a%
            ,sy := sy%b%
            ,tx := tx%a%
            ,ty := ty%b%
            ,Value := Mod(i, 2)
            ,ssscore :="15"
            Loop
            {
                if ssscore = -1
                    break
                text := text_%ssscore%
                if (ok:=FindText(sx, sy, tx, ty, "0.01", "0.01", Text))
                {
                    cts := ssscore
                    cts += 0
                    ,getct := cts
                    OutputDebug score by find text
                    break
                }
                ssscore--
            }
            if cts is not integer 
            {
                RunWait, Capture2Text\Capture2Text_CLI.exe --screen-rect "%sx% %sy% %tx% %ty%" --clipboard ,,Hide
                ;odebug a=%a% ;"%sx% %sy% %tx% %ty%" "%clipboard%"
                if (value = 0)
                {
                    b := "2"
                    ,a++
                }
                else
                {
                    b = 1
                }
                clipboard := StrReplace(clipboard, "`r`n")
                ,clipboard := StrReplace(clipboard,"g", "5")
                ,clipboard := StrReplace(clipboard,"S", "5")
                ,clipboard := StrReplace(clipboard,"U", "0")
                ,clipboard := StrReplace(clipboard,"O", "0")
                ,clipboard := StrReplace(clipboard,"D", "0")
                ,clipboard := StrReplace(clipboard,"16", "15")
                ,clipboard := StrReplace(clipboard,"L", "1")
                ,clipboard := StrReplace(clipboard,"B", "8")
                ,cts := clipboard
                ;StringReplace,cts,cts,`r,,All
                ;cts += 0
                ;cts := cts + 0
                if cts is integer 
                {
                    if(cts >= getct or cts <= 10)
                    {
                        cts += 0
                        if ( cts > 0 and cts < 17 )
                        {	
                            ;odebug ct score is %cts% or %clipboard%
                            getct := cts
                            break
                        }
                        else 
                        {
                            cts := "0"
                            cts += 0
                            ,getct := cts
                            ; odebug else ct score is %cts% or %clipboard%
                            break
                        } 
                    } 
                }
            }
            else
                break
            i++
        }
        odebug = ct= cts"%cts%" copy"%clipboard%" real"%getct%" 
        ;return ; comment this or if else with mode selcetion    
        sx1 := "324" ;t 
        ,sy1 := "31"
        ,tx1 := "341"
        ,ty1 := "43"
        ,clipboard := a

        ,a := "1"
        ,b := "2"
        ,i := "1"
        ,xc := "640"
        ,yc := "480"
        ,sx1 := sx1
        ,sx2 := sx1 + xc
        ,sx3 := sx1 + xc*2
        ,sx4 := sx1 + xc*3
        ,sx5 := sx1 + xc*4
        ,sy2 := sy1 + yc
        ,tx1 := tx1
        ,tx2 := tx1 + xc
        ,tx3 := tx1 + xc*2
        ,tx4 := tx1 + xc*3
        ,tx5 := tx1 + xc*4
        ,ty2 := ty1 + yc

        while (i <= 10)
        {
            sx := sx%a%
            ,sy := sy%b%
            ,tx := tx%a%
            ,ty := ty%b%
            ,Value := Mod(i, 2)
            RunWait, Capture2Text\Capture2Text_CLI.exe --screen-rect "%sx% %sy% %tx% %ty%" --clipboard ,,Hide
            ;odebug "%sx% %sy% %tx% %ty%" "%clipboard%"

            if (value = 0)
            {
                b := "2"
                ,a++
            }
            else
            {
                b = 1
            }
            clipboard := StrReplace(clipboard, "`r`n")
            ,clipboard := StrReplace(clipboard,"g", "5")
            ,clipboard := StrReplace(clipboard,"S", "5")
            ,clipboard := StrReplace(clipboard,"U", "0")
            ,clipboard := StrReplace(clipboard,"O", "0")
            ,clipboard := StrReplace(clipboard,"D", "0")
            ,clipboard := StrReplace(clipboard,"16", "15")
            ,clipboard := StrReplace(clipboard,"L", "1")
            ,clipboard := StrReplace(clipboard,"B", "8")

            ;     odebug  "%clipboard%"
            ;           Sleep 10
            ;      odebug  ------------
            tss := clipboard
            ;StringReplace,tss,tss,`n,,All
            ;tss += 0
            if tss is integer
            { 
                if(tss >= gett or tss <= 10)
                {
                    tss += 0
                    if(tss > 0 and tss < 17)
                    {
                        ;odebug ts score is %tss% or %clipboard%
                        gett := tss
                        break
                    }
                    else
                    {
                        tss = 0
                        tss += 0
                        gett := tss
                        break
                        ; odebug else t score is %tss% or %clipboard%

                    }
                } 
            }
            i++ 
        }
        odebug = t tss"%tss%" copy"%clipboard%" real"%gett%"
        if (my_mode = 16)
        {
            if (gett >=14 or getct >=14) and (gett <=2 or getct <=2 ) and (wins = 6)
            {
                odebug = t%gett% ct%getct%
                wins++
                odebug = wins %wins%++
            }
            return
        }

    } ;return ; needed for 16-0
    tss := gett
    ,cts := getct
    total := gett + getct
    ;	if (total = 14)
    ;		halftime = 1
    ;	else
    ;		halftime = 0
    ;	if ( tss >=14 and cts >=14) ;and (tss >=0 or cts >=0 )
    ;		skiphftm = 0 
    ;	else
    ;		skiphftm = 1
    odebug = rounds %total% mode %my_mode% do1614 %do1614%
    ;do1614 = 1 ; testing
    if (do1614 = 1)
    {
        if ( cts = 13)
            reconnectdelay=700
        if ( total >= 27) ; 27
        {
            IniRead, reconnectdelay, status.ini,SectionName , reconnectdelay
            oDebug = doing 1614
            my_mode = 16

            ;				skiphftm = 1
            return
        }
    }
    if (t = "up")
    {
        dis_8_acc("up")
        if updis_16() ;ct win
            singlemode = 1
        reconnect()
        sleep 2000
        if singlemode != 1
        {
            dis_8_acc("down")
            if dndis_16()
            {
                singlemode = 1
                reconnect()
                sleep 2000
            }
        }
    }
    else
    {
        dis_8_acc("down")
        if dndis_16() ;t win
            singlemode = 1
        reconnect()
        sleep 2000
        if singlemode != 1
        {
            dis_8_acc("up")
            if updis_16() ;ct win
            {
                singlemode = 1
                reconnect()
                sleep 2000
            }
        }
    }
    if (singlemode = 1)
    {
        while (setel != 2)
        {
            getteam()
            if (t = "no")
                return
            runfuntion = 0
            getscore()
            if (cts = 14 and do1614 = 1 )
                cts = 15
            if (tss = 14 and do1614 = 2 and cts = 14)
                cts--
            if (cts < 15)
            {
                left := 15 - cts
                if (t = "up")
                {
                    dis_8_acc("up")
                    OutputDebug disconnect %left% times 4363
                    if updis_16(left) ;ct win
                        singlemode = 1
                    reconnect()
                    map()
                    left := 15 - tss
                    OutputDebug disconnect %left% times 69
                    dis_8_acc("down")
                    dndis_16(left) ;t win
                }
                else 
                {
                    dis_8_acc("down")
                    OutputDebug disconnect %left% times 76
                    if dndis_16(left) ;t win
                        singlemode = 1
                    reconnect()
                    map()
                    left := 15 - tss
                    dis_8_acc("up")
                    OutputDebug disconnect %left% times 83
                    updis_16(left) ;ct win
                    reconnect()
                }
            }
            else if (tss < 15)
            {
                left := 15 - tss
                if (t = "up")
                {
                    dis_8_acc("up")
                    OutputDebug disconnect %left% times 94
                    if updis_16(left) ;ct win
                        singlemode = 1
                    reconnect()
                    map()
                    left := 15 - cts
                    OutputDebug disconnect %left% times 4400
                    dis_8_acc("down")
                    dndis_16(left) ;t win
                    reconnect()
                    map()
                }
                else 
                {
                    dis_8_acc("down")
                    OutputDebug disconnect %left% times 4409
                    if dndis_16(left) ;t win
                        singlemode = 1
                    reconnect()
                    map()
                    left := 15 - cts
                    dis_8_acc("up")
                    OutputDebug disconnect %left% times 4416
                    updis_16(left) ;ct win
                    reconnect()
                    map()
                }
            }
            else 
            {
                OutputDebug runnig 16-0 on 15??
                reconnect()
                map()
                dis_8_acc("all")
                left = 1
                updis_16(left) ;ct win
                dndis_16(left) 
            }

        }
    }
return

;;oDebug = NOT doing 1614      ek uper ek niche
;if (tss >= cts ) ; t is greter
;{	
;		if (cts = 14)
;			reconnectdelay=700
;	if (t = "up")
;	{
;		updis() ;ct win
;		;dndis() ;t win
;	}
;	else
;	{
;		;updis() ;t win
;		dndis() ;ct win
;	}    
;}
;else if (tss < cts) ; ct is greter
;{
;		if (tss = 14)
;			reconnectdelay=700
;	if (t = "up")
;	{
;		;updis() ;ct win
;		dndis() ;t win
;	}
;	else
;	{
;		updis() ;t win
;		;dndis() ;ct win
;	}
;}
IniRead, reconnectdelay, status.ini,SectionName , reconnectdelay
getscore()
return
}

getteam()
{
    odebug := getteam function
    ,Text:="|<t>*252$26.00000000000000000Dw007zzk3zzw0zzz0Dzzs3zzz0Tzzs7zzy0zzzkDzzw3zzz0zzzsDzzy3zzzUU"
    if (ok:=FindText(0, 406-60, 3200, 406+60, 0, 0, Text))
    {
        t = up
        odebug = t.gun t = %t%
        get := ""
        return
    }
    else	if (ok:=FindText(0, 885-60, 3200, 885+60, 0, 0, Text))
    {
        t = down
        odebug = t.gun t = %t%
        get := ""
        return
    }
    Text:="|<ct>*226$21.00080000000000000Dzs3zz0Tzs3zzUTzw1zzkDzy0zzk7zz0zzs4"
    if (ok:=FindText(0, 406-60, 3200, 406+60, 0, 0, Text))
    {
        t = down
        odebug = ct.gun t = %t%
        get := ""
        return
    }
    else	if (ok:=FindText(0, 885-60, 3200, 885+60, 0, 0, Text))
    {
        t = up
        odebug = ct.gun t = %t%
        get := ""
        return
    }
return ; test after new update this below function is not needed
Text:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
if (ok:=FindText(0, 0, 3200, 960, 0.15, 0.15, ext)) ; test disabled purposefully
{

    if (ok.maxindex() >=6)
    {
        odebug = some accounts are not in match
        sleep 500
        print("useless","ct/t fail"A_UserName,"1","lan") ; folder,comment,repeat,location
        getteam()
        return
    }
    else
    {
        odebug = potential freez
        print("useless","potential freez"A_UserName,"1","lan") ; folder,comment,repeat,location
        loop,5
        {
            if(ok:=FindText(0, 0, 3200, 960, 0.15, 0.15, Text))
            {
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                MouseClick,left, %x%, %y%
                sleep 50
                Send, {l down}
                sleep 100
                Send, {l up}
                y := y + 10
                MouseMove x,y
                sleep 1000
            }
            else
            {
                break
            }
        }
        RunWait,Taskkill /FI "USERNAME eq %USERNAME%" /fi “status eq not responding” /IM csgo.exe /F /T,,hide
    }
}
return
sx1 := "11"
,sy1 := "30"
,tx1 := "59"
,ty1 := "77"
,l := "48" ;66
,b := "1"
,i := "1"
,a := "1"
,gott := "T Start" 
,gotct := "CT Start"
,xc := "640"
,yc := "480"
,sx1 := sx1
,sx2 := sx1 + xc
,sx3 := sx1 + xc*2
,sx4 := sx1 + xc*3
,sx5 := sx1 + xc*4
,sy2 := sy1 + yc
,tx1 := tx1
,tx2 := tx1 + xc
,tx3 := tx1 + xc*2
,tx4 := tx1 + xc*3
,tx5 := tx1 + xc*4
,ty2 := ty1 + yc
while(i <= 10)
{	
    sx := sx%a%
    ,sy := sy%b%
    ,tx := tx%a%
    ,ty := ty%b%

    RunWait, Capture2Text\Capture2Text_CLI.exe --screen-rect "%sx% %sy% %tx% %ty%" --clipboard ,,Hide
    clipboard := StrReplace(clipboard, "`r`n")
    get := clipboard 
    odebug = team %get%
    got := get

    if( i <=5)
    {
        a++
        ,b := "1"
        If InStr(get,"T", true) or InStr(get,"C", true) or InStr(get,"G", true)
        {
            StringGetPos, pos, get, T
            if pos != 0
            {
                get := "CT"
                ,t := "down"
                break
            }
            else
            {
                StringGetPos, pos, get, C
                if pos = 0
                {
                    get := "CT"
                    ,t := "down"
                    break
                }
                else
                {
                    StringGetPos, pos, get, G
                    if pos = 0
                    {
                        get := "CT"
                        ,t := "down"
                        break 
                    }
                    else
                    {
                        t = up
                        break
                    }
                }
            }
        }

    }
    else
    {
        b = 2
        If InStr(get,"T", true) or InStr(get,"C", true) or InStr(get,"G", true)
        {
            StringGetPos, pos, get, T
            if pos != 0
            {
                get := "CT"
                ,t := "up"
                break
            }
            else
            {
                StringGetPos, pos, get, C
                if pos = 0
                {
                    get := "CT"
                    ,t := "up"
                    break
                }
                else
                {
                    StringGetPos, pos, get, G
                    if pos = 0
                    {
                        get := "CT"
                        ,t := "up"
                        break 
                    }
                    else
                    {
                        t = down
                        break
                    }
                }
            }
            ;                          If InStr(get,"CT")
            ;						{
            ;							;odebug = t's are Down
            ;							t = up
            ;                            break
            ;						}	
            ;                      else
            ;						{
            ;							t = down
            ;							;odebug = t's are up
            ;                            break
            ;						}
        }
        a--
    }
    i++
    t = no
}
odebug = t = %t%
get := ""l
} 
do_16_16(where)
{
    ;OutputDebug chk score 1614 = %do1614%
    Text:="|<14>*138$9.DZsi5og5wjY"
    ,Text15:="|<15>*158$10.73Rxrr3Thqr2"

    if where = 2
    {
        if (do1614 = 1 and ok:=FindText(2869, 29, 2900, 44, 0, 0, Text))
        {
            OutputDebug 1614 = 2
            do1614 = 2
            return 1
        }
        if(ok:=FindText(2869, 29, 2900, 44, 0, 0, Text15))
        {
            X:=ok.1.x
            if (x > 2883)
                return t15
            else
                return ct15
        }
    }
    else
    {
        if (do1614 = 1 and ok:=FindText(2869, 510, 2900, 526, 0, 0, Text))
        {
            OutputDebug 1614 = 2
            do1614 = 2
            return 1
        }
        if (ok:=FindText(2869, 510, 2900, 526, 0, 0, Text15))
        {
            X:=ok.1.x
            if (x > 2883)
                return t15
            else
                return ct15
        }
    }
}

halftime()
{
    Text:="|<15>*130$20.1s00S007U01sTsS7y7VzVsTsS7y7U0Vs88S727VsVsS8TzW7zsVsy8S7W7U0Vs08T06"
    if (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
    {
        if (t = up)
        {
            t = down
        }
        else 
        {
            t = up
        }
    }
}
home(skip = "")
{
    Text:="|<has medal>*175$8.zyT3Us77lzzzzs"
    ;Text:="|<has medal>*154$26.zzzzzzzzzzxzzzzDzzzVzzzkDzzw3zzzVzzzsTzzzzzzznzzzzzzzzzzzzzzy"
    if (ok:=FindText(0, 0, 3560, 1160, 0.01, 0.01, Text))
    { 
        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        Click, %X%, %Y%
        while (ok:=FindText(0, 0, 3560, 1160, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
        }
        Sleep 1000
        Text:="|<get medal>*160$14.X0EU4dn24mbA8HU"
        while (ok:=FindText(0, 0, 3360, 960, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
            sleep 500
            x = x + 20
            Click, %X%, %Y%
        }
        sleep 1000
        Text:="|<close_medal>*104$23.lyAl2ME2ImYQtZU9H+lkU40U"
        while (ok:=FindText(0, 0, 3560, 1160, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
        }
    }
    Text:="|<dangerlobby>*122$8.kvavBq7zU"
    if (ok:=FindText(0, 0, 2560, 960, 0, 0, Text))
    {
        odebug = danger zone lobby detected
        Text:="|<playbutton>*136$27.zzzzzzUTzzk0zzs01zy007zU00Ts001z000Dk000y0E07U3U0Q0T03U3y0Q0Ts3U3s0Q0Q03k200y0007s001z000Dw003zk00zz00Dzy07zU"
        while (ok:=FindText(2584-100, 0, 2584+100, 960, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
        }
        sleep 2000
        click 2644,100
        sleep 100
        click 2644,580
    }
    ;SetMouseDelay, 20
    Text:="|<>*110$6.17VtVU"
    MouseGetPos, xpos, ypos
    if (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
        gos()
    if skip = 1
        return
    while (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
    {
        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        Text:="|<exit_button>*65$14.zzs0S07U9s2S0VU0M060XU9s0S07sDzzy"
        while (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            MouseClick, left,%X%, %Y%,1,0,,
        }
        Text:="|<lobby/5>*155$7.dhqPr7"
        if (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            MouseMove, %x%, %y% 
            sleep 500
            MouseClick,left,
        } 
        Text:="|<lobby/5>*155$7.dhqPr7" ;Text:="|<>*110$6.17VtVU"
    }
    MouseMove, xpos, ypos 
    ;SetMouseDelay, 300
}

smart_cycle()
{
    OutputDebug `n smart_cycle started set is %set% `n
    FileReadLine, ha,username.txt, %set%
    if (ErrorLevel = 0)
    {
        set := set + 10
        loop
        {
            Iniread, matchcount, status.ini,match logs , set_%set%
            if ( matchcount == "ERROR")
                matchcount := matchlimit
            if (matchcount >= matchlimit)
            {
                set := set + 10
                FileReadLine, ha,username.txt, %set%
                if (ErrorLevel = 1)
                {
                    Iniread, left_matches, status.ini,match logs , left_matches
                    if (left_matches= 0)
                        IniWrite, 1, status.ini,match logs , left_matches
                    else
                    {
                        set = 1 
                        loop
                        {
                            set := set + 10
                            Iniread, newdata, status.ini,match logs , set_%set%
                            Iniread, olddata, data.ini,match logs , set_%set%
                            sa:=StrSplit(olddata, ",")
                            ,sa:= sa[1]
                            if (sa = 0 and newdata = 0)
                            {
                                test = someting is wrong with set_%set%
                                send_telegram(test)
                            }
                            finaldata = %newdata%,%olddata%
                            Iniwrite, %finaldata%, data.ini,match logs , set_%set%
                            Iniwrite, 0, status.ini,match logs , set_%set%
                            FileReadLine, ha,username.txt, %set%
                            if (ErrorLevel = 1)
                            {
                                IniWrite, 0, status.ini,match logs , left_matches
                                return
                            }
                        }
                    }
                }
            }
            else
                break
        }
        set := set - 10
        OutputDebug smart_cycle ended set is %set% `n
    }
    else
    {
        Iniread, left_matches, status.ini,match logs , left_matches
        if (left_matches= 0)
        {
            IniWrite, 1, status.ini,match logs , left_matches
        }
        else
        {
            set = 1 
            loop
            {
                set := set + 10
                Iniwrite, 0, status.ini,match logs , set_%set%
                FileReadLine, ha,username.txt, %set%
                if (ErrorLevel = 1)
                {
                    IniWrite, 0, status.ini,match logs , left_matches
                    return
                }
            }
        }

    }
}

changeaccs()
{ 
    cd = 0
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, cd_bar.png
    if (ErrorLevel = 0)
    {
        cd = 1
        swap_accs = 0
        odebug = its cd
        Iniwrite, %matchlimit%, status.ini,match logs , set_%set%
    }
    if (cd = 1 or matchcount >= matchlimit or forcere = 1)
    {
        ;run rank_checker.exe
        if (forcere = 1)
            forcere = 0
        matchcount = 0
        write_value()
        inv_code.RemoveAll()
        runwait kill_steam.bat
        runwait Taskkill /IM vac.exe /F
        time_since_last_match := ""
        Iniwrite, %swap_accs%, status.ini,SectionName , swap_accs
        if (rank_open = 1 )
            set := set - 5
        else
            smart_cycle()
        Iniread, left_matches, status.ini,match logs , left_matches
        if (left_matches= 1 and A_WDay = 4)
            IniWrite, 0, status.ini,match logs , left_matches
        if (tpid := pidListFromName("adv_rank_checker.exe"))
        {
            loop % tpid.maxindex()
                cpid:=tpid[A_Index]
            RunWait taskkill /PID %cpid% /F /T ,,hide
        }
        ;Run,adv_rank_checker.exe
        newchangeaccs()
        join = 1
        return 1
    }

}
newchangeaccs()
{
    sx1 := "24"
    ,sy1 := "255"
    ,tx1 := "33"
    ,ty1 := "350"
    ,xc := "640"
    ,yc := "480"
    ,sx1 := sx1
    ,sx2 := sx1 + xc
    ,sx3 := sx1 + xc*2
    ,sx4 := sx1 + xc*3
    ,sx5 := sx1 + xc*4
    ,sy2 := sy1 + yc
    ,sy3 := sy1 + yc*2
    ,sy4 := sy1 + yc*3
    ,tx1 := tx1
    ,tx2 := tx1 + xc
    ,tx3 := tx1 + xc*2
    ,tx4 := tx1 + xc*3
    ,tx5 := tx1 + xc*4
    ,ty2 := ty1 + yc
    ,ty3 := ty1 + yc*2
    ,ty4 := ty1 + yc*3
    ,i := "1"
    ,b := "1"
    ,a := "1"
    ,pos1 := "-x 3 -y 16"
    ,pos2 := "-x 643 -y 16"
    ,pos3 := "-x 1283 -y 16"
    ,pos4 := "-x 1923 -y 16"
    ,pos5 := "-x 2563 -y 16"
    ,pos6 := "-x 3 -y 496"
    ,pos7 := "-x 643 -y 496"
    ,pos8 := "-x 1283 -y 496"
    ,pos9 := "-x 1923 -y 496"
    ,pos10 := "-x 2563 -y 496"
    ,pos11 := "-x 3 -y 976"
    ,pos12 := "-x 643 -y 976"
    ,pos13 := "-x 1283 -y 976"
    ,pos14 := "-x 1923 -y 976"
    ,pos15 := "-x 2563 -y 976"
    ,pos16 := "-x 3 -y 1456"
    ,pos17 := "-x 643 -y 1456"
    ,pos18 := "-x 1283 -y 1456"
    ,pos19 := "-x 1923 -y 1456"
    ,pos20 := "-x 2563 -y 1456"
    ,x1 := placing("a" , "x",total_accounts_open)
    ,y1 := placing("a" , "y",total_accounts_open)
    ,x2 := placing("b" , "x",total_accounts_open)
    ,y2 := placing("b" , "y",total_accounts_open)
    ,lobbycount := ""
    ,c := "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\panorama\videos"
    if FileExist(c)
        FileRemoveDir, %c%, 1
    if set <= 0
        set = 1
    runwait kill_steam.bat
    FileDelete,currentuser.txt
    runwait Taskkill /IM vac.exe /F ,,hide
    Loop{
        FileReadLine, ha,username.txt, %set%
        if (ErrorLevel = 0 and my_mode = 15){
            v := HasVal(Primes_StartingUser, ha) 
            if (v = 1){
                set := set + 10
                odebug = %set% set is prime
                OutputDebug %set% set is prime
                Iniwrite, %matchlimit%, status.ini,match logs , set_%set%
            }
            else{
                break
            }
        }
        else{
            break
        }
    }
    Index := set
    ,i := "1"

    odebug = OPENING FROM ac %set%
    delay := set*100
    if delay < 5000
        delay = 5000
    if delay > 20000
        delay = 20000
    IfInString,A_UserName,Admin
        delay =500

    IniRead,arguments,status.ini,SectionName,arguments
    IniRead,map_name,status.ini,SectionName,map_name
    IniRead,map_command,status.ini,variable,map_command
    loop
    {
        p := pos%i%
        FileReadLine, ha,username.txt, %Index%
        if (ErrorLevel = 1)
        {
            set = 1
            if FileExist("print.exe")
                RunWait print.exe
            else
            {
                smart_cycle()
                Iniread, left_matches, status.ini,match logs , left_matches
                if (left_matches= 1 and A_WDay = 4)
                    IniWrite, 0, status.ini,match logs , left_matches
            }
            Index := set
            i = 1
            write_value()
            ;IniRead,shutdown,status.ini,SectionName,shutdown
            if(shutdown = 1)
            {
                Length := StrLen(A_UserName)
                word = % SubStr(A_UserName, Length, 1)
                send_telegram("6209 shutdown")
                sleep 3000
                if (word != 2 and A_ComputerName != "2700-PC")
                    Shutdown,6
                else
                    shutdown,0
            }
        }
        else 
        {
            while !html := ping_check()
            {
                sleep 1000
            }

            All_UserInfo[i] := ha
            ,ha := StrSplit(ha, ",")
            ,ha := ha[1]
            FileAppend,%ha%`n ,currentuser.txt
            ;OutputDebug `n  %arguments% +exec %map_name%.cfg -login %ha% %p% -low ,%steam_folder% `n
            Run,steam.exe %arguments% -login %ha% %p% -low ,%steam_folder%,,steam_pid 
            ;Run	%steam_folder%steam.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  %p%  -low 
            Start_Time := A_TickCount
            ,wait_time := A_TickCount - Start_Time
            while (wait_time < delay )
            {
                WinGetTitle, Var, Counter
                if InStr(var,"Ready") or InStr(var,"Updating")
                {
                    update_client_check("1")
                    return
                }
                ifWinExist, vac.exe
                    WinClose, vac.exe
                ifWinExist, Engine 
                {
                    send_telegram("gc crash")
                    Sleep 3000
                    Shutdown,6
                }
                ControlClick , OK, VAC bypass
                ControlClick , Close, @ Steam
                ControlClick , Close, rror
                ControlClick , Close, Steam
                ControlClick , Close, IrfanView
                ControlClick , OK, Steam
                IF Process, Exist, WerFault.exe
                    run Taskkill /IM WerFault.exe.exe /F ,,hide
                wait_time := A_TickCount - Start_Time
            }
            run wmic process where ProcessID=%steam_pid% CALL setpriority "idle" ,,hide
            steampids[i] := steam_pid
            i++
            if (i = i_value)
            {
                set := Index + 1
                break	
            }
            Index++
            Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
            if (ok:=FindText(1400, 900, 2800, 1400, 0.15, 0.15, Text))
            { 
                play_now = 1 
                update_client_check("0")
                return
            }
            ControlClick , OK, VAC bypass
            loop
            {
                IfWinExist, vac.exe
                    WinClose, vac.exe
                else
                    break
            }
        }
    }
    write_value()
    ;changeaccs()
    Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
    if (ok:=FindText(1400, 900, 2800, 1400, 0.15, 0.15, Text))
    { 
        play_now = 1 
        update_client_check("0")
        return
    }
    timer = 0
    x = 0
    exec = 0
    Start_Time := A_TickCount
    wait_time := A_TickCount - Start_Time
    while (x = 0 and wait_time < 300000 ) ; eda matlab wait kro for 
    {
        wait_time := A_TickCount - Start_Time
        videosettingfix := start_check()
        ControlClick , OK, VAC bypass
        loop
        {
            IfWinExist, vac.exe
                WinClose, vac.exe
            else
                break
        }
        IfWinExist, Guard
        {
            matchcount := matchlimit
            guard = guard_%A_UserName%
            send_telegram("guard")
            print("imp",guard,"1","lan") ; folder,comment,repeat,location
        }
        csgo_size_check()
        update_client_check("0")
        if changeaccs()
            return
        ;if (timer = 560)
        ;{
        ;break
        ;}
        Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
        if (ok:=FindText(1400, 900, 2800, 1400, 0.15, 0.15, Text))
        { 
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            MouseClick, left,%X%, %Y%,1,50,,
            sleep 500
            y := y + 60
            MouseMove x,y
            x = 0
        }
        Text:="|<cooldown>*149$41.00000007014000E0280011GZGfJ248AcKe29GNGPI7iQiQYc00000000000004"
        if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            odebug = cd lag geya yellow wala
            sleep 100
            forcere = 1
            swap_accs = 0
            changeaccs()
            return
        }
        Text:="|<hidden.play_game>*82$59.3jvjjnxvv0vTfizPpnaxqzLfxzfbBsRxrjv6vJM7vsDTrg6erjrrSzqvhJjTUTRznjfP1"
        if (ok:=FindText(2121-150, 1246-150, 2121+150, 1246+150, 0.1, 0.1, Text))
        {
            play_now = 1 
            update_client_check("0")
            return
        }
        WinGetTitle, Var, Counter
        if InStr(var,"Ready") or InStr(var,"Updating")
        {
            if (exec = 0)
            {
                update_client_check("1")
                return
            }
        }
        Text:="|<new_settings>*104$26.zzzzzz01zzU0Dzs03zy00zzU0Dzs03zy00zzU0Dz003zk00zc00Tk0Dzw03zz3kzzswTzyD7zz3kzzk0Dzw03zzc5zzz3zzzkzzzzzzzzzzzs"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2 ; , W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
            Sleep 100
            z := y - 200
            Click %X%, %z%
            x = 0
        }
        Text:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
        if (ok:=FindText(x1, y1, x2, y2, "0", "0", Text))
        {
            odebug = settings found break
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        }
        sleep 400
        timer++ 
        Text:="|<close>*115$56.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzlyAlzzzzzsH20TzzzzyImYTzzzzzbAg1zzzzztH+lzzzzzy40U7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
        num_of_clicks = 0
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            sleep 50
            Click, %X%, %Y%
            sleep 50
            Send, {esc down}
            sleep 100
            Send, {esc up}
            sleep 50
            x = 0
            MouseMove 100,100,0,r
            num_of_clicks++
            if (Mod(num_of_clicks, 50) = 0)
            {
                WinGet, var, PID, A
                RunWait taskkill /PID %var% /F /T ,,hide
                RunWait,Taskkill /FI "USERNAME eq %USERNAME%" /fi “status eq not responding” /IM csgo.exe /F /T,,hide
                ;num_of_clicks = 0
            }
            if (num_of_clicks >= 500)
                Reload
        } 
         WinGetTitle, Var, Steam Login
        OutputDebug %var% `n
                    If InStr(var,"Steam Login")
                    {
                        WinGetPos , x, y, w, h ,%var%
						OutputDebug w-%w% h=%h% `n
                        x:=w/h
						OutputDebug %x%`n
						if x < 1.42
                        {
                            Send_telegram("wrong pass","1")
                            met := set - 10
                            FileReadLine, ha,username.txt, %met%
                            FileAppend,%ha%`n, Prime_Users.ini
                            Primes_StartingUser.push(ha) ;
                            forcere = 1
                            swap_accs = 0
                            changeaccs()
                        }
                    }
        exe_update_check()
        ; x = 0 likhna jrui he ethe 
    }
    odebug = loop break
        videosettingfix := tenaccopen_check()
    ;forcere = 1
    IniRead,my_mode,status.ini,SectionName,my_mode
    tenaccopen()
    ha := All_UserInfo[1] 
    ,ha := StrSplit(ha, ",")
    if(ha[5] == ""or videosettingfix = 1)
        click_settings_then_video()
    if(my_mode == "pr2")
    {
        make_pr2_ini()
        check_for_pr1()
    }
    else
    {
        ;check_for_pr1() 
        Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /convert=rank\rank_%set%.png 
    }
    Join = 1
    write_value()
    if changeaccs()
        return
    ;FileReadLine, hh,username.txt, %set%
    ;if (ErrorLevel = 1)
    ;	{
    ;		FileCopy,%A_ScriptDir%\username.txt ,C:\Python Scripts\pythoncsgoinfo,1
    ;		Sleep 1000
    ;		run pycsgoinfo.exe ,,hide
    ;	}
    Text:="|<cooldown>*149$41.00000007014000E0280011GZGfJ248AcKe29GNGPI7iQiQYc00000000000004"
    if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        odebug = cd lag geya yellow wala
        sleep 100
        forcere = 1
        swap_accs = 0
        changeaccs()
        return
    }
    check_rank()
}
tenaccopen()
{
    read_value()
    gos()
    odebug := "CHKING IF all accs are open"
    ,sx1 := "5"
    ,sy1 := "235"
    ,tx1 := "42"
    ,ty1 := "363"
    ,xc := "640"
    ,yc := "480"
    ,sx1 := sx1
    ,sx2 := sx1 + xc
    ,sx3 := sx1 + xc*2
    ,sx4 := sx1 + xc*3
    ,sx5 := sx1 + xc*4
    ,sy2 := sy1 + yc
    ,sy3 := sy1 + yc*2
    ,sy4 := sy1 + yc*3
    ,tx1 := tx1
    ,tx2 := tx1 + xc
    ,tx3 := tx1 + xc*2
    ,tx4 := tx1 + xc*3
    ,tx5 := tx1 + xc*4
    ,ty2 := ty1 + yc
    ,ty3 := ty1 + yc*2
    ,ty4 := ty1 + yc*3
    ,i = "1"
    ,b = "1"
    ,a = "1"
    ,pos1 := "-x 3 -y 16"
    ,pos2 := "-x 643 -y 16"
    ,pos3 := "-x 1283 -y 16"
    ,pos4 := "-x 1923 -y 16"
    ,pos5 := "-x 2563 -y 16"
    ,pos6 := "-x 3 -y 496"
    ,pos7 := "-x 643 -y 496"
    ,pos8 := "-x 1283 -y 496"
    ,pos9 := "-x 1923 -y 496"
    ,pos10 := "-x 2563 -y 496"
    ,pos11 := "-x 3 -y 976"
    ,pos12 := "-x 643 -y 976"
    ,pos13 := "-x 1283 -y 976"
    ,pos14 := "-x 1923 -y 976"
    ,pos15 := "-x 2563 -y 976"
    ,pos16 := "-x 3 -y 1456"
    ,pos17 := "-x 643 -y 1456"
    ,pos18 := "-x 1283 -y 1456"
    ,pos19 := "-x 1923 -y 1456"
    ,pos20 := "-x 2563 -y 1456"
    ,Text:="|<in_match_check>0xFA2E2A@0.71$6.zznkyT3nzzU"
    ,new_settings:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
    ,new_hidden_settings:="|<new_hidden_settings>*65$25.z3kzzU0Tzk0DzxVjzzkzzzsTzzzzzzzzzzzzzzzzzzzzzzzzzzU"
    if start_check()
        videosettingfix = 1
    while (i <= total_accounts_open)
    {
        if (i = 6)
        {
            b := "2"
            ,a := "1"
        }
        else if (i = 11)
        {
            b := "3"
            ,a := "1"
        }
        else if (i = 16)
        {
            b := "4"
            ,a := "1"
        }
        sx := sx%a%
        ,sy := sy%b%
        ,tx := tx%a%
        ,ty := ty%b%
        ;ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png     
        if (ok:=FindText(sx, sy, tx,ty,"0", "0", new_settings))
        {
            ;odebug = found csgo @ position %i% in menu
        }
        else if (ok:=FindText(sx, sy, tx , ty, "0", "0", Text))
        {
            odebug = found csgo @ position %i% but in-game
            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
            Click, %X%, %Y%
            Sleep 50
            Send, {l down}
            sleep 200
            Send, {l up}
        }
        else
        {
            start_check()
            y := sy + 200
            sleep 20		
            Click, %sx%, %y%
            ;ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *100 tv.png     
            if (ok:=FindText(sx, sy, tx,ty,"0", "0", new_hidden_settings))
            {
                odebug = found csgo @ position %i% in 2nd try
                error()
            }
            else
            {
                csgo_size_check()
                ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *2 whitescreen.png
                while (ErrorLevel = 0)
                {
                    odebug = white screen @ %i%
                    FoundX := FoundX+5 ; there maybe a problem
                    ,FoundY := FoundY+6
                    Click %FoundX%, %FoundY%
                    sleep 500
                    ControlClick , close, csgo.exe
                    sleep 500
                    SendEvent, {up}
                    sleep 39
                    SendEvent, {enter}
                    Sleep 1000
                    IF Process, Exist, WerFault.exe
                        ControlClick, close, csgo.exe
                    Sleep 1000
                    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *2 whitescreen.png
                }
                odebug = cant find csgo @ position %i%
                Text:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
                if (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
                {
                    if ( ok.MaxIndex() <= 4)
                    {
                        odebug = 4 to ghat acc opened c
                        send_telegram("4 to ghat acc opened c")
                        Sleep 200
                        Run kill_steam.bat
                        Reload
                    }

                }
                steam_pid := steampids[i]
                RunWait taskkill /PID %steam_pid% /F /T
                diff := i_value - i
                if (swap_accs = 1)
                {
                    if (diff = 10)
                        diff = 5
                    else if (diff = 5)
                        diff = 10
                    else if (diff = 9)
                        diff = 4
                    else if (diff = 4)
                        diff = 9
                }
                lobby = 0
                result := set - diff
                FileReadLine, ha, username.txt, %result%
                All_UserInfo[i] := ha
                ,ha := StrSplit(ha, ",")
                ,ha := ha[1]
                p := pos%i%
                IniRead,arguments,status.ini,SectionName,arguments
                IniRead,map_name,status.ini,SectionName,map_name
                Run,steam.exe %arguments%  -login %ha% %p% -low ,%steam_folder%,,steam_pid
                ;Run	%steam_folder%steam.exe -inhibitbootstrap -single_core -login %users% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  %p% -low 
                sleep 10000
                run wmic process where ProcessID=%steam_pid% CALL setpriority "idle" ,,hide
                steampids[i] := steam_pid
                timer = 0
                ;ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png     
                while (!ok:=FindText(sx, sy, tx,ty,"0", "0", new_settings) )
                {
                    ControlClick , OK, VAC bypass
                    loop
                    {
                        ControlClick , OK, VAC bypass
                        ControlClick , Close, @ Steam
                        ControlClick , Close, Steam
                        ControlClick , close, csgo.exe
                        ControlClick , close, @ csgo.exe
                        IfWinExist, vac.exe
                            WinClose, vac.exe
                        else
                            break
                    }
                    sleep 1000
                    start_check()
                    Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
                    if (ok:=FindText(1400, 900, 2800, 1400, 0.15, 0.15, Text))
                    {
                        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                        MouseClick, left,%X%, %Y%,1,50,,
                        sleep 500
                        MouseMove 5,5
                        play_now = 1
                    }
                    if (timer = 40) ; 150 c 70 c
                    {
                        odebug = trying to open 2nd time
                        RunWait taskkill /PID %steam_pid% /F /T
                        Run,steam.exe %arguments% -login %ha% %p% -low ,%steam_folder%,,steam_pid
                        sleep 10000
                        run wmic process where ProcessID=%steam_pid% CALL setpriority "idle" ,,hide
                        steampids[i] := steam_pid
                    }
                    else if (timer = 100)
                    {
                        print("logs/cantopen","need restart?","1","lan") ; folder,comment,repeat,location
                        forcere = 1
                        odebug = unable to open in time = %timer%
                        set := set - total_accounts_open
                        changeaccs()
                        IniRead, matchcount, status.ini,match logs , set_%set%
                        break
                    }
                    timer++
                    ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png 
                }
                odebug = opened in timer = %timer%
                if (timer >= 80 and timer < 150)
                {
                    ;text = cant open in time %set% %matchcount%
                    ;send_telegram(text )
                    ;print("logs","need restart?","1","lan") ; folder,comment,repeat,location
                    ;MajorVersion := DllCall("GetVersion") & 0xFF 
                    IniRead,shutdown,status.ini,SectionName,shutdown
                    if(shutdown = 1)
                    {
                        Length := StrLen(A_UserName)
                        word = % SubStr(A_UserName, Length, 1)
                        send_telegram("6670 shutdown")
                        if (word != 2 and A_ComputerName != "2700-PC")
                            Shutdown,6
                        else
                            shutdown,0
                    }
                }

            }
        }
        i++
        ,a++
    }
    if (swap_accs = 1)
    {
        swap_accs = 2
        Iniwrite, %swap_accs%, status.ini,SectionName , swap_accs
    }
return videosettingfix
}
tenaccopen_check()
{
    odebug := "tenaccopen_check"
    ,sx1 := "5"
    ,sy1 := "235"
    ,tx1 := "42"
    ,ty1 := "363"
    ,xc := "640"
    ,yc := "480"
    ,sx1 := sx1
    ,sx2 := sx1 + xc
    ,sx3 := sx1 + xc*2
    ,sx4 := sx1 + xc*3
    ,sx5 := sx1 + xc*4
    ,sy2 := sy1 + yc
    ,sy3 := sy1 + yc*2
    ,sy4 := sy1 + yc*3
    ,tx1 := tx1
    ,tx2 := tx1 + xc
    ,tx3 := tx1 + xc*2
    ,tx4 := tx1 + xc*3
    ,tx5 := tx1 + xc*4
    ,ty2 := ty1 + yc
    ,ty3 := ty1 + yc*2
    ,ty4 := ty1 + yc*3
    ,i := "1"
    ,b := "1"
    ,a := "1"
    ,pos1 := "-x 3 -y 16"
    ,pos2 := "-x 643 -y 16"
    ,pos3 := "-x 1283 -y 16"
    ,pos4 := "-x 1923 -y 16"
    ,pos5 := "-x 2563 -y 16"
    ,pos6 := "-x 3 -y 496"
    ,pos7 := "-x 643 -y 496"
    ,pos8 := "-x 1283 -y 496"
    ,pos9 := "-x 1923 -y 496"
    ,pos10 := "-x 2563 -y 496"
    ,pos11 := "-x 3 -y 976"
    ,pos12 := "-x 643 -y 976"
    ,pos13 := "-x 1283 -y 976"
    ,pos14 := "-x 1923 -y 976"
    ,pos15 := "-x 2563 -y 976"
    ,pos16 := "-x 3 -y 1456"
    ,pos17 := "-x 643 -y 1456"
    ,pos18 := "-x 1283 -y 1456"
    ,pos19 := "-x 1923 -y 1456"
    ,pos20 := "-x 2563 -y 1456"
    ,new_settings:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
    if start_check()
        videosettingfix = 1
    while (i <= total_accounts_open)
    {
        if (i = 6)
        {
            b := "2"
            ,a := "1"
        }
        else if (i = 11)
        {
            b := "3"
            ,a := "1"
        }
        else if (i = 16)
        {
            b := "4"
            ,a := "1"
        }
        sx := sx%a%
        ,sy := sy%b%
        ,tx := tx%a%
        ,ty := ty%b%
        ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png 
        if (errorlevel != 0)
        {

            ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *100 tv.png 
            if (errorlevel = 0)
            {
                odebug = found csgo @ position %i% in 2nd try
            }
            else
            {
                odebug = cant find csgo @ position %i%
                Text:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs"
                if (ok:=FindText(0, 0, 3200, 960, 0, 0, Text))
                {
                    if ( ok.MaxIndex() <= 4)
                    {
                        odebug = 4 to ghat acc opened c
                        send_telegram("4 to ghat acc opened c")
                        Sleep 200
                        Run kill_steam.bat
                        Reload
                    }
                    if !html := ping_check()
                    {
                        return
                    }
                    else
                        sleep 20000 ; j kuj na labea 
                }
            }
        }
        i++
        ,a++
    }
return videosettingfix
}
exe_update_check()
{
    ifinstring A_username , Administrator
        {}
    else
    {
        b = C:\Users\%A_Username%\Google Drive\file share
        if !FileExist(b)
            b = C:\Users\%A_Username%\Documents\share\file share
        if !FileExist(b)
            b = C:\Users\Administrator\Google Drive\file share
        if !FileExist(b)
            b = C:\Users\Admin\Google Drive\file share
        OutputDebug %b%

        FileGetTime, globalfile ,%b%\stable.exe
        FileGetTime, localfile , stable.exe
        if (globalfile > localfile)
        {
            send_telegram ("updating script")
            sleep 3000
            run, autostart.exe,%a_scriptdir%
            tpid := pidListFromName("telegram.exe")
            cpid := tpid[1]
            RunWait taskkill /PID %cpid% /F /T ,,hide
            tpid := pidListFromName("host.exe")
            cpid := tpid[1]
            RunWait taskkill /PID %cpid% /F /T ,,hide
            ExitApp
        }

    }
}
send_telegram(strings,pic := "0")
{
    IniWrite,%strings%,status.ini,tele_notes,msg
    IfInString,strings,cd
        pic = 1
    if pic = 0
    {
        send {alt down}
        Sleep 50
        send {g}
        Sleep 50
        send {alt up}
    }
    else
    {
        RunWait, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /silent /convert= %A_ScriptDir%\telegram\1.png
        location = %A_ScriptDir%\telegram\1.png
        IniWrite,%location%,status.ini,tele_notes,pic
        send {alt down}
        Sleep 50
        send {a}
        Sleep 50
        send {alt up}

    }
}
check_rank()
{
    error()
    Run,net use \\2700-PC\c ' /user:Administrator /persistent:yes /savecred ,,Hide
    b = C:\Users\%A_Username%\Google Drive\file share
    if !FileExist(b)
        b = C:\Users\%A_Username%\Documents\share\file share
    if !FileExist(b)
        b = C:\Users\Administrator\Google Drive\file share
    if !FileExist(b)
        b = C:\Users\Admin\Google Drive\file share
    if !FileExist(b)
        return
    file_write1 = !%b%\%A_UserName%\Output.csv
    file_write2 := "!username.txt"
    ,folder := b
    ,odebug :="CHKING ranks and pr"
    ,myrank :=[]
    ,mypr :=[]
    ,rankk:=[]
    ,prk:=[]
    ;	     ,tx1 := "639"
    ; ,ty1 := "89"
    ,indexing := set - total_accounts_open
    ,sx1 := "603"
    ,sy1 := "56"
    ,tx1 := "640"
    ,ty1 := "105"
    ,xc := "640"
    ,yc := "480"
    ,sx1 := sx1
    ,sx2 := sx1 + xc
    ,sx3 := sx1 + xc*2
    ,sx4 := sx1 + xc*3
    ,sx5 := sx1 + xc*4
    ,sy2 := sy1 + yc
    ,sy3 := sy1 + yc*2
    ,sy4 := sy1 + yc*3
    ,tx1 := tx1
    ,tx2 := tx1 + xc
    ,tx3 := tx1 + xc*2
    ,tx4 := tx1 + xc*3
    ,tx5 := tx1 + xc*4
    ,ty2 := ty1 + yc
    ,ty3 := ty1 + yc*2
    ,ty4 := ty1 + yc*3
    ,i = "1"
    ,b = "1"
    ,a = "1"
    ,pos1 := "-x 3 -y 16"
    ,pos2 := "-x 643 -y 16"
    ,pos3 := "-x 1283 -y 16"
    ,pos4 := "-x 1923 -y 16"
    ,pos5 := "-x 2563 -y 16"
    ,pos6 := "-x 3 -y 496"
    ,pos7 := "-x 643 -y 496"
    ,pos8 := "-x 1283 -y 496"
    ,pos9 := "-x 1923 -y 496"
    ,pos10 := "-x 2563 -y 496"
    ,pos11 := "-x 3 -y 976"
    ,pos12 := "-x 643 -y 976"
    ,pos13 := "-x 1283 -y 976"
    ,pos14 := "-x 1923 -y 976"
    ,pos15 := "-x 2563 -y 976"
    ,pos16 := "-x 3 -y 1456"
    ,pos17 := "-x 643 -y 1456"
    ,pos18 := "-x 1283 -y 1456"
    ,pos19 := "-x 1923 -y 1456"
    ,pos20 := "-x 2563 -y 1456"
    ,countr := "0"
    ,countp := "0"
    ,errorlevel := "1"
    ,Text:="|<new_settings>*119$14.VsQSD7XVsM0601q6zVzsTzzs" ; are we home screen
    if (ok:=FindText(0, 0, 3200, 1920, 0.1, 0.1, Text))
    {
        for j,v in ok
        {
            Xas :=ok[j].x , Yas :=ok[j].y
            ,Yas := Yas + 50
            ;OutputDebug Xas=%Xas% , Yas=%Yas% `n
            MouseMove, %Xas%, %Yas%, 0
            sleep 500
        }			
    }
    Loop, Files, %folder%\z_extra\rank\*.png
    {
        word_array := StrSplit(A_LoopFileName, ".","." )
        ,rank_name := word_array[1]
        ,myrank [A_Index] :=rank_name
    }
    Loop, Files,%folder%\z_extra\pr\*.png
    {
        word_array := StrSplit(A_LoopFileName, ".","." )
        ,rank_name := word_array[1]
        ,mypr [A_Index] :=rank_name
    }
    while (i <= total_accounts_open)
    {
        if (i = 6)
        {
            b := "2"
            ,a := "1"
        }
        else if (i = 11)
        {
            b := "3"
            ,a := "1"
        }
        else if (i = 16)
        {
            b := "4"
            ,a := "1"
        }
        sx := sx%a%
        ,sy := sy%b%
        ,tx := tx%a%
        ,ty := ty%b%
        for index, element in myrank
        {
            ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *5 %folder%\z_extra\rank\%element%.png
            if (errorlevel = 0)
            {
                If InStr(element,"black")
                    break
                else
                    rankk[i] := element
                ;OutputDebug `n % prk[%i%]% ;posi = %i% rank %element%
                break
            }
        }
        if (errorlevel = 3) ;errorlevel = 1 testing
        {
            countr++
            Random,rand,1000,9999
            cx := sx + 3
            cy := sy + 36
            TargetFileServer = /crop=(%cx%, %cy%, 33, 11,0)
            Runwait, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 %TargetFileServer% /silent /convert=\\2700-PC\c\DLL\rank1\%A_UserName%_%rand%_%A_TickCount%.png
            ;Sleep 2000
        }
        for index, element in mypr
        {
            ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *15 %folder%\z_extra\pr\%element%.png
            if (errorlevel = 0)
            {
                If InStr(element,"black")
                    break
                else
                    prk[i] := element
                ;OutputDebug `n % prk[%i%] ; posi = %i% pr %element%
                break
            }
        }
        if (errorlevel = 3) ;errorlevel = 1 testing
        {
            countp++
            Random,rand,1000,9999
            cx := sx + 1
            ,cy := sy + 1
            TargetFileServer = /crop=(%cx%, %cy%, 34, 31,0)
            Runwait, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 %TargetFileServer% /silent /convert=\\2700-PC\c\DLL\pr1\%A_UserName%_%rand%_%A_TickCount%.png
            ;Sleep  2000
        }
        i++
        ,a++
    }
    Str := ""
    loop,% total_accounts_open
        ;For Index, Value In All_UserInfo
    {
        ha := All_UserInfo[A_Index] 
        ,sa := StrSplit(ha, ",")
        while(sa.MaxIndex()< 7)
        {
            ha = %ha%,
            ;OutputDebug  ha=%ha% `n
            sa := StrSplit(ha, ",")
            ok := sa.MaxIndex()
            ;OutputDebug  count=%ok% `n
        }
        ;,nana1 := ha[1] ; user pass
        ;,nana2 := rankk[A_Index] ; rank
        ;,nana3 := prk[A_Index] ; pr
        ;,nana5 := ha[4] ; inv code
        ;,nana6 := ha[5] ; video settings
        ;,nana7 := ha[6]
        ;final = %nana1%,%nana2%,%nana3%,%nana4%,%nana5%,%nana6%,%nana7%,
        ha := StrSplit(ha, ",")
        ,ha[2] := rankk[A_Index] ; rank
        ,ha[3] := prk[A_Index] ; pr
        ,ha[5] := "yes" ; video setings
        ,Str := ""
        For Index, Value In ha
            Str .= "," . Value
        Str := LTrim(Str, ",") ; 
        OutputDebug `n %Str%
        ha := Str
        All_UserInfo[A_Index] := ha
        if (swap_accs = 0)
        {
            TF_ReplaceLine(file_write2,indexing,indexing,str)
            TF_ReplaceLine(file_write1,indexing,indexing,Str )
        }
        indexing++
    }
    odebug = %countr% ranks and, %countp% new pr found
}
click_settings_then_video()
{
    odebug = video settings
    Text:="|<setting>*127$16.zzzwDzkzv3T00w03kwDXlyD7kwD00w03v3TwDzkzzzy"
    while(ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            Click, %Xas%, %Yas%
        }
        sleep 500
        break_here++
        if (break_here > 5)
            break
    }
    Text:="|<video>*82$32.zzzzzzv7TzzyFbzzzY00Tzw007zz801zzm00Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000DzzzzzzzzzzU"
    while(ok:=FindText(0, 0, 3200, 1920, 0.01, 0.01, Text))
    {
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            Click, %Xas%, %Yas%
        }
        sleep 500
        break_here++
        if (break_here >5 )
            break

    }
    Text:="|<settings_auto>*105$18.ro8aI0WKGeKG2KGM6EU"
    if (ok:=FindText(0, 0, 3200, 1920, 0.01, 0.01, Text))
    {
        odebug = video settings on high
        Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
        while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
        {
            for i,v in ok
            {
                Xas :=ok[i].x , Yas :=ok[i].y
                Click, %Xas%, %Yas%
            }
            sleep 500
            break_here++
            if (break_here > 5)
                break
        }
        RunWait, video.bat, %steam_folder%userdata
        odebug = video settings fixed
        ;send_telegram("video settings fixed")
        click_settings_then_video()
    }

    Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
    while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            Click, %Xas%, %Yas%
        }
        sleep 500
        break_here++
        if (break_here > 5)
            break
    }
    Text:="|<hidden_settings>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
    while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
        ok:=FindText(0, 0, 3200, 1920, 0, 0, Text)
        for i,v in ok
        {
            Xas :=ok[i].x , Yas :=ok[i].y
            Click, %Xas%, %Yas%
        }
        sleep 500
        break_here++
        if (break_here > 5)
            break
        Text:="|<hidden_settings>*24$14.7znvwQz63kUQMDD7ljM3k0M8"
    }

}
mode_change()
{
    if (my_mode != 16)
    {
        do1614 = 0
        Text:="|<unranked>*70$17.zzzzzw007zzzsTzUTzAzztzz7zyTzzzzvzU"
        if (ok:=FindText(0, 0, 3200, 960, 0.1, 0.1, Text))
        {
            if matchlimit = 14
                matchlimit = 16
            newmatchcount := matchlimit - 2
            if (matchcount >= newmatchcount)
                do1614 = 1
        }
        else
        {
            IniRead, matchlimit, status.ini,SectionName , matchlimit
        }
        IniRead, more_wins, status.ini,SectionName , more_wins
        if (more_wins = 1)
            do1614 = 1
        oDebug = limit>%matchlimit%, do1614>%do1614%
    }
    outputDebug limit-%matchlimit%, do1614-%do1614%
}
crash_check()
{
    ;odebug = crash check
    sx1 := "250"
    ,sy1 := "188"
    ,tx1 := "368"
    ,ty1 := "294"
    ,xc := "640"
    ,yc := "480"
    ,sx1 := sx1
    ,sx2 := sx1 + xc
    ,sx3 := sx1 + xc*2
    ,sx4 := sx1 + xc*3
    ,sx5 := sx1 + xc*4
    ,sy2 := sy1 + yc
    ,sy3 := sy1 + yc*2
    ,sy4 := sy1 + yc*3
    ,tx1 := tx1
    ,tx2 := tx1 + xc
    ,tx3 := tx1 + xc*2
    ,tx4 := tx1 + xc*3
    ,tx5 := tx1 + xc*4
    ,ty2 := ty1 + yc
    ,ty3 := ty1 + yc*2
    ,ty4 := ty1 + yc*3
    ,i := "1"
    ,b := "1"
    ,a := "1"
    ,pos1 := "-x 3 -y 16"
    ,pos2 := "-x 643 -y 16"
    ,pos3 := "-x 1283 -y 16"
    ,pos4 := "-x 1923 -y 16"
    ,pos5 := "-x 2563 -y 16"
    ,pos6 := "-x 3 -y 496"
    ,pos7 := "-x 643 -y 496"
    ,pos8 := "-x 1283 -y 496"
    ,pos9 := "-x 1923 -y 496"
    ,pos10 := "-x 2563 -y 496"
    ,pos11 := "-x 3 -y 976"
    ,pos12 := "-x 643 -y 976"
    ,pos13 := "-x 1283 -y 976"
    ,pos14 := "-x 1923 -y 976"
    ,pos15 := "-x 2563 -y 976"
    ,pos16 := "-x 3 -y 1456"
    ,pos17 := "-x 643 -y 1456"
    ,pos18 := "-x 1283 -y 1456"
    ,pos19 := "-x 1923 -y 1456"
    ,pos20 := "-x 2563 -y 1456"
    delay := "15000"
    while (i <= total_accounts_open)
    {
        if (i = 6)
        {
            b := "2"
            ,a := "1"
        }
        if (i = 11)
        {
            b := "3"
            ,a := "1"
        }
        if (i = 16)
        {
            b := "4"
            ,a := "1"
        }
        sx := sx%a%
        ,sy := sy%b%
        ,tx := tx%a%
        ,ty := ty%b%
        ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *3 crash.png 
        if (errorlevel = 0)
        {
            odebug = csgo %i% is not running
            rerun := "1"
            ,delay := delay+15000
            ,diff := i_value - i
            ,result := set - diff
            FileReadLine, ha, username.txt, %result%
            ,ha := StrSplit(ha, ",")
            ,ha := ha[1]
            ,p := pos%i%
            IniRead,arguments,status.ini,SectionName,arguments
            IniRead,map_name,status.ini,SectionName,map_name
            Run,steam.exe %arguments%  -login %ha% %p% -low ,%steam_folder%,,steam_pid
            ;Run %steam_folder%steam.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe -d3d9ex -nocrashdialog -h 480 -w 640 %p% -low 
            Sleep %delay%
            run wmic process where ProcessID=%steam_pid% CALL setpriority "idle" ,,hide
            steampids[i] := steam_pid
            StartTime := A_TickCount
            ElapsedTime := A_TickCount - StartTime
            de := delay/1000
            odebug = sleep for %de%sec
                while ( ElapsedTime < delay)
            {
                ControlClick , OK, VAC bypass
                loop
                {
                    ControlClick , OK, VAC bypass
                    ControlClick , Close, @ Steam
                    IF Process, Exist, WerFault.exe
                        run Taskkill /IM WerFault.exe.exe /F ,,hide
                    IfWinExist, vac.exe
                        WinClose, vac.exe
                    else
                        break
                }
                ElapsedTime := A_TickCount - StartTime
                Text:="|<ok>*111$11.zzXq4ActFmXV/zy"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    MouseGetPos, xpos, ypos 
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    while (x!=0)
                    {
                        Click, %X%, %Y%
                        MouseMove, xpos, ypos
                        sleep 100
                        Click, %X%, %Y%
                        MouseMove, xpos, ypos
                        if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                        {
                            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                        }
                        else
                        {
                            x = 0
                        }
                    }
                }
                Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                }
                Text:="|<play>*136$24.zs7zzU1zy00Tw00Ds007k003k003U001U401070007k007w007y007k00700U401U001k003k003s007w00Dy00TzU1zzs7zU"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                }
                ;Text:="|<deathmatch>*86$45.zzzzzzzz7zvzzzTkztDzntyI000003mU10820SI0810G3kU40880Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000007zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw"
                ;while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                ;{
                ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                ;Click, %X%, %Y%
                ;}
                ;Text:="|<dust 11>*95$32.zzzzzsDzvs6tT4TPiK17qvZVvxitN6zPiqQjqsQ0Ms7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
                ;while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                ;{
                ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                ;Click, %X%, %Y%
                ;}
                Text:="|<go>*68$15.1s870AtVzA8tU7AAtU700s4"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    MouseClick, left, %X%, %Y%
                }
                Text:="|<go>*69$17.zzz1sC1kAnaNzAmCNUQnAta1kA3UTzzk"
                while (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    MouseClick, left, %X%, %Y%
                }
            }
        }
        else
        {
            ;odebug =   csgo  %i% is running
        }
        i++
        ,a++
    }
    if (rerun =1)
    {
        run walkbot ,, hide
        rerun = 0
        return
        ;Sleep %delay%
        pids := pidListFromName("csgo.exe")
        value1 := pids[1]
        ,value2 := pids[2]
        ,value3 := pids[3]
        ,value4 := pids[4]
        ,value5 := pids[5]
        ,value6 := pids[6]
        ,value7 := pids[7]
        ,value8 := pids[8]
        ,value9 := pids[9]
        ,value10 := pids[10]
        ,value11 := pids[11]
        ,value12 := pids[12]
        ,value13 := pids[13]
        ,value14 := pids[14]
        ,value15 := pids[15]
        ,value16 := pids[16]
        ,value17 := pids[17]
        ,value18 := pids[18]
        ,value19 := pids[19]
        ,value20 := pids[20]
        avalue :=[]
        loop, Read,injected.ini
        {
            avalue.push(A_LoopReadLine) ; 
        }
        FileDelete injected.ini
        ;odebug = %pids%
        ;odebug = %pids0%
        i = 1
        Loop %total_accounts_open%
        {
            apid := value%i%
            ;odebug = %apid%
            if (apid = "")
            {
                odebug = done injecting total %i%
                return
            }
            v := HasVal(avalue, apid) 
            odebug = v=%v%
            if (v = 0)
            {
                Run Injector.exe -p %apid% -i aa.dll
            }
            FileAppend, %apid% `n, injected.ini
            i++
        }
    }
}
hasVal(haystack, needle) {
    if(!isObject(haystack))
        return false
    if(haystack.Length()==0)
        return false
    for k,v in haystack
        if(v==needle)
        return true
return false
}
csgo_size_check()
{
    Text:="|<waddi khul gi>*95$49.0TzzU0000Dzzk00007zzs00003zzzzw001zzzzy000zzzzz000TzzzzU00Dzzzzzzk7zzzzzzs3zzzzzzw1zzzzzzy0zzzzzzz0TzzzzzzUDzzzzzzk7zzzzzzs3zzzzzzw1zzzzy000zzzzz000TzzzzU00Dzzzzk007zzzzs003zzw00001zzy00000zzz00000TzzU000E"
    if (ok:=FindText(0, 0, 3200, 1920, 0, 0, Text))
    {
        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        Click, %X%, %Y%
        sleep 100 
        SendRaw,``
        sleep 200
        SendRaw,`mat_setvideomode 320 240 1
        sleep 100
        send {enter}
        sleep 5000
        SendRaw,`mat_setvideomode 640 480 1
        sleep 100
        send {enter}
        sleep 5000
        Sendraw, ``
        sleep 200
    }
}
write_value()
{
    IniWrite, %set%, status.ini,SectionName, set
    IniWrite, %matchcount%, status.ini,SectionName, matchcount
}
read_value()
{
    IniRead, set, status.ini,SectionName , set
    IniRead, matchcount, status.ini,SectionName , matchcount
    IniRead, rounddelay, status.ini,SectionName , rounddelay
    IniRead, reconnectdelay, status.ini,SectionName , reconnectdelay
    IniRead, reconnectdelay1, status.ini,SectionName , reconnectdelay1
    IniRead, total_accounts_open, status.ini,SectionName , total_accounts_open
    IniRead, matchlimit, status.ini,SectionName , matchlimit
    IniRead, steam_folder, status.ini,SectionName , steam_folder
}

print(folder,comment,repeat,location) ; folder,comment,repeat,location
{
    IniRead, print, status.ini,variable_list , print
    if(print = 1)
    {
        if (repeat = 1)
            repeat = %A_TickCount%
        if (location == "lan")
            location = \\2700-PC\c\DLL
        else
            location = %A_ScriptDir%
        Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /silent /convert=%location%\%folder%\%comment%_%set%_%matchcount%_%repeat%_%A_UserName%.png
    }
    else
    {
        IniWrite, 0, status.ini,variable_list, print
    }
    ;Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /convert=ranks\set_%set%.match_%matchcount%_$U(`%Y-`%m-`%d_`%H`%M`%S).png
}
placing(one , two , num ) ; one(a = start point b = end point c = center point) two (x or y)
{
    place_1_a_x := "3" 
    ,place_1_b_x := "643"
    ,place_1_c_x := "323"

    ,place_1_a_y := "16"
    ,place_1_b_y := "496"
    ,place_1_c_y := "248"

    ,place_2_a_x := "643"
    ,place_2_b_x := "1283"
    ,place_2_c_x := "963"

    ,place_2_a_y := "16"
    ,place_2_b_y := "496"
    ,place_2_c_y := "248"

    ,place_3_a_x := "1283"
    ,place_3_b_x := "1923"
    ,place_3_c_x := "1603"

    ,place_3_a_y := "16"
    ,place_3_b_y := "496"
    ,place_3_c_y := "248"

    ,place_4_a_x := "1923"
    ,place_4_b_x := "2563"
    ,place_4_c_x := "2243"

    ,place_4_a_y := "16"
    ,place_4_b_y := "496"
    ,place_4_c_y := "248"

    ,place_5_a_x := "2563"
    ,place_5_b_x := "3203"
    ,place_5_c_x := "2883"

    ,place_5_a_y := "16"
    ,place_5_b_y := "496"
    ,place_5_c_y := "248"

    ,place_6_a_x := "3"
    ,place_6_b_x := "643"
    ,place_6_c_x := "323"

    ,place_6_a_y := "496"
    ,place_6_b_y := "976"
    ,place_6_c_y := "728"

    ,place_7_a_x := "643"
    ,place_7_b_x := "1283"
    ,place_7_c_x := "963"

    ,place_7_a_y := "496"
    ,place_7_b_y := "976"
    ,place_7_c_y := "728"

    ,place_8_a_x := "1283"
    ,place_8_b_x := "1923"
    ,place_8_c_x := "1603"

    ,place_8_a_y := "496"
    ,place_8_b_y := "976"
    ,place_8_c_y := "728"

    ,place_9_a_x := "1923"
    ,place_9_b_x := "2563"
    ,place_9_c_x := "2243"

    ,place_9_a_y := "496"
    ,place_9_b_y := "976"
    ,place_9_c_y := "728"

    ,place_10_a_x := "2563"
    ,place_10_b_x := "3203"
    ,place_10_c_x := "2883"

    ,place_10_a_y := "496"
    ,place_10_b_y := "976"
    ,place_10_c_y := "728"

    ,place_11_a_x := "3"
    ,place_11_b_x := "643"
    ,place_11_c_x := "323"

    ,place_11_a_y := "976"
    ,place_11_b_y := "1456"
    ,place_11_c_y := "1208"

    ,place_12_a_x := "643"
    ,place_12_b_x := "1283"
    ,place_12_c_x := "963"

    ,place_12_a_y := "976"
    ,place_12_b_y := "1456"
    ,place_12_c_y := "1208"

    ,place_13_a_x := "1283"
    ,place_13_b_x := "1923"
    ,place_13_c_x := "1603"

    ,place_13_a_y := "976"
    ,place_13_b_y := "1456"
    ,place_13_c_y := "1208"

    ,place_14_a_x := "1923"
    ,place_14_b_x := "2563"
    ,place_14_c_x := "2243"

    ,place_14_a_y := "976"
    ,place_14_b_y := "1456"
    ,place_14_c_y := "1208"

    ,place_15_a_x := "2563"
    ,place_15_b_x := "3203"
    ,place_15_c_x := "2883"

    ,place_15_a_y := "976"
    ,place_15_b_y := "1456"
    ,place_15_c_y := "1208"

    ,place_16_a_x := "3"
    ,place_16_b_x := "643"
    ,place_16_c_x := "323"

    ,place_16_a_y := "1456"
    ,place_16_b_y := "1936"
    ,place_16_c_y := "1688"

    ,place_17_a_x := "643"
    ,place_17_b_x := "1283"
    ,place_17_c_x := "963"

    ,place_17_a_y := "1456"
    ,place_17_b_y := "1936"
    ,place_17_c_y := "1688"

    ,place_18_a_x := "1283"
    ,place_18_b_x := "1923"
    ,place_18_c_x := "4603"

    ,place_18_a_y := "1456"
    ,place_18_b_y := "1936"
    ,place_18_c_y := "1688"

    ,place_19_a_x := "1923"
    ,place_19_b_x := "2563"
    ,place_19_c_x := "2243"

    ,place_19_a_y := "1456"
    ,place_19_b_y := "1936"
    ,place_19_c_y := "1688"

    ,place_20_a_x := "2563"
    ,place_20_b_x := "3203"
    ,place_20_c_x := "2883"

    ,place_20_a_y := "1456"
    ,place_20_b_y := "1936"
    ,place_20_c_y := "1688"
    this := place_%num%_%one%_%two%
return this
}

Class Convert {
    Class TickCount {
        toDays(count:=False){
            Return Floor(Mod((((((count:=count?count:A_TickCount)/1000)/60)/60)/24),24))
        }
        Days(count:=False){
            Return Floor(((((count:=count?count:A_TickCount)/1000)/60)/60)/24)
        }
        toHours(count:=False){
            Return Floor(Mod(Mod(((((count:=count?count:A_TickCount)/1000)/60)/60),60),24))
        }
        Hours(count:=False){
            Return Floor(((((count:=count?count:A_TickCount)/1000)/60)/60))
        }
        toMinutes(count:=False){
            Return Floor(Mod((((count:=count?count:A_TickCount)/1000)/60),60))
        }
        Minutes(count:=False){
            Return Floor((((count:=count?count:A_TickCount)/1000)/60))
        }
        toSeconds(count:=False){
            Return Floor(Mod(((count:=count?count:A_TickCount)/1000),60))
        }
        Seconds(count:=False){
            Return Floor(((count:=count?count:A_TickCount)/1000))
        }
        toDisplay(count:=False){
            count:=count?count:A_TickCount
            d:=Convert.TickCount.toDays(count)
            h:=Convert.TickCount.toHours(count)
            m:=Convert.TickCount.toMinutes(count)
            s:=Convert.TickCount.toSeconds(count)
            Return		"Days" A_Tab "Hours" A_Tab "Minutes" A_Tab "Seconds`n" 
            .	 d A_Tab h A_Tab m A_Tab s "`nSince Windows Boot."
        }
        toFile(count:=False){
            count:=count?count:A_TickCount
            d:=Convert.TickCount.toDays(count)
            h:=Convert.TickCount.toHours(count)
            m:=Convert.TickCount.toMinutes(count)
            s:=Convert.TickCount.toSeconds(count)		
            Return d ":" h ":" m ":" s
        }
    }
}

pidListFromName(name) {

    static wmi := ComObjGet("winmgmts:\\.\root\cimv2")

    if (name == "")
        return

    PIDs := []
    for Process in wmi.ExecQuery("SELECT * FROM Win32_Process WHERE Name = '" name "'" )
    {
        hr :=Process.processId
        VarSetCapacity(var, 24, 0), vref := ComObject(0x400C, &var)
        Process.GetOwner(vref, "")
        vOwner := vref[]
        if vOwner = %A_UserName%
            PIDs.Push(Process.processId)
    }
return PIDs 
}

box1() {
    get :=ocr([sx1,sy1,l,b])
} 
box2() { 
    get :=ocr([sx2,sy1,l,b]) 
} 
box3() { 
    get :=ocr([sx3,sy1,l,b]) 
} 
box4() { 
    get :=ocr([sx4,sy1,l,b]) 
} 
box5() { 
    get :=ocr([sx5,sy1,l,b]) 
} 
box6() { 
    get :=ocr([sx1,sy2,l,b]) 
} 
box7() { 
    get :=ocr([sx2,sy2,l,b]) 
} 
box8() { 
    get :=ocr([sx3,sy2,l,b]) 
} 
box9() { 
    get :=ocr([sx4,sy2,l,b]) 
} 
box10(){ 
    get :=ocr([sx5,sy2,l,b]) 
}

ping_check()
{
    k =
    Server = www.steamcommunity.com ; network server name/ip
    ServerDown = ; clearing out variable

    ;Settimer, ServerCheck, 5000  ; currently set to 5 secs for testing

    ;ServerCheck:
    Target = %Server% -n 1 -w 250 
    loop, 3
    {
            Runwait, %comspec% /c ping %Target% > Ping.log, , Hide
            sleep 80
            FileRead, FileContent, Ping.log 
             sleep 80
            If InStr(FileContent,"Reply from")
            ;If FileContent not contains Reply from ; or another error 
                {
                    k = 1
                    break
                }
            Else
                {
                    sleep 1000
                   OutputDebug `n ServerDown=%ServerDown%
                    ServerDown++ ; increments up the timeout count
                    ;MsgBox, %Server% is up  ; for testing
                    ;ServerDown = ; clears the timeout count in case there was any on it
                }
    }
    if (serverdown = 3)
    {
                IniRead,currentgateway,status.ini,variable,currentgateway
        IniRead,defaultgateway,status.ini,variable,defaultgateway
        if currentgateway = 192.168.178.1
        {
            Run, *RunAs %ComSpec% /c route -p change 0.0.0.0 mask 0.0.0.0 192.168.178.6,,hide
            currentgateway =  192.168.178.6
        }
        Else
        {
            Run, *RunAs %ComSpec% /c route -p change 0.0.0.0 mask 0.0.0.0 192.168.178.1,,hide
            currentgateway =  192.168.178.1
        }
        IniWrite,%currentgateway%,status.ini,variable,currentgateway
    }
    FileDelete, Ping.log
Return k
}
RunAsAdmin() {
    Global 0
IfEqual, A_IsAdmin, 1, Return 0
Loop, %0%
    params .= A_Space . %A_Index%
DllCall("shell32\ShellExecute" (A_IsUnicode ? "":"A"),uint,0,str,"RunAs",str,(A_IsCompiled ? A_ScriptFullPath
: A_AhkPath),str,(A_IsCompiled ? "": """" . A_ScriptFullPath . """" . A_Space) params,str,A_WorkingDir,int,1)
ExitApp
}

FindText( x1, y1, x2, y2, err1, err0, text, ScreenShot:=1
, FindAll:=1, JoinText:=0, offsetX:=20, offsetY:=10 )
{
    local
    SetBatchLines, % (bch:=A_BatchLines)?"-1":"-1"
    x:=(x1<x2 ? x1:x2), y:=(y1<y2 ? y1:y2)
    , w:=Abs(x2-x1)+1, h:=Abs(y2-y1)+1
    , FindText_xywh2xywh(x,y,w,h,x,y,w,h,zx,zy,zw,zh)
    if (w<1 or h<1)
    {
        SetBatchLines, %bch%
        return 0
    }
    bits:=FindText_GetBitsFromScreen(x,y,w,h,ScreenShot,zx,zy,zw,zh)
    sx:=x-zx, sy:=y-zy, sw:=w, sh:=h, arr:=[], info:=[]
    Loop, Parse, text, |
        if IsObject(j:=FindText_PicInfo(A_LoopField))
        info.Push(j)
    if (!(num:=info.MaxIndex()) or !bits.1)
    {
        SetBatchLines, %bch%
        return 0
    }
    VarSetCapacity(input, num*7*4), k:=0
    Loop, % num
        k+=Round(info[A_Index].2 * info[A_Index].3)
    VarSetCapacity(s1, k*4), VarSetCapacity(s0, k*4)
    , VarSetCapacity(gs, sw*sh), VarSetCapacity(ss, sw*sh)
    , allpos_max:=(FindAll ? 1024 : 1)
    , VarSetCapacity(allpos, allpos_max*4)
    Loop, 2
    {
        if (err1=0 and err0=0) and (num>1 or A_Index>1)
            err1:=0.1, err0:=0.05
        if (JoinText)
        {
            j:=info[1], mode:=j.8, color:=j.9, n:=j.10
            , w1:=-1, h1:=j.3, comment:="", v:="", i:=0
            Loop, % num
            {
                j:=info[A_Index], w1+=j.2+1, comment.=j.11
                Loop, 7
                    NumPut((A_Index=1 ? StrLen(v)
                    : A_Index=6 and err1 and !j.12 ? Round(j.4*err1)
                    : A_Index=7 and err0 and !j.12 ? Round(j.5*err0)
                : j[A_Index]), input, 4*(i++), "int")
                v.=j.1
            }
            ok:=FindText_PicFind( mode,color,n,offsetX,offsetY
                , bits,sx,sy,sw,sh,gs,ss,v,s1,s0
            , input,num*7,allpos,allpos_max )
            Loop, % ok
                pos:=NumGet(allpos, 4*(A_Index-1), "uint")
            , rx:=(pos&0xFFFF)+zx, ry:=(pos>>16)+zy
            , arr.Push( {1:rx, 2:ry, 3:w1, 4:h1
            , x:rx+w1//2, y:ry+h1//2, id:comment} )
        }
        else
        {
            For i,j in info
            {
                mode:=j.8, color:=j.9, n:=j.10, comment:=j.11
                , w1:=j.2, h1:=j.3, v:=j.1
                Loop, 7
                    NumPut((A_Index=1 ? 0
                    : A_Index=6 and err1 and !j.12 ? Round(j.4*err1)
                    : A_Index=7 and err0 and !j.12 ? Round(j.5*err0)
                : j[A_Index]), input, 4*(A_Index-1), "int")
                ok:=FindText_PicFind( mode,color,n,offsetX,offsetY
                    , bits,sx,sy,sw,sh,gs,ss,v,s1,s0
                , input,7,allpos,allpos_max )
                Loop, % ok
                    pos:=NumGet(allpos, 4*(A_Index-1), "uint")
                , rx:=(pos&0xFFFF)+zx, ry:=(pos>>16)+zy
                , arr.Push( {1:rx, 2:ry, 3:w1, 4:h1
                , x:rx+w1//2, y:ry+h1//2, id:comment} )
                if (ok and !FindAll)
                    Break
            }
        }
        if (err1=0 and err0=0 and num=1 and !arr.MaxIndex())
        {
            k:=0
            For i,j in info
                k+=(!j.12)
            if (k=0)
                Break
        }
        else Break
        }
    SetBatchLines, %bch%
return arr.MaxIndex() ? arr:0
}

; Bind the window so that it can find images when obscured
; by other windows, it's equivalent to always being
; at the front desk. Unbind Window using FindText_BindWindow(0)

FindText_BindWindow(window_id:=0, set_exstyle:=0, get:=0)
{
    local
    static id:=0, old:=0
    if (get)
        return id
    if (window_id)
    {
        id:=window_id, old:=0
        if (set_exstyle)
        {
            WinGet, old, ExStyle, ahk_id %id%
            WinSet, Transparent, 255, ahk_id %id%
            Loop, 30
            {
                Sleep, 100
                WinGet, i, Transparent, ahk_id %id%
            }
            Until (i=255)
        }
    }
    else
    {
        if (old)
            WinSet, ExStyle, %old%, ahk_id %id%
        id:=old:=0
    }
}

FindText_xywh2xywh(x1,y1,w1,h1, ByRef x,ByRef y,ByRef w,ByRef h
, ByRef zx:="", ByRef zy:="", ByRef zw:="", ByRef zh:="")
{
    local
    SysGet, zx, 76
    SysGet, zy, 77
    SysGet, zw, 78
    SysGet, zh, 79
    left:=x1, right:=x1+w1-1, up:=y1, down:=y1+h1-1
    left:=left<zx ? zx:left, right:=right>zx+zw-1 ? zx+zw-1:right
    up:=up<zy ? zy:up, down:=down>zy+zh-1 ? zy+zh-1:down
    x:=left, y:=up, w:=right-left+1, h:=down-up+1
}

FindText_GetBitsFromScreen(x, y, w, h, ScreenShot:=1
, ByRef zx:="", ByRef zy:="", ByRef zw:="", ByRef zh:="")
{
    local
    static hBM:="", bits:=[], Ptr:=A_PtrSize ? "UPtr" : "UInt"
    static init:=!FindText_GetBitsFromScreen(0,0,0,0,1)
    if (!ScreenShot)
    {
        zx:=bits.3, zy:=bits.4, zw:=bits.5, zh:=bits.6
        return bits
    }
    bch:=A_BatchLines, cri:=A_IsCritical
    Critical
    if (zw<1 or zh<1)
    {
        SysGet, zx, 76
        SysGet, zy, 77
        SysGet, zw, 78
        SysGet, zh, 79
    }
    if (zw>bits.5 or zh>bits.6 or !hBM)
    {
        DllCall("DeleteObject", Ptr,hBM), hBM:="", bpp:=32
        VarSetCapacity(bi, 40, 0), NumPut(40, bi, 0, "int")
        NumPut(zw, bi, 4, "int"), NumPut(-zh, bi, 8, "int")
        NumPut(1, bi, 12, "short"), NumPut(bpp, bi, 14, "short")
        hBM:=DllCall("CreateDIBSection", Ptr,0, Ptr,&bi
        , "int",0, Ptr "*",ppvBits:=0, Ptr,0, "int",0, Ptr)
        Scan0:=(!hBM ? 0:ppvBits), Stride:=((zw*bpp+31)//32)*4
        bits.1:=Scan0, bits.2:=Stride
        bits.3:=zx, bits.4:=zy, bits.5:=zw, bits.6:=zh
        x:=zx, y:=zy, w:=zw, h:=zh
    }
    if (hBM) and !(w<1 or h<1)
    {
        win:=DllCall("GetDesktopWindow", Ptr)
        hDC:=DllCall("GetWindowDC", Ptr,win, Ptr)
        mDC:=DllCall("CreateCompatibleDC", Ptr,hDC, Ptr)
        oBM:=DllCall("SelectObject", Ptr,mDC, Ptr,hBM, Ptr)
        DllCall("BitBlt",Ptr,mDC,"int",x-zx,"int",y-zy,"int",w,"int",h
        , Ptr,hDC, "int",x, "int",y, "uint",0x00CC0020|0x40000000)
        DllCall("ReleaseDC", Ptr,win, Ptr,hDC)
        if (id:=FindText_BindWindow(0,0,1))
            WinGet, id, ID, ahk_id %id%
        if (id)
        {
            WinGetPos, wx, wy, ww, wh, ahk_id %id%
            left:=x, right:=x+w-1, up:=y, down:=y+h-1
            left:=left<wx ? wx:left, right:=right>wx+ww-1 ? wx+ww-1:right
            up:=up<wy ? wy:up, down:=down>wy+wh-1 ? wy+wh-1:down
            x:=left, y:=up, w:=right-left+1, h:=down-up+1
        }
        if (id) and !(w<1 or h<1)
        {
            hDC2:=DllCall("GetDCEx", Ptr,id, Ptr,0, "int",3, Ptr)
            DllCall("BitBlt",Ptr,mDC,"int",x-zx,"int",y-zy,"int",w,"int",h
            , Ptr,hDC2, "int",x-wx, "int",y-wy, "uint",0x00CC0020|0x40000000)
            DllCall("ReleaseDC", Ptr,id, Ptr,hDC2)
        }
        DllCall("SelectObject", Ptr,mDC, Ptr,oBM)
        DllCall("DeleteDC", Ptr,mDC)
    }
    Critical, %cri%
    SetBatchLines, %bch%
return bits
}

FindText_PicInfo(text)
{
    local
    static info:=[]
    If !InStr(text,"$")
        return
    if (info[text])
        return info[text]
    v:=text, comment:="", e1:=e0:=0, set_e1_e0:=0
    ; You Can Add Comment Text within The <>
    if RegExMatch(v,"<([^>]*)>",r)
        v:=StrReplace(v,r), comment:=Trim(r1)
    ; You can Add two fault-tolerant in the [], separated by commas
    if RegExMatch(v,"\[([^\]]*)]",r)
    {
        v:=StrReplace(v,r)
        r:=StrSplit(r1, ",")
        e1:=r.1, e0:=r.2, set_e1_e0:=1
    }
    r:=StrSplit(v,"$")
    color:=r.1, v:=r.2
    r:=StrSplit(v,".")
    w1:=r.1, v:=FindText_base64tobit(r.2), h1:=StrLen(v)//w1
    if (w1<1 or h1<1 or StrLen(v)!=w1*h1)
        return
    mode:=InStr(color,"-") ? 4 : InStr(color,"#") ? 3
    : InStr(color,"**") ? 2 : InStr(color,"*") ? 1 : 0
    if (mode=4)
    {
        color:=StrReplace(color,"0x")
        r:=StrSplit(color,"-")
        color:="0x" r.1, n:="0x" r.2
    }
    else
    {
        color:=RegExReplace(color,"[*#]")
        r:=StrSplit(color,"@")
        color:=r.1, n:=Round(r.2,2)+(!r.2)
        , n:=Floor(9*255*255*(1-n)*(1-n))
    }
    StrReplace(v,"1","",len1), len0:=StrLen(v)-len1
    , e1:=Round(len1*e1), e0:=Round(len0*e0)
return info[text]:=[v,w1,h1,len1,len0,e1,e0
, mode,color,n,comment,set_e1_e0]
}

FindText_PicFind(mode, color, n, offsetX, offsetY
    , bits, sx, sy, sw, sh
    , ByRef gs, ByRef ss, ByRef text, ByRef s1, ByRef s0
, ByRef input, num, ByRef allpos, allpos_max)
{
    local
    static MyFunc:="", Ptr:=A_PtrSize ? "UPtr" : "UInt"
    if (!MyFunc)
    {
        x32:="5557565383EC788B8424CC0000008BBC24CC000000C7442"
        . "424000000008B40048B7F148944243C8B8424CC000000897C2"
        . "42C8BBC24CC0000008B40088B7F18894424388B8424CC00000"
        . "0897C24308B400C89C6894424288B8424CC0000008B401039C"
        . "6894424200F4DC68944241C8B8424D000000085C00F8E15010"
        . "0008BB424CC0000008B44242489F78B0C868B7486048B44870"
        . "88974241085C0894424180F8ED700000089CD894C2414C7442"
        . "40C00000000C744240800000000C744240400000000890C248"
        . "D76008DBC27000000008B5C24108B7424088B4C24148B54240"
        . "C89DF89F029F101F78BB424C000000001CE85DB7E5E8B0C248"
        . "9EB893C2489D7EB198BAC24C800000083C70483C00189548D0"
        . "083C101390424742C83BC248C0000000389FA0F45D0803C063"
        . "175D48BAC24C400000083C70483C00189549D0083C30139042"
        . "475D48B7424100174241489DD890C2483442404018BB424B00"
        . "000008B442404017424088BBC24A4000000017C240C3944241"
        . "80F8554FFFFFF83442424078B442424398424D00000000F8FE"
        . "BFEFFFF83BC248C000000030F84A00600008B8424A40000008"
        . "BB424A80000000FAF8424AC0000008BBC24A40000008D2CB08"
        . "B8424B0000000F7D88D04878BBC248C0000008944241085FF0"
        . "F84F702000083BC248C000000010F847F08000083BC248C000"
        . "000020F84330900008B8424900000008B9C24940000000FB6B"
        . "C24940000000FB6B42490000000C744241800000000C744242"
        . "400000000C1E8100FB6DF0FB6D08B84249000000089D10FB6C"
        . "4894424088B842494000000C1E8100FB6C029C101D08904248"
        . "B442408894C24408B4C240801D829D9894424088D043E894C2"
        . "40489F129F9894424148BBC24B40000008B8424B0000000894"
        . "C240C89E98B6C2440C1E00285FF894424340F8EBA0000008BB"
        . "424B000000085F60F8E910000008B8424A00000008B5424240"
        . "39424BC00000001C8034C243489CF894C244003BC24A000000"
        . "0EB3D8D76008DBC2700000000391C247C3D394C24047F37394"
        . "C24087C3189F30FB6F33974240C0F9EC3397424140F9DC183C"
        . "00483C20121D9884AFF39F8741E0FB658020FB648010FB6303"
        . "9DD7EBE31C983C00483C201884AFF39F875E28BB424B000000"
        . "0017424248B4C24408344241801034C24108B442418398424B"
        . "40000000F8546FFFFFF8B8424B00000002B44243C8944240C8"
        . "B8424B40000002B442438894424600F886D0900008B4424288"
        . "BBC24C40000008B74243CC744241000000000C744243800000"
        . "000C7442434000000008D3C8789C583EE01897C246C8974247"
        . "48B44240C85C00F88E70000008B7C24388B8424AC000000BE0"
        . "0000000C704240000000001F8C1E0108944246889F82B84249"
        . "C0000000F49F08B84249C000000897424640FAFB424B000000"
        . "001F8894424708974245C8DB6000000008B04240344241089C"
        . "1894424088B442430394424200F84AA0100008B5C241C89C60"
        . "38C24BC00000031C08B54242C85DB0F8EC8010000897424048"
        . "B7C2420EB2D39C77E1C8BB424C80000008B1C8601CB803B007"
        . "40B836C240401782B8D74260083C0013944241C0F849101000"
        . "039C57ECF8BB424C40000008B1C8601CB803B0174BE83EA017"
        . "9B9830424018B04243944240C0F8D68FFFFFF83442438018BB"
        . "424B00000008B44243801742410394424600F8DEFFEFFFF8B4"
        . "C243483C47889C85B5E5F5DC250008B8424900000008BB424B"
        . "4000000C744240C00000000C744241400000000C1E8100FB6C"
        . "08904248B8424900000000FB6C4894424040FB684249000000"
        . "0894424088B8424B0000000C1E00285F68944242489E88BAC2"
        . "4940000000F8E24FEFFFF8B9C24B000000085DB7E758B9C24A"
        . "00000008B7424148BBC24A000000003B424BC00000001C3034"
        . "424248944241801C78D76008DBC27000000000FB643020FB64"
        . "B012B04242B4C24040FB6132B5424080FAFC00FAFC98D04400"
        . "FAFD28D04888D045039C50F930683C30483C60139DF75C98BB"
        . "C24B0000000017C24148B4424188344240C01034424108B742"
        . "40C39B424B40000000F8566FFFFFFE985FDFFFF85ED7E358B7"
        . "424088BBC24BC00000031C08B54242C8D1C378BB424C400000"
        . "08B0C8601D9803901740983EA010F8890FEFFFF83C00139C57"
        . "5E683BC24D0000000070F8EAA0100008B442474030424C7442"
        . "44007000000896C2444894424288B8424CC00000083C020894"
        . "4243C8B44243C8B9424B00000008B7C24288B0029C28944245"
        . "08B84249800000001F839C20F4EC289C68944244C39FE0F8C0"
        . "90100008B44243C8B700C8B78108B6808897424148B7014897"
        . "C242489C7897424548BB424B40000002B700489F08B7424703"
        . "9C60F4EC68BB424C4000000894424188B47FC89442404C1E00"
        . "201C6038424C8000000894424588B4424648B7C2428037C245"
        . "C3B442418894424040F8F8700000085ED7E268B8C24BC00000"
        . "08B54242431C08D1C398B0C8601D9803901740583EA01784A8"
        . "3C00139C575EA8B4424148B4C245439C8747E85C07E7A8B9C2"
        . "4BC000000896C244831C08B6C245801FBEB0983C0013944241"
        . "4745C8B54850001DA803A0074EC83E90179E78B6C244890834"
        . "424040103BC24B00000008B442404394424180F8D79FFFFFF8"
        . "3442428018B4424283944244C0F8D4CFFFFFF830424018B6C2"
        . "4448B04243944240C0F8D7EFCFFFFE911FDFFFF8B4424288B7"
        . "C245083442440078344243C1C8D4438FF894424288B4424403"
        . "98424D00000000F8F7FFEFFFF8B6C24448B7C24348B0424038"
        . "424A80000008BB424D40000000B4424688D4F01398C24D8000"
        . "0008904BE0F8ED8FCFFFF85ED7E278B7424088BBC24BC00000"
        . "08B8424C40000008D1C378B74246C8B1083C00401DA39F0C60"
        . "20075F283042401894C24348B04243944240C0F8DDEFBFFFFE"
        . "971FCFFFF89F68DBC27000000008B74243C8B8424900000003"
        . "1D2F7F60FAF8424A40000008D0490894424188B8424B000000"
        . "0038424A800000029F0894424348B8424AC000000038424B40"
        . "000002B442438398424AC0000008944243C0F8F560400008B8"
        . "424A40000008BB424A80000000FAF8424AC000000C74424240"
        . "00000008D04B0034424188BB424A0000000894424388B44243"
        . "4398424A80000000F8F320100008B8424AC000000C1E010894"
        . "424408B442438894424148B8424A8000000894424088B44241"
        . "40FB67C060289C52B6C2418893C240FB67C0601897C24040FB"
        . "63C068B44241C85C00F8E1E0100008B442430894424108B442"
        . "42C8944240C31C0EB678D76008DBC2700000000394424207E4"
        . "A8B9C24C80000008B0C8301E90FB6540E020FB65C0E012B142"
        . "42B5C24040FB60C0E0FAFD20FAFDB29F98D14520FAFC98D149"
        . "A8D144A39942494000000720C836C2410017865908D7426008"
        . "3C0013944241C0F84A3000000394424287E9D8B9C24C400000"
        . "08B0C8301E90FB6540E020FB65C0E012B14242B5C24040FB60"
        . "C0E0FAFD20FAFDB29F98D14520FAFC98D149A8D144A3B94249"
        . "40000000F865BFFFFFF836C240C010F8950FFFFFF834424080"
        . "183442414048B442408394424340F8DEFFEFFFF838424AC000"
        . "000018BBC24A40000008B44243C017C24383B8424AC0000000"
        . "F8D99FEFFFF8B4C242483C4785B5E89C85F5DC250008D74260"
        . "08B7C24248B4424400B4424088B9C24D40000008D4F013B8C2"
        . "4D80000008904BB0F8D64FAFFFF894C2424EB848B842490000"
        . "0008B8C24B4000000C7042400000000C74424040000000083C"
        . "001C1E00789C68B8424B0000000C1E00285C98944240889E88"
        . "9F50F8EAFF8FFFF8B9424B000000085D27E5F8B8C24A000000"
        . "08B5C2404039C24BC00000001C1034424088944240C038424A"
        . "000000089C70FB651020FB641010FB6316BC04B6BD22601C28"
        . "9F0C1E00429F001D039C50F970383C10483C30139F975D58BB"
        . "424B0000000017424048B44240C83042401034424108B34243"
        . "9B424B40000007582E92CF8FFFF8B8424B0000000C70424000"
        . "00000C744240400000000C1E002894424088B8424B40000008"
        . "5C00F8E920000008B8424B000000085C07E6F8B8C24A000000"
        . "08B5C24048BB424B800000001E9036C240801DE039C24BC000"
        . "000896C240C03AC24A00000000FB651020FB6410183C1040FB"
        . "679FC83C60183C3016BC04B6BD22601C289F8C1E00429F801D"
        . "0C1F8078846FFC643FF0039CD75CC8BBC24B0000000017C240"
        . "48B6C240C83042401036C24108B0424398424B40000000F856"
        . "EFFFFFF83BC24B4000000020F8E60F7FFFF8B8424BC0000000"
        . "38424B00000008BAC24B800000003AC24B0000000C74424040"
        . "1000000894424088B8424B400000083E8018944240C8B8424B"
        . "000000083C0018944241083BC24B0000000027E798B4424108"
        . "9E92B8C24B00000008B5C240889EA8D34288D45FE8904240FB"
        . "642010FB63A0384249000000039F87C360FB67A0239F87C2E0"
        . "FB6790139F87C260FB63E39F87C1F0FB63939F87C180FB6790"
        . "239F87C100FB67EFF39F87C080FB67E0139F87D04C64301018"
        . "3C20183C30183C10183C6013B0C2475A3834424040103AC24B"
        . "00000008B4424048BBC24B0000000017C24083944240C0F855"
        . "8FFFFFFE96FF6FFFF83C47831C95B89C85E5F5DC2500090909"
        . "090909090"
        x64:="4157415641554154555756534881EC88000000488B84245"
        . "0010000488BB42450010000448B94245801000089542428448"
        . "944240844898C24E80000008B40048B76144C8BBC244001000"
        . "04C8BB42448010000C74424180000000089442430488B84245"
        . "00100008974241C488BB424500100008B40088B76188944243"
        . "C488B842450010000897424388B400C89C789442440488B842"
        . "4500100008B401039C7894424100F4DC74585D289442454488"
        . "B84245001000048894424200F8ECB000000488B442420448B0"
        . "8448B68048B400885C0894424040F8E940000004489CE44890"
        . "C244531E431FF31ED0F1F8400000000004585ED7E614863142"
        . "4418D5C3D0089F848039424380100004589E0EB1D0F1F0083C"
        . "0014D63D94183C0044183C1014883C20139C34789149E74288"
        . "3F9034589C2440F45D0803A3175D783C0014C63DE4183C0048"
        . "3C6014883C20139C34789149F75D844012C2483C50103BC241"
        . "80100004403A42400010000396C24047582834424180748834"
        . "424201C8B442418398424580100000F8F35FFFFFF83F9030F8"
        . "43D0600008B8424000100008BBC24080100000FAF842410010"
        . "0008BB424000100008D3CB88B842418010000F7D885C9448D2"
        . "C860F841101000083F9010F844108000083F9020F84E008000"
        . "08B742428C744240400000000C74424180000000089F0440FB"
        . "6CEC1E8104589CC0FB6D84889F08B7424080FB6D44189DB89F"
        . "0440FB6C64889F1C1E8100FB6CD89D60FB6C08D2C0A8B94242"
        . "00100004129C301C3438D040129CE4529C48904248B8424180"
        . "10000C1E00285D2894424080F8E660100004C89BC244001000"
        . "0448BBC24180100004585FF0F8E91040000488B8C24F800000"
        . "04863C74C6354241831D24C03942430010000488D440102EB3"
        . "A0F1F80000000004439C37C4039CE7F3C39CD7C384539CC410"
        . "F9EC044390C240F9DC14421C141880C124883C2014883C0044"
        . "139D70F8E2D040000440FB6000FB648FF440FB648FE4539C37"
        . "EBB31C9EBD58B5C2428448B8C242001000031ED4531E44889D"
        . "84189DB0FB6DB0FB6F48B84241801000041C1EB10450FB6DBC"
        . "1E0024585C98904240F8EA10000004C89BC24400100004C89B"
        . "42448010000448B7C2408448BB424180100004585F67E60488"
        . "B8C24F80000004D63D44C039424300100004863C74531C94C8"
        . "D440102410FB600410FB648FF410FB650FE4429D829F10FAFC"
        . "029DA0FAFC98D04400FAFD28D04888D04504139C7430F93040"
        . "A4983C1014983C0044539CE7FC4033C244501F483C5014401E"
        . "F39AC2420010000758C4C8BBC24400100004C8BB4244801000"
        . "08B8424180100002B4424308904248B8424200100002B44243"
        . "C894424680F88750800008B7C24404D89F5488BAC243001000"
        . "0448B7424104C89FEC74424040000000048C74424280000000"
        . "0C74424200000000089F883E801498D4487044189FF4889442"
        . "4088B44243083E801894424788B042485C00F88D9000000488"
        . "B5C24288B8424100100004D89EC448B6C245401D8C1E010894"
        . "4247089D82B8424F000000089C7B8000000000F49C731FF894"
        . "4246C0FAF842418010000894424648B8424F000000001D8894"
        . "42474908B442404897C24188D1C388B4424384139C60F84AB0"
        . "000004189C131C04585ED448B44241C7F36E9C30000000F1F4"
        . "0004139CE7E1B418B148401DA4863D2807C150000740B4183E"
        . "901782E0F1F4400004883C0014139C50F8E920000004139C78"
        . "9C17ECC8B148601DA4863D2807C15000174BD4183E80179B74"
        . "883C701393C240F8D7AFFFFFF4D89E54883442428018B9C241"
        . "8010000488B442428015C2404394424680F8DFCFEFFFF8B4C2"
        . "42089C84881C4880000005B5E5F5D415C415D415E415FC3458"
        . "5FF7E278B4C241C4C8B4424084889F28B0201D84898807C050"
        . "001740583E90178934883C2044939D075E583BC24580100000"
        . "70F8EE60100008B442478488B8C24500100000344241844896"
        . "C2450448BAC241801000044897C24404883C1204889742410C"
        . "744243C07000000448974244448897C24484989CF895C247C8"
        . "9C64C89642430418B074489EA29C28944245C8B8424E800000"
        . "001F039C20F4EC239F0894424580F8CD0000000418B47148BB"
        . "C2420010000412B7F0449635FFC458B4F08458B670C8944246"
        . "08B442474458B771039C70F4FF8488B44241048C1E3024C8D1"
        . "41848035C24308B442464448D04068B44246C39F84189C37F7"
        . "2904585C97E234489F131D2418B04924401C04898807C05000"
        . "1740583E90178464883C2014139D17FE28B4424604139C40F8"
        . "4AA0000004585E40F8EA100000089C131D2EB0D4883C201413"
        . "9D40F8E8E0000008B04934401C04898807C05000074E483E90"
        . "179DF4183C3014501E84439DF7D8F83C601397424580F8D6EF"
        . "FFFFF488B7C2448448B7C2440448B742444448B6C2450488B7"
        . "424104C8B6424304883C701393C240F8D97FDFFFFE918FEFFF"
        . "F6690037C240844017C241883442404014401EF8B442404398"
        . "424200100000F854DFBFFFF4C8BBC2440010000E996FCFFFF8"
        . "B44245C8344243C074983C71C8D7406FF8B44243C398424580"
        . "100000F8F87FEFFFF448B7C2440448B742444448B6C2450488"
        . "B7C24488B5C247C488B7424104C8B64243048634424208B542"
        . "418039424080100004C8B9C24600100000B5424708D4801398"
        . "C2468010000418914830F8E9AFDFFFF4585FF7E1D4C8B44240"
        . "84889F08B104883C00401DA4C39C04863D2C64415000075EB4"
        . "883C701393C24894C24200F8DBAFCFFFFE93BFDFFFF0F1F440"
        . "0008B7C24308B44242831D2F7F70FAF8424000100008D04908"
        . "94424208B8424180100000384240801000029F8894424308B8"
        . "42410010000038424200100002B44243C39842410010000894"
        . "424440F8F2B0400008B8424000100008BBC24080100000FAF8"
        . "42410010000448B642440448B6C24544C8B8C24F8000000C74"
        . "42428000000008D04B8034424208944243C8B4424303984240"
        . "80100000F8F360100008B8424100100008B6C243CC1E010894"
        . "424408B8424080100008904248D450289EF2B7C24204585ED4"
        . "898450FB61C018D45014898410FB61C014863C5410FB634010"
        . "F8E1C0100008B442438894424188B44241C8944240431C0EB6"
        . "90F1F800000000044395424107E4E418B0C8601F98D5102448"
        . "D41014863C9410FB60C094863D24D63C0410FB61411470FB60"
        . "40129F10FAFC94429DA4129D80FAFD2450FAFC08D1452428D1"
        . "4828D144A395424087207836C241801786B4883C0014139C50"
        . "F8E9F0000004139C44189C27E96418B0C8701F98D5102448D4"
        . "1014863C9410FB60C094863D24D63C0410FB61411470FB6040"
        . "129F10FAFC94429DA4129D80FAFD2450FAFC08D1452428D148"
        . "28D144A3B5424080F864BFFFFFF836C2404010F8940FFFFFF8"
        . "304240183C5048B0424394424300F8DE6FEFFFF83842410010"
        . "000018BBC24000100008B442444017C243C3B8424100100000"
        . "F8D95FEFFFF8B4C2428E95CFBFFFF48634424288B5424400B1"
        . "424488BBC24600100008D48013B8C24680100008914870F8D3"
        . "5FBFFFF8304240183C504894C24288B0424394424300F8D7AF"
        . "EFFFFEB92448B5C2428448B84242001000031DB8B842418010"
        . "00031F6448B9424180100004183C30141C1E3074585C08D2C8"
        . "5000000000F8E6BF9FFFF4585D27E57488B8C24F80000004C6"
        . "3CE4C038C24300100004863C74531C0488D4C01020FB6110FB"
        . "641FF440FB661FE6BC04B6BD22601C24489E0C1E0044429E00"
        . "1D04139C3430F9704014983C0014883C1044539C27FCC01EF4"
        . "401D683C3014401EF399C24200100007595E9FBF8FFFF8B8C2"
        . "4200100008B84241801000031DB31F6448B8C241801000085C"
        . "98D2C85000000007E7D4585C97E694C63C6488B8C24F800000"
        . "04863C74D89C24C038424300100004C0394242801000031D24"
        . "88D4C0102440FB6190FB641FF4883C104440FB661FA6BC04B4"
        . "56BDB264101C34489E0C1E0044429E04401D8C1F8074188041"
        . "241C60410004883C2014139D17FC401EF4401CE83C3014401E"
        . "F399C2420010000758383BC2420010000020F8E4BF8FFFF486"
        . "3B424180100008B9C24180100008BBC2420010000488D56014"
        . "48D67FFBF010000004889D0480394243001000048038424280"
        . "100004889D58D53FD4C8D6A0183BC241801000002488D1C067"
        . "E7E4989C04D8D5C05004989D94929F04889E90FB610440FB65"
        . "0FF035424284439D27C44440FB650014439D27C3A450FB6104"
        . "439D27C31450FB6114439D27C28450FB650FF4439D27C1E450"
        . "FB650014439D27C14450FB651FF4439D27C0A450FB65101443"
        . "9D27D03C601014883C0014983C1014883C1014983C0014C39D"
        . "8759383C7014801F54889D84139FC0F8562FFFFFFE968F7FFF"
        . "F31C9E9D9F8FFFF909090909090909090909090"
        FindText_MCode(MyFunc, A_PtrSize=8 ? x64:x32)
    }
return !bits.1 ? 0:DllCall(&MyFunc, "int",mode, "uint",color
    , "uint",n, "int",offsetX, "int",offsetY, Ptr,bits.1
    , "int",bits.2, "int",sx, "int",sy, "int",sw, "int",sh
    , Ptr,&gs, Ptr,&ss, "AStr",text, Ptr,&s1, Ptr,&s0
, Ptr,&input, "int",num, Ptr,&allpos, "int",allpos_max)
}

FindText_MCode(ByRef code, hex)
{
    local
    ListLines, % (lls:=A_ListLines=0?"Off":"On")?"Off":"Off"
    SetBatchLines, % (bch:=A_BatchLines)?"-1":"-1"
    VarSetCapacity(code, len:=StrLen(hex)//2)
    Loop, % len
        NumPut("0x" SubStr(hex,2*A_Index-1,2),code,A_Index-1,"uchar")
    Ptr:=A_PtrSize ? "UPtr" : "UInt", PtrP:=Ptr "*"
    DllCall("VirtualProtect",Ptr,&code, Ptr,len,"uint",0x40,PtrP,0)
    SetBatchLines, %bch%
    ListLines, %lls%
}

FindText_base64tobit(s)
{
    local
    Chars:="0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    . "abcdefghijklmnopqrstuvwxyz"
    ListLines, % (lls:=A_ListLines=0?"Off":"On")?"Off":"Off"
    Loop, Parse, Chars
    {
        i:=A_Index-1, v:=(i>>5&1) . (i>>4&1)
        . (i>>3&1) . (i>>2&1) . (i>>1&1) . (i&1)
        s:=RegExReplace(s,"[" A_LoopField "]",StrReplace(v,"0x"))
    }
    ListLines, %lls%
return RegExReplace(RegExReplace(s,"10*$"),"[^01]+")
}

FindText_bit2base64(s)
{
    local
    s:=RegExReplace(s,"[^01]+")
    s.=SubStr("100000",1,6-Mod(StrLen(s),6))
    s:=RegExReplace(s,".{6}","|$0")
    Chars:="0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    . "abcdefghijklmnopqrstuvwxyz"
    ListLines, % (lls:=A_ListLines=0?"Off":"On")?"Off":"Off"
    Loop, Parse, Chars
    {
        i:=A_Index-1, v:="|" . (i>>5&1) . (i>>4&1)
        . (i>>3&1) . (i>>2&1) . (i>>1&1) . (i&1)
        s:=StrReplace(s,StrReplace(v,"0x"),A_LoopField)
    }
    ListLines, %lls%
return s
}

FindText_ASCII(s)
{
    local
    if RegExMatch(s,"\$(\d+)\.([\w+/]+)",r)
    {
        s:=RegExReplace(FindText_base64tobit(r2),".{" r1 "}","$0`n")
        s:=StrReplace(StrReplace(s,"0","_"),"1","0")
    }
    else s=
        return s
}

; You can put the text library at the beginning of the script,
; and Use FindText_PicLib(Text,1) to add the text library to PicLib()'s Lib,
; Use FindText_PicLib("comment1|comment2|...") to get text images from Lib

FindText_PicLib(comments, add_to_Lib:=0, index:=1)
{
    local
    static Lib:=[]
    if (add_to_Lib)
    {
        re:="<([^>]*)>[^$]+\$\d+\.[\w+/]+"
        Loop, Parse, comments, |
            if RegExMatch(A_LoopField,re,r)
        {
            s1:=Trim(r1), s2:=""
            Loop, Parse, s1
                s2.="_" . Format("{:d}",Ord(A_LoopField))
            Lib[index,s2]:=r
        }
        Lib[index,""]:=""
    }
    else
    {
        Text:=""
        Loop, Parse, comments, |
        {
            s1:=Trim(A_LoopField), s2:=""
            Loop, Parse, s1
                s2.="_" . Format("{:d}",Ord(A_LoopField))
            Text.="|" . Lib[index,s2]
        }
        return Text
    }
}

FindText_PicN(Number, index:=1)
{
return FindText_PicLib(RegExReplace(Number,".","|$0"), 0, index)
}

; Use FindText_PicX(Text) to automatically cut into multiple characters
; Can't be used in ColorPos mode, because it can cause position errors

FindText_PicX(Text)
{
    local
    if !RegExMatch(Text,"\|([^$]+)\$(\d+)\.([\w+/]+)",r)
        return Text
    v:=FindText_base64tobit(r3), Text:=""
    c:=StrLen(StrReplace(v,"0"))<=StrLen(v)//2 ? "1":"0"
    wz:=RegExReplace(v,".{" r2 "}","$0`n")
    While InStr(wz,c)
    {
        While !(wz~="m`n)^" c)
            wz:=RegExReplace(wz,"m`n)^.")
        i:=0
        While (wz~="m`n)^.{" i "}" c)
            i:=Format("{:d}",i+1)
        v:=RegExReplace(wz,"m`n)^(.{" i "}).*","$1")
        wz:=RegExReplace(wz,"m`n)^.{" i "}")
        if (v!="")
            Text.="|" r1 "$" i "." FindText_bit2base64(v)
    }
return Text
}

; Screenshot and retained as the last screenshot.

FindText_ScreenShot(x1:="", y1:="", x2:="", y2:="")
{
    local
    if (x1+y1+x2+y2="")
        n:=150000, x:=y:=-n, w:=h:=2*n
    else
        x:=(x1<x2 ? x1:x2), y:=(y1<y2 ? y1:y2)
    , w:=Abs(x2-x1)+1, h:=Abs(y2-y1)+1
    FindText_xywh2xywh(x,y,w,h,x,y,w,h,zx,zy,zw,zh)
    FindText_GetBitsFromScreen(x,y,w,h,1,zx,zy,zw,zh)
}

; Get the RGB color of a point from the last screenshot.
; If the point to get the color is beyond the range of
; Screen, it will return White color (0xFFFFFF).

FindText_ScreenShot_GetColor(x,y)
{
    local
    bits:=FindText_GetBitsFromScreen(0,0,0,0,0,zx,zy,zw,zh)
return (x<zx or x>zx+zw-1 or y<zy or y>zy+zh-1 or !bits.1)
? "0xFFFFFF" : Format("0x{:06X}",NumGet(bits.1
+(y-zy)*bits.2+(x-zx)*4,"uint")&0xFFFFFF)
}

; Identify a line of text or verification code
; based on the result returned by FindText().
; offsetX is the maximum interval between two texts,
; if it exceeds, a "*" sign will be inserted.
; offsetY is the maximum height difference between
; the following text and the first text.
; Return Association array {ocr:Text, x:X, y:Y}

FindText_OcrOK(ok, offsetX:=20, offsetY:=20)
{
    local
    ocr_Text:=ocr_X:=ocr_Y:=min_X:=""
    For k,v in ok
        x:=v.1
    , min_X:=(A_Index=1 or x<min_X ? x : min_X)
    , max_X:=(A_Index=1 or x>max_X ? x : max_X)
    While (min_X!="" and min_X<=max_X)
    {
        LeftX:=""
        For k,v in ok
        {
            x:=v.1, y:=v.2, w:=v.3, h:=v.4
            if (x<min_X) or Abs(y-ocr_Y)>offsetY
                Continue
            ; Get the leftmost X coordinates
            if (LeftX="" or x<LeftX)
                LeftX:=x, LeftY:=y, LeftW:=w, LeftH:=h, LeftOCR:=v.id
            else if (x=LeftX)
            {
                Loop, 100
                {
                    err:=(A_Index-1)/100+0.000001
                    if FindText(LeftX,LeftY,LeftX+LeftW-1,LeftY+LeftH-1,err,err,Text,0)
                        Break
                    if FindText(x, y, x+w-1, y+h-1, err, err, Text, 0)
                    {
                        LeftX:=x, LeftY:=y, LeftW:=w, LeftH:=h, LeftOCR:=v.id
                        Break
                    }
                }
            }
        }
        if (ocr_X="")
            ocr_X:=LeftX, ocr_Y:=LeftY
        ; If the interval exceeds the set value, add "*" to the result
        ocr_Text.=(ocr_Text!="" and LeftX-min_X>offsetX ? "*":"") . LeftOCR
        ; Update min_X for next search
        min_X:=LeftX+LeftW
    }
return {ocr:ocr_Text, x:ocr_X, y:ocr_Y}
}

; Sort the results returned by FindText() from left to right
; and top to bottom, ignore slight height difference

FindText_SortOK(ok, dy:=10)
{
    local
    if !IsObject(ok)
        return ok
    ypos:=[]
    For k,v in ok
    {
        x:=v.x, y:=v.y, add:=1
        For k2,v2 in ypos
            if Abs(y-v2)<=dy
        {
            y:=v2, add:=0
            Break
        }
        if (add)
            ypos.Push(y)
        n:=(y*150000+x) "." k, s:=A_Index=1 ? n : s "-" n
    }
    Sort, s, N D-
    ok2:=[]
    Loop, Parse, s, -
        ok2.Push( ok[(StrSplit(A_LoopField,".")[2])] )
return ok2
}

; Reordering according to the nearest distance

FindText_SortOK2(ok, px, py)
{
    local
    if !IsObject(ok)
        return ok
    For k,v in ok
    {
        x:=v.1+v.3//2, y:=v.2+v.4//2
        n:=((x-px)**2+(y-py)**2) "." k
        s:=A_Index=1 ? n : s "-" n
    }
    Sort, s, N D-
    ok2:=[]
    Loop, Parse, s, -
        ok2.Push( ok[(StrSplit(A_LoopField,".")[2])] )
return ok2
}

; Prompt mouse position in remote assistance

FindText_MouseTip(x:="", y:="")
{
    local
    if (x="")
    {
        VarSetCapacity(pt,16,0), DllCall("GetCursorPos","ptr",&pt)
        x:=NumGet(pt,0,"uint"), y:=NumGet(pt,4,"uint")
    }
    x:=Round(x-10), y:=Round(y-10), w:=h:=2*10+1
    ;-------------------------
    Gui, _MouseTip_: +AlwaysOnTop -Caption +ToolWindow +Hwndmyid +E0x08000000
    Gui, _MouseTip_: Show, Hide w%w% h%h%
    ;-------------------------
    dhw:=A_DetectHiddenWindows
    DetectHiddenWindows, On
    d:=4, i:=w-d, j:=h-d
    s=0-0 %w%-0 %w%-%h% 0-%h% 0-0
    s=%s% %d%-%d% %i%-%d% %i%-%j% %d%-%j% %d%-%d%
    WinSet, Region, %s%, ahk_id %myid%
    DetectHiddenWindows, %dhw%
    ;-------------------------
    Gui, _MouseTip_: Show, NA x%x% y%y%
    ; Loop, 4
    ; {
    Gui, _MouseTip_: Color, % A_Index & 1 ? "Red" : "Blue"
    ;   Sleep, 500
    ; }
    ;Gui, _MouseTip_: Color,"Red"
    ;   Gui, _MouseTip_: Destroy
}

FindText_GetTextFromScreen(x1, y1, x2, y2, Threshold:=""
, ScreenShot:=1, ByRef rx:="", ByRef ry:="")
{
    local
    SetBatchLines, % (bch:=A_BatchLines)?"-1":"-1"
    x:=(x1<x2 ? x1:x2), y:=(y1<y2 ? y1:y2)
    , w:=Abs(x2-x1)+1, h:=Abs(y2-y1)+1
    , FindText_xywh2xywh(x,y,w,h,x,y,w,h,zx,zy,zw,zh)
    if (w<1 or h<1)
    {
        SetBatchLines, %bch%
        return
    }
    ListLines, % (lls:=A_ListLines=0?"Off":"On")?"Off":"Off"
    FindText_GetBitsFromScreen(x,y,w,h,ScreenShot,zx,zy,zw,zh)
    gc:=[], k:=0
    Loop, %h% {
        j:=y+A_Index-1
        Loop, %w%
            i:=x+A_Index-1, c:=FindText_ScreenShot_GetColor(i,j)
        , gc[++k]:=(((c>>16)&0xFF)*38+((c>>8)&0xFF)*75+(c&0xFF)*15)>>7
    }
    Threshold:=StrReplace(Threshold,"*")
    if (Threshold="")
    {
        pp:=[]
        Loop, 256
            pp[A_Index-1]:=0
        Loop, % w*h
            pp[gc[A_Index]]++
        IP:=IS:=0
        Loop, 256
            k:=A_Index-1, IP+=k*pp[k], IS+=pp[k]
        Threshold:=Floor(IP/IS)
        Loop, 20
        {
            LastThreshold:=Threshold
            IP1:=IS1:=0
            Loop, % LastThreshold+1
                k:=A_Index-1, IP1+=k*pp[k], IS1+=pp[k]
            IP2:=IP-IP1, IS2:=IS-IS1
            if (IS1!=0 and IS2!=0)
                Threshold:=Floor((IP1/IS1+IP2/IS2)/2)
            if (Threshold=LastThreshold)
                Break
        }
    }
    s:=""
    Loop, % w*h
        s.=gc[A_Index]<=Threshold ? "1":"0"
    ListLines, %lls%
    ;--------------------
    w:=Format("{:d}",w), CutUp:=CutDown:=0
    re1=(^0{%w%}|^1{%w%})
    re2=(0{%w%}$|1{%w%}$)
    While RegExMatch(s,re1)
        s:=RegExReplace(s,re1), CutUp++
    While RegExMatch(s,re2)
        s:=RegExReplace(s,re2), CutDown++
    rx:=x+w//2, ry:=y+CutUp+(h-CutUp-CutDown)//2
    s:="|<>*" Threshold "$" w "." FindText_bit2base64(s)
    ;--------------------
    SetBatchLines, %bch%
return s
}