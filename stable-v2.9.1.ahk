#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
#include <Vis2>  ; Equivalent to #include .\lib\Vis2.ahk
 ;#Warn  ; Enable warnings to assist with detecting common errors.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen
SetTitleMatchMode, 2
; Text:="|<dc>21@0.78$9.00ECmMH1q04"  dc
; Text:="|<unranked>36@0.81$8.0Dw0D7ta3VkM01UM003z08"
;#MaxHotkeysPerInterval 99000000
;#HotkeyInterval 99000000
;#KeyHistory 0
;ListLines Off

;SetBatchLines, -1
;SetKeyDelay, -1, -1
SetMouseDelay, -1
;SetDefaultMouseSpeed, 0
;SetWinDelay, -1
;SetControlDelay, -1
;SendMode Input

IniRead,my_mode,status.ini,SectionName,my_mode
if(my_mode == 16)
  {
    Process, Priority, , A
    play_160()
  }
  else if(my_mode == 15)
    {
      Process, Priority, , A
      play_1515()
    }
    else if(my_mode == "pr2")
    {
      play_pr2()
}

NumpadAdd::Pause
NumpadSub::print("imp")
F4::OutputDebug `n %matchcount% done till ac num %set%
F6::play_160()
;F6::play_1515()
F7::changeaccs()
F8::tenaccopen()
F2::matchcount = matchlimit++
F3::isinhome()
F9::crash_check()
;F10::testing()
;F10::getteam()
;F11::superinv()
F12::update_client_check("1")
!t::topbat()
!b::bottombat()
!r::Reload
!o::time_since_last_match := ""
!k::RunWait kill_steam.bat





  ;~ my_mode = 1 1515
  ;~ my_mode = 2 160

global lobby,loading,win,script,script1,go,firstrun,teamwin,wins,join,error1,a1,a2,reconnectdelay,warmupdelay,halftimedelay,thismap,rounddelay,UX,UY,reconnectdelay1,reconnectdelay2,my_mode,rounds,xc,yc,l,b,sx1,sx2,sx3,sx4,sx5,sy1,sy2,tx1,tx2,tx3,tx4,tx5,ty1,ty2,get,getu,getd,ts,t,ct,cts,tss,matchcount,skiphftm,fixscore,s,godownfound,godupfound,nextmatch,set,sold_accs,matchlimit,getct,gett,rank_open,play_now,click_time,click_time1,time_since_last_match,ha,runfuntion,test1,total_accounts_open,i_value,steam_folder,owner,swap_accs



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
		while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
			Sleep 500
			send {insert down}
			Sleep 50
			send {insert up}
		}
		Text:="|<setting>*127$16.zzzwDzkzv3T00w03kwDXlyD7kwD00w03v3TwDzkzzzy"
		while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
		}
		Text:="|<video>*82$32.zzzzzzv7TzzyFbzzzY00Tzw007zz801zzm00Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000DzzzzzzzzzzU"
		while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
		}
		Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
            ;while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                    ;{
                      ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                      ;Click, %X%, %Y%
                    ;}
		Text:="|<play>*136$24.zs7zzU1zy00Tw00Ds007k003k003U001U401070007k007w007y007k00700U401U001k003k003s007w00Dy00TzU1zzs7zU"
		while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
		}
            ;RunWait "C:\Program Files (x86)\Nemex\Mouse Recorder Pro 2\Mouse Recorder Pro.exe" "C:\Users\FEAR\Documents\My Recorded Scripts\Untitled1.m2s" -count1 -autorun -end,,Hide
            ;Text:="|<war_games>*120$30.1kkI01mUI41kUI0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzU"
            ;Text:="|<deathmatch>*86$45.zzzzzzzz7zvzzzTkztDzntyI000003mU10820SI0810G3kU40880Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000007zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw"
            ;while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                    ;{
                      ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                      ;Click, %X%, %Y%
                    ;}
          ;Text:="|<dust 11>*95$32.zzzzzsDzvs6tT4TPiK17qvZVvxitN6zPiqQjqsQ0Ms7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
          ;while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                    ;{
                      ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                      ;Click, %X%, %Y%
                      ;sleep 200
                      ;send {insert}
                      ;sleep 600
                      ;Text:="|<select_profile>*87$62.zzzzzzzzzzzzyrjzyTzbzzzZvzv9zvzhwNObCLTAGv+GJYYbbZ9DGwYvffnvuvkc96uutyyiwWuIaigzgdDBUZcQM1AP3zzzzzzzzzys"
                      ;if (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                      ;   {
                      ;      X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                      ;      MouseClick, left, %X%, %Y%
                      ;      sleep 1600
                      ;      send {insert}
                      ;   }
                  ;}
          Text:="|<go>*68$15.1s870AtVzA8tU7AAtU700s4"
          while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			MouseClick, left, %X%, %Y%
			sleep 2000
		}
          Text:="|<go>*69$17.zzz1sC1kAnaNzAmCNUQnAta1kA3UTzzk"
          while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
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
          OutputDebug `n %osd% already pr2+
          while ( ElapsedTime <= 2400000 ) ;........................................................................................................... loop start
		{
			if (osd != total_pr2_done)
			{
				osd := total_pr2_done
				OutputDebug `n total pr2 done = %osd%
			}
			if (total_pr2_done >= total_accounts_open)
				break
			ElapsedTime := A_TickCount - StartTime
			MyTicks := ElapsedTime/60000
			MyTicks:= SubStr(MyTicks,1,4)
			TrayTip,time, %MyTicks% mins,1
			Text:="|<team_select>*190$10.k+S3wTxzrzTszfxkC"
                      ;Text:="|<auto_team select>*124$17.zzzzDzs5zbXyT3xyTnzzbyTjwzDnzD7y0Tz3zzzy"
			while (ok:=FindText(1600, 960, 1600, 960, 0.1, 0.1, Text))
			{
                                  ;OutputDebug `n auto select found
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
			while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
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
					if (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
					{
						X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
					}
					else
					{
						x = 0
					}
				}
				Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
				while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
				{
					X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
					Click, %X%, %Y%
				}
				Text:="|<play>*136$24.zs7zzU1zy00Tw00Ds007k003k003U001U401070007k007w007y007k00700U401U001k003k003s007w00Dy00TzU1zzs7zU"
				while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
				{
					X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
					Click, %X%, %Y%
				}
                                      ;Text:="|<deathmatch>*86$45.zzzzzzzz7zvzzzTkztDzntyI000003mU10820SI0810G3kU40880Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000007zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw"
                                      ;while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                                                ;{
                                                  ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                                  ;Click, %X%, %Y%
                                                ;}
                                      ;Text:="|<dust 11>*95$32.zzzzzsDzvs6tT4TPiK17qvZVvxitN6zPiqQjqsQ0Ms7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
                                      ;while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                                                ;{
                                                  ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                                  ;Click, %X%, %Y%
                                                ;}
				Text:="|<go>*68$15.1s870AtVzA8tU7AAtU700s4"
				while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
				{
					X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
					MouseClick, left, %X%, %Y%
					sleep 2000
				}
				Text:="|<go>*69$17.zzz1sC1kAnaNzAmCNUQnAta1kA3UTzzk"
				while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
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
   ,pos1 :=  "-x 3 -y 16"
   ,pos2 := "-x 643 -y 16"
   ,pos3 := "-x 1283 -y 16"
   ,pos4 := "-x 1923 -y 16"
   ,pos5 := "-x 2563 -y 16"
   ,pos6 := "-x 3    -y 496"
   ,pos7 := "-x 643  -y 496"
   ,pos8 := "-x 1283 -y 496"
   ,pos9 := "-x 1923 -y 496"
   ,pos10 := "-x 2563 -y 496"
   ,pos11 := "-x 3   -y 976"
   ,pos12 := "-x 643 -y 976"
   ,pos13 := "-x 1283 -y 976"
   ,pos14 := "-x 1923 -y 976"
   ,pos15 := "-x 2563 -y 976"
   ,pos16 := "-x 3   -y 1456"
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
    OutputDebug `n  %i%th acc is pr1
    ;total_pr2_done++
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
      IniWrite, %pr1_user%, pr1.ini,pr1, %i%
      
      v := HasVal(pr1_folder, pr1_user)
      if (v = 0)
        {
          FileAppend, %pr1_user% `n, pr1.ini
        }
        matchcount = matchlimit++
        return
    }
  }
  else if (my_mode == "pr2")
  {
    OutputDebug `n cant find pr of %i%th acc
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
    ;OutputDebug `n %pids%
    ;OutputDebug `n %pids0%
    i = 1
    Loop 20
        {
          apid := value%i%
          ;OutputDebug `n %apid%
          if (apid = "")
            {
              OutputDebug `n done injecting total %i%
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
                        FileAppend, %ha% `n pr1.txt
                      }
                  i ++
                }
      Iniwrite,0,status.ini,result,pr2
    }

play_160()
  {
    S = 1
    rank_open = 0
    variables()
    play()
  }

variables()
    {
        matchlimit = 15
        rounddelay = 19000
        reconnectdelay = 13000 ;12000 main, 13 8350 ,15 8320
        reconnectdelay1 = 1500   ;reconnect delay on halftime
        read_value()
        IniRead,owner,status.ini,SectionName,owner
        OutputDebug `n ac num %set%
        OutputDebug `n %steam_folder%
        sold_accs = 0
        UX = 1
        UY = 1
        rounds = 7 ; how many rounds to win 
        halftimedelay = 1500
        warmupdelay = 76000
        lobby = 1
        loading  = 0
        win = 0
        script = 0
        script1 = 0
        go = 0
        firstrun = 0
        teamwin = 0
        wins = 0
        skiphftm = 0
        fixscore = 0
        ;join = 0 ;  u wanna autojoin on first run?? 1 is run 0 will not
        error1 = 0   ; connection lost bull shit
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
        swap_accs = 0 ; 0 = no 1 = yes
        
        i_value := total_accounts_open+1
        ImageSearch, FoundX, FoundY, 150, 100, 3060, 320, *5 accept.png
        If (ErrorLevel = 0)
          ErrorLevel1 = 0
        get :=ocr([sx1,sy1,l,b])
        If InStr(get,"0") or InStr(get,"G")
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
            OutputDebug `n are csgo even launched?
            Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"
            if (ok:=FindText(2582, 777, 16, 100, 0, 0, Text))
                {
                  OutputDebug `n ys
                }
            else
                {
                  OutputDebug `n no
                  SET := SET - total_accounts_open
                  newchangeaccs()
                }
            }     
    }
play_1515()
  {   
    S = 1
    variables()
    play()
  }
play()
  {
    OutputDebug `n  ran  
    SLEEP 2000
    changeaccs()
    loop
          {
            Sleep 100
            starterror()
            If ( lobby = 1 ) 
                {
                  goe()
                }           
            If ( go = 0 ) 
              {
                mapcheck() 
                accept()
                ;OutputDebug `n accepted
              }                    
            If ( a1 = 1 && a2 = 1 )
              {
                OutputDebug `n  match found
                a1 = 0
                a2 = 0
                lobby = 0
                loading = 1
                firstrun = 1
                go = 1
                nextmatch = 1
                OutputDebug `n  match %matchcount% completed
              }
            Else If ( a1 = 1 or a2 = 1 )
              {   
               a1 = 0
               a2 = 0
               OutputDebug `n 1 ACCEPT DETECTED
               uclose = 0
               dclose = 0
               ;sleep 26000
               ;OutputDebug `n  searching for go
               StartTime := A_TickCount
               ElapsedTime := A_TickCount - StartTime
               ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 accept.png
               while (ErrorLevel = 0)
                         {
                           error()
                           if(ElapsedTime > 60000 )
                             {
                               gos()
                               Text:="|<reconnect>*153$27.000W16F4F0H8006F0180004"
                               if (ok:=FindText(1280, 480, 1280, 480, 0, 0, Text))
                                   {
                                     break
                                   }  
                             }
                           ElapsedTime := A_TickCount - StartTime
                           ; OutputDebug `n  i c accept loop
                           ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 accept.png
                         }  
               gos()
               lobbycheck() 
               sleep 46000
              }        
    if ( loading = 1 )
      {
        sleep 7000 ;
        If InStr(owner,"allz")
          {
            Send, {l down}
            sleep 200
            Send, {l up}
          }
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 540, *2 accept.png
        If (ErrorLevel = 0)
          {
            t = "no"
            matchcount--
            OutputDebug `n matchcount-- %matchcount%
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
            OutputDebug `n chking for map now
            map()
            OutputDebug `n  map gone wait %warmupdelay% sec
            StartTime := A_TickCount
            ElapsedTime := A_TickCount - StartTime
            while(ElapsedTime < warmupdelay )
                      {
                          ;OutputDebug `n Wait time %ElapsedTime%/%warmupdelay%
                          if (t = "no")
                                {
                                  getteam()
                                }
                          ElapsedTime := A_TickCount - StartTime
                          sleep 10
                          if ( ElapsedTime < warmupdelay*0.7)
                          error()
                          re := reconnecterror()
                          if re = 1
                                {
                                  sleep 5000
                                  map()
                                  ElapsedTime := A_TickCount - StartTime
                                  re = 0
                                }
                      }
            ;showscore()
            ;sleep %warmupdelay%
            ;getteam()
            halftime = 1
            skiphftm = 0
            firstrun = 0
            if (my_mode = 16) ;
                {
                  teamwin = 6
                  wins = 6
                }
            else
                {
                  teamwin = 0
                  wins = 0				  
                }
            reconnectdelay2 = %reconnectdelay%
          }
	  if (my_mode = 15)
          {
            getscore()
		  }
	  else
		  {
            ; while ( t != "no")
            ;dndis()
            ; teamwin = 9
            ;wins = 9
            if (t = "up") ;..........................................................................................................LOGIC............................
                {
                  dndis()
                  ;updis()
                }
            else
                {
                  ;dndis()
                  updis()
                }
          }
      loading = 0
      cts = 0
      tss = 0
      matchcount++
      OutputDebug `n  match %matchcount% completed
      FormatTime, OutputVar, , h:mm:ss tt
      IniWrite, %OutputVar%, status.ini,SectionName, last_match
      Start_Time := A_TickCount
      time_since_last_match := A_TickCount - Start_Time
      ;print()
      write_value()
      join = 1
      UX = 0
      UY = 0
     }     
    }
    if ( join = 1 )
      {   
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, cd_bar.png
        if (matchcount < matchlimit or ErrorLevel = 1 )
          {
            OutputDebug `n 318
            isinhome()
            sleep 250
          }
        changeaccs()
      }
    if (time_since_last_match = "")
    Start_Time := A_TickCount
    time_since_last_match := A_TickCount - Start_Time
    ;OutputDebug `n time_since_last_match %time_since_last_match%
    MyTicks := time_since_last_match/60000
    MyTicks:= SubStr(MyTicks,1,4)
    TrayTip,time, %MyTicks% mins,1
    if (time_since_last_match >= 1000000)
        {
          if (swap_accs != 2)
          {
            gos()
            lobby = 0
            swap_accs()
            join = 1
            Start_Time := A_TickCount
          }
          else
          {
            OutputDebug `n no match found for set = %set% after %matchcount%th match
            sleep 100
            Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /convert=nomatchfound\set_%set%..match_%matchcount%.png
            matchcount := matchlimit
            join = 1
            Start_Time := A_TickCount
            swap_accs = 0
          }
        }
}}
RemoveToolTip:
ToolTip
return

swap_accs()
{
  home()
  OutputDebug `n swap & quiting
  temp := total_accounts_open ;ede lod ni awen line wdai he
  ab1=1
  ab2=2
  ab3=6
  ab4=7
  i =1
  loop,4
  {
    total_accounts_open := ab%i%
    x := placing("c","x")
    y := placing("c","y")
    MouseClick,left,x,y,,10,,
    sleep 500
    SendRaw,``
    sleep 500
    sendraw,`quit
    sleep 200
    send {enter}
    i++
  }
  total_accounts_open := temp
  swap_accs = 1
  tenaccopen()
}
updis()
      {
          while ( teamwin <= rounds )
                    {
                        ;OutputDebug `n updis started
                         if (teamwin = 7 and fixscore = 0) ;fixscore = 1
                            {
                              reconnectdelay2 := reconnectdelay1
                            }
                        else
                            {
                              reconnectdelay2 := reconnectdelay
                            }
                       ; if (tss = 14 or cts = 14)
                       ; {
                        OutputDebug `n wait %reconnectdelay2%
                       ; reconnectdelay2 := reconnectdelay1
                       ; }
                        ;bottombat()
                        topbat()
                        ;reconnectdelay2 := reconnectdelay
                        sleep 3000
                        ;reconnecterror()
                        reconnect()
                        sleep 2000
                        ;OutputDebug `n looking for map
                        map()
                        if (teamwin = 7 and skiphftm = 0)
                            {
                              OutputDebug `n hftm sleep %halftimedelay%
                              StartTime := A_TickCount
                              ElapsedTime := A_TickCount - StartTime
                              t = no
                              ;cts = asd
                              while(ElapsedTime < halftimedelay )
                                      {
                                          ;OutputDebug `n Wait time %ElapsedTime%/%halftimedelay%
                                          if (t = "no" and ElapsedTime > halftimedelay * 0.30)
                                            {
                                              error()
                                              getteam()
                                                  runfuntion = 0
                                                  getscore()
                                                  runfuntion = 1
                                            }
                                            ElapsedTime := A_TickCount - StartTime
                                            sleep 1000
                                      }
                              skiphftm = 1
                              if (getct >= 15 and gett >= 15)
                                  {   
                                    t = no
                                    return
                                  }
                            }
                        else
                            {    
                              OutputDebug `n normal sleep %rounddelay%
                              StartTime := A_TickCount
                              ElapsedTime := A_TickCount - StartTime
                              t = no
                              ;cts = asd 
                              while(ElapsedTime < rounddelay )
                                      {
                                        ;OutputDebug `n Wait time %ElapsedTime%/%rounddelay%
                                        if (t = "no" and ElapsedTime > rounddelay * 0.58)
                                          {
                                              error()
                                              getteam()
                                                  runfuntion = 0
                                                  getscore()
                                                  runfuntion = 1
                                          }
                                        ElapsedTime := A_TickCount - StartTime
                                        sleep 1000
                                      }
                            }  
						if ( my_mode = 15)
                        teamwin++
                        if (t = "no")
                            break                        
                        ;OutputDebug `n first team = %teamwin%*2 , 2nd team = %wins%*2
                    } 
      }
dndis()
      {
          while ( wins <= rounds )
                    {
                       ;OutputDebug `n dndis started
                       if (wins = 7 and fixscore = 0)
                          {
                             reconnectdelay2 := reconnectdelay1
                           }
                       else
                           {
                               reconnectdelay2 := reconnectdelay
                            }
                       ; if (tss = 14 or cts = 14)
                       ; {
                       ;   OutputDebug `n t = %14% there fore 
                       ; reconnectdelay2 := reconnectdelay1
                       ; }
                       bottombat()
                       ;topbat()
                       OutputDebug `n wait %reconnectdelay2%
                       ;reconnectdelay2 := reconnectdelay
                       sleep 3000
                       ;reconnecterror()
                       reconnect()
                       sleep 2000
                       ;OutputDebug `n looking for map
                       map()
                       if (wins = 7 and skiphftm = 0)
                          {
                            OutputDebug `n hftm sleep %halftimedelay%
                            StartTime := A_TickCount
                            ElapsedTime := A_TickCount - StartTime
                            t = no
                            ;cts = asd                    
                            while(ElapsedTime < halftimedelay )
                                    {
                                      ;OutputDebug `n Wait time %ElapsedTime%/%halftimedelay%
                                      if (t = "no" and ElapsedTime > halftimedelay * 0.3)
                                      ;if (t = "asd")
                                          {
                                              error()
                                              getteam()
                                                    runfuntion = 0
                                                    getscore()
                                                    runfuntion = 1
                                          }
                                        ElapsedTime := A_TickCount - StartTime
                                        sleep 1000
                                    }
                            skiphftm = 1
                            if (getct >= 15 and gett >= 15)
                              {   
                                t = no
                                return
                              }
                          }
                        else
                          {    
                            OutputDebug `n normal sleep %rounddelay%
                             StartTime := A_TickCount
                             ElapsedTime := A_TickCount - StartTime
                             t = no
                             ;cts = asd
                             while(ElapsedTime < rounddelay )
                                      {
                                          ;OutputDebug `n Wait time %ElapsedTime%/%rounddelay%
                                          if (t = "no" and ElapsedTime > rounddelay * 0.58)
                                          ;if (t = "asd")
                                              {
                                                error()
                                                getteam()
                                                      runfuntion = 0
                                                      getscore()
                                                      runfuntion = 1
                                              }
                                          ElapsedTime := A_TickCount - StartTime
                                          sleep 1000
                                      }
                          }
						if ( my_mode = 15)						
                        wins++
                        if (t = "no")
                            break
                        ;OutputDebug `n first team = %teamwin%*2 , 2nd team = %wins%*2
                    }    
    }                    
topbat()
    {   
        ;OutputDebug `n topbat
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        ;BlockInput, On          ; BlockInput, off
        Sleep 10
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
        MouseMove, xpos, ypos
        BlockInput, off
        Sleep %reconnectdelay2%              ; THIS IS SOMETHING WE NEED TO WROK
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On          ; BlockInput, off
        MouseClick, Left,467,45,,10,,
        loop,4
              {
                  MouseClick, left,640,0,,0,, R
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
      ;OutputDebug `n bottombat
      MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
      BlockInput, On          ; BlockInput, off
      MouseClick, left,450,545,,0,,
      Click down
      sleep 100
      Send, {l down}
      sleep 200
      Send, {l up}
      sleep 100
      Click up
      sleep 100
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
      MouseMove, xpos, ypos
      BlockInput, off 
      Sleep %reconnectdelay2% ; this is also some thing we need to do
      MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
      BlockInput, On          ; BlockInput, off
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
              ;OutputDebug `n Up >running accept bat %a1% =a1= 1 , %a2% = a2 = 1  
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
                       ;OutputDebug `n down >running accept bat %a1% =a1= 1 , %a2% = a2 = 1  
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
    ;OutputDebug `n 1 %get%
    If InStr(get,"CAN")
      {
      }
    else
      {
        MouseClick, left,2583,350,,0,,  ; uper wala       ; es use kro agar pc use nahi karde tan
      }
    If InStr(get,"O") or InStr(get,"G") or InStr(get,"0")
      {
          MouseGetPos, xpos, ypos
          MouseClick, left, 2586, 350
          X = sx1 + l/2
          y = sy1 + b/2
          click_time1++
          ; MouseMove, xpos, ypos
          BlockInput, On          ; BlockInput, off
           ;Sleep 10
           MouseClick, left,3058,473,,0,,  ; uper wala go
           ;Sleep 10
           MouseMove, -120, 12, 0, R
           Sleep 150
           MouseClick, left,
           MouseMove, xpos, ypos
           BlockInput, off
          ;Sleep 10                        
           go = 1
           OutputDebug `n clicked on go
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
    ;OutputDebug `n 2 %get%
    If InStr(get,"CAN")
      {
      }
    else
      {
        MouseClick, left,2585,815,,0,,
      }
    If InStr(get,"O") or InStr(get,"G") or InStr(get,"0")
      {
        X = sx1 + l/2
        y = sy1 + b/2
        click_time++
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On          ; BlockInput, off
        ;Sleep 10
        MouseClick, left,3058,956,,0,,     ; niche wala go
        ;Sleep 10
        MouseMove, -120, 2, 0, R
        Sleep 150
        MouseClick, left,
        MouseMove, xpos, ypos
        BlockInput, off
        ;Sleep 10                        
        go = 1
        OutputDebug `n clicked on go
      }
    else
      {
        go = 0
        click_time = 0
      }
    ;OutputDebug `n clicked on = %click_time% & %click_time1%
    if (click_time = 10) or (click_time1 = 10 )
      {
        click_time = click_time1 = 0
        Text:="|<vac>*123$46.zvzzzzix2DyrzOvJ/ucR1UcUDU4oE8WB6I310+8"
        if (ok:=FindText(2999, 52, 150000, 150000, 0, 0, Text))
          {
            IniWrite, vac error on %matchcount% match, status.ini,vac_check, set_%set%
            OutputDebug `n vac error after %matchcount% match set_%set%
          }
        else
          {
            OutputDebug `n something happend cant press go
            print("cant press go")
          }
        matchcount = matchlimit++
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
    OutputDebug `n 1 %get%
    If InStr(get,"CAN") ; a wala check odo chlda ni jdo go glow kar rheha hove 
      {
        MouseGetPos, xpos, ypos
        MouseClick, left, 2586, 400
        X = sx1 + l/2
        y = sy1 + b/2
        BlockInput, On          ; BlockInput, off
        ;Sleep 10
        MouseClick, left,3058,473,,0,,  ; uper wala go
        ;Sleep 10
        MouseMove, -220, 20, 0, R  
        Sleep 100
        MouseClick, left,
        MouseMove, xpos, ypos
        BlockInput, off
        ;Sleep 10                        
        ;OutputDebug `n If InStr(get,"CANCEL SEARCH")
      }
    sx1 := "2991"
    ,sy1 := "947"
    ,l := "139"
    ,b := "17"
    get :=ocr([sx1,sy1,l,b])
    OutputDebug `n 2 %get%
    If InStr(get,"CAN")
      {
        X = sx1 + l/2
        y = sy1 + b/2
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On          ; BlockInput, off
         ;Sleep 10
          MouseClick, left,3058,956,,0,,     ; niche wala go
         ;Sleep 10
         MouseMove, -120, 12, 0, R
         Sleep 100
         MouseClick, left,
         MouseMove, xpos, ypos
         BlockInput, off
        ;Sleep 10                        
         ;OutputDebug `n If InStr(get,"CANCEL SEARCH")
      }
  }
start_check()
	{
		error()
		Text:="|<>*104$26.zzzzzz01zzU0Dzs03zy00zzU0Dzs03zy00zzU0Dz003zk00zc00Tk0Dzw03zz3kzzswTzyD7zz3kzzk0Dzw03zzc5zzz3zzzkzzzzzzzzzzzs"
		while (ok:=FindText(1600, 1600, 1600, 1600, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
			Sleep 100
			z := y - 200
			Click %X%, %z%
		}
		Text:="|<>*110$24.zzzzzw03zs01zs01zs01zs01zs01zs01zs01zU01zU01xU03s07zs07zsS7zwSDzwSDzsS7zs07zs07zx0jzzVzzzVzzzzzzU"
		while (ok:=FindText(1600, 1600, 1600, 1600, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
			Sleep 100
			z := y - 200
			Click %X%, %z%
		}
	}
starterror()
    {   
      start_check()
      ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *5 ok.png
      if (ErrorLevel = 0)
      OutputDebug `n  errors found
      while (ErrorLevel = 0)
                {
                   x :=  FoundX 
                   y :=  FoundY
                   MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                   BlockInput, On          ; BlockInput, off
                   MouseClick, left, x, y
                   MouseMove, 20, 30, 10, R
                   MouseMove, xpos, ypos
                   BlockInput, off
                   Sleep 20
                   error1 = 1
                   join = 1
                   ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *5 ok.png
                 }
      If (error1 = 1)
         { 
            MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
            home()
            isinhome()
            ;Sleep 5000
            MouseMove, xpos, ypos
            OutputDebug `n going home screen
            sx1 := "3038"
            ,sy1 := "459"
            ,l := "53"
            ,b := "31"
            get :=ocr([sx1,sy1,l,b])
            thisgo := get
            OutputDebug `n 1 %get%
            sy1 = 939
            get :=ocr([sx1,sy1,l,b])
            thatgo := get
            If InStr(thisgot,"GO") AND InStr(thatgo,"GO")
                {
                     error1 = 0
                     OutputDebug `n  errors fixed
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
                    OutputDebug `n matchcount-- %matchcount%
                    nextmatch = 0
                  }
              if (join = 1)
                  {
                    Text:="|<>*125$16.331hhaqqPPMBhc"
                    if (ok:=FindText(1280, 480, 1280, 480, 0, 0, Text))
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
                      }
                  }            
              OutputDebug `n  errors found
              join = 1
            }
        while (ErrorLevel = 0)
                {
                  ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *10 ok.png
                   x :=  FoundX
                   ,y :=  FoundY
                   MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                   BlockInput, On          ; BlockInput, off
                   MouseClick, left, x, y
                   sleep 12
                   MouseMove, 20, 30, 10, R
                   MouseMove, xpos, ypos
                   BlockInput, off
                   Sleep 300
                   error1 = 1
                  ImageSearch, FoundX, FoundY, 0, 0, 3200, 1920, *10 ok.png  
                 }
        if ( loading != 1 ) ; loading one means match wich aa
          {
            Text:="|<close>*110$22.XwNU9V02aIXCNM0dZMkU40U"
            while (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
                      {
                        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                        Click, %X%, %Y%
                      }   
            Text:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"
            if (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
                {
                  while (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
                            {
                              X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                              Click, %X%, %Y%
                            }
                }
           
    Text:="|<network_error>*181$22.3zzxxvrbW4ARV21m48EWEYU" ;Text:="|<network_error>359@0.86$41.00000000000000000000000000000000000000000k0001U0AANVQAkxzzjzzdjSyNjSnSxsnSxvhvQtxj0000006000000s000000000000000000000000000000000000000000000000000000000000000000000000001"
            if (ok:=FindText(1600, 480, 1600, 480, 0.1, 0.1, Text))
              {
                OutputDebug `n real network error detected
                timer = 0
                ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *10 ok.png
                x :=  FoundX 
                y :=  FoundY
                MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                BlockInput, On          ; BlockInput, off
                MouseClick, left, x, y
                sleep 12
                MouseMove, 20, 30, 10, R
                MouseMove, xpos, ypos
                BlockInput, off
                while (ok:=FindText(1600, 480, 1600, 480, 0.1, 0.1, Text)) 
                    {
                        OutputDebug `n its network error
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
                            OutputDebug `n its online
                            if (band_karan_ton_pehlan_ruk_joa == "theek_aa")
                              {
                                timer = -50
                                band_karan_ton_pehlan_ruk_joa := ""
                              }
                            timer++
                            OutputDebug `n quitting in %timer%
                            if (timer = 10)
                              {
                                if (loading = 1) ; match de wich a je tan sara sare close
                                  {
                                    matchcount--
                                    SET := SET - total_accounts_open	   									 
                                    newchangeaccs()
                                    return
                                  }
                                OutputDebug `n quiting
                                SendRaw,``
                                sleep 500
                                sendraw,`quit
                                sleep 200
                                send {enter}
                                timer = 0
                                print("network")
                                tenaccopen()
                                return
                              }
                          }
                        else
                          {
                            band_karan_ton_pehlan_ruk_joa := "theek_aa"
                          }
                      Text:="|<network_error>*181$22.3zzxxvrbW4ARV21m48EWEYU"
                    }
                    OutputDebug `n network error solved or doesnt work
              ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *25 ok.png
              if (ErrorLevel = 0)
              OutputDebug `n  errors found
              while (ErrorLevel = 0)
                      {
                          x :=  FoundX 
                          y :=  FoundY
                          MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                          BlockInput, On          ; BlockInput, off
                          MouseClick, left, x, y
                          MouseMove, 20, 30, 10, R
                          MouseMove, xpos, ypos
                          BlockInput, off
                          ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *25 ok2.png
                      }
              }
          }
        if (loading = 0) ; firstrun = 1
          {
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *25 ok.png
            if (ErrorLevel = 0)
            OutputDebug `n  errors found
            while (ErrorLevel = 0)
                {
                   x :=  FoundX 
                   y :=  FoundY
                   MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                   BlockInput, On          ; BlockInput, off
                   MouseClick, left, x, y
                   MouseMove, 20, 30, 10, R
                   MouseMove, xpos, ypos
                   BlockInput, off
                   ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *25 ok2.png
                 }
            Text:="|<confirm>*87$20.2E02UA8c00+0kUYA+"
            while (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
              {
                OutputDebug `n  confirm found
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                BlockInput, On          ; BlockInput, off
                Click, %X%, %Y%
                MouseMove, xpos, ypos
                BlockInput, off
                error1 = 1
                Sleep 300
              }
          }
        If (error1 = 1)
            { 
               error1 = 0
               OutputDebug `n  errors fixed
               join = 1
            }
    } 
map()
  {
    if (firstrun = 1)
      {
        thismap = universal_map.png
        OutputDebug `n  checking %thismap%
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 %thismap%
        OutputDebug `n map errorlevel = %ErrorLevel%
        StartTime := A_TickCount
        ElapsedTime := A_TickCount - StartTime
        while (ErrorLevel != 0)
               {
                  ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
                   if (ErrorLevel = 0 or ElapsedTime > 300000)
                       {
                          break
                        }
                  ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 %thismap%
                  Sleep 5000
                  ElapsedTime := A_TickCount - StartTime
                  ;OutputDebug `n  waiting %thismap% to disappear
                }
        while (ErrorLevel = 0)
                {
                    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 %thismap%
                    Sleep 1000
                    ;OutputDebug `n  waiting %thismap% to disappear
                 }
        return
    }
    else
    {
      ;OutputDebug `n  checking %thismap%
      ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 %thismap%
      OutputDebug `n map errorlevel = %ErrorLevel%
      while (ErrorLevel != 1)
              {
                  ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 %thismap%
                  Sleep 200
                 ;OutputDebug `n  waiting %thismap% to disappear
               }
    }                
  }
reconnecterror()
  {   
      ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
      if (ErrorLevel = 0)
          {
            OutputDebug `n  reconnect found
            ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
            x :=  FoundX - 10 
            y :=  FoundY + 5
            MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
            BlockInput, On          ; BlockInput, off        
            MouseClick, left, x, y ,,10
            MouseMove, 20, 40, 10, R
            sleep 20
            MouseMove, xpos, ypos
            BlockInput, off   
            reconnect = 1
            return reconnect
           }
  }
reconnect()
  {                  
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
     if (ErrorLevel = 0)
        {
          MouseClick, left, x, y ,,10
          MouseMove, 20, 40, 10, R
        }
     ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
      if (ErrorLevel = 0)
          {
              OutputDebug `n  reconnect found
              BlockInput, on
	          MouseGetPos, xpos, ypos					  
          }
     while (ErrorLevel = 0)
               {
                 (while ErrorLevel = 0)
                           {
                             error()
                             X = 0
                             OutputDebug `n  reconnect found
                             ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
                             x :=  FoundX - 10 
                             y :=  FoundY + 5
                             MouseClick, left, x, y ,,10
                             MouseMove, 20, 40, 10, R
                             sleep 20
                           }    
                 MouseMove, xpos, ypos
                 BlockInput, off
                 ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 reconnect.png
                 X = 0
                 Sleep 1000
               }
  }
freezcheck()
    {
        x = 0
        y = 0
        OutputDebug `n looking 4 freez
        while (x = 0)
                {
                  Text:="|<>*65$10.UWHdCYuHdCUu3jzU"
                  if (ok:=FindText(63, 172, 3000, 800, 0, 0, Text))
                      {
                          OutputDebug `n found in 1st
                          X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                          ; Click, %X%, %Y%
                      }
                  Text:="|<>*86$14.UXvCynjgvvCynjYvsCzzzU"
                  if (ok:=FindText(2891, 509, 3000, 800, 0, 0, Text))
                      {
                        OutputDebug `n found in 2nd
                        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                        ;  Click, %X%, %Y%
                      }
                  Text:="|<>*117$14.ifviyvjivviyvjivwSzzzzzs"
                  if (ok:=FindText(330, 510, 3000, 800, 0, 0, Text))
                      {
                        OutputDebug `n found in 3rd
                        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                        ; Click, %X%, %Y%
                      }
                }
        OutputDebug `n freez found @ %X%, %Y%,
    }
mapcheck()
{
}
isinhome()
  {   
    lobby = 0
    error()
    x = 0 
    OutputDebug `n are we on home Screen?
    while (x = 0)
            {
              sleep 1000
              start_check()
              changeaccs()
              ;TText:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"  ; are we on home screen?
              Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"
              if (ok:=FindText(2582, 777, 16, 100, 0, 0, Text))
                  {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                  }  
              Text:="|<inlobby>*150$13.ndvhwqTfq/7zzU"
              if (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
                  {
                    home()
                  }
              Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
              if (ok:=FindText(2103, 1171, 700, 150, 0.15, 0.15, Text))
                  { 
                      X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                      MouseClick, left,%X%, %Y%,1,50,,
                      sleep 500
                      y := y + 60
                      MouseMove x,y
                      play_now = 1
                  }
                Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"    
            }
    Text:="|<scoreboard>*98$50.k0000000w0000000ADzzw00003zzz00003zzzk3zz0zzzw0zzkDzzz0DzA3zzzk3zn0zzz00000Dzzk00003zzw000D0zzz0003kDzz000Dw3zzk003z0zzw000zkDzz000Dw3zz000Dz0zzk003zkDzw00Dzw3zz003zz0zzk00zzkDzw00Dzw3zzk0Dzz0zzw03zzkDzz00zzw8"
    while (x != 0 )
            {
              if (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
                  {
                    if (onetime != 5)
                      {
                        print("scoreboard")
                        onetime = 5
                      }
                    sleep 500
                  }
            else
                  {
                    break 
                  }
            }    
    OutputDebug `n i think yes
    update_client_check("0")
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    home()
    popout()
    ;mode_change() need improvements
    zzz = 500
    if (matchcount = 0)
      {
        OutputDebug `n super invite initiated
        superinv()
      }
    else
      {
        MouseMove,3189,122 ;3180,126     
        Sleep %zzz%
        MouseClick,left
        Sleep %zzz%
        MouseClick,left, 3140,126   ;nearby up   
        Sleep %zzz%
        Sleep %zzz%
        Text:="|<nearby_chk>*131$7.zssBqvtwwyzTzrvzs"      ; near by wich bande hege k nhi?
        if (ok:=FindText(3055, 157, 15, 15, 0, 0, Text) && matchcount != 0) ; khrab krti purposefully
          {
            OutputDebug `n normal invite initiated
            MouseClick,left, 3165,150      
            Sleep %zzz%
            MouseClick,left, 3124,148
            Sleep %zzz%
            MouseClick,left, 3165,177    
            Sleep %zzz%
            MouseClick,left, 3124,175
            Sleep %zzz%
            MouseClick,left, 3165,204     
            Sleep %zzz%
            MouseClick,left, 3124,202
            Sleep %zzz%
            MouseClick,left, 3165,231     
            Sleep %zzz%
            MouseClick,left, 3124,229
            Sleep %zzz%
            MouseMove, 3189, 602 ;3180,606     

            Sleep %zzz%
            MouseClick,left
            Sleep %zzz%
            MouseClick,left, 3140,606      
            Sleep %zzz%
            MouseClick,left, 3165,630      
            Sleep %zzz%
            MouseClick,left, 3124,628
            Sleep %zzz%
            MouseClick,left, 3165,657    
            Sleep %zzz%
            MouseClick,left, 3124,655
            Sleep %zzz%
            MouseClick,left, 3165,684    
            Sleep %zzz%
            MouseClick,left, 3124,682
            Sleep %zzz%
            MouseClick,left, 3165,711     
            Sleep %zzz%
            MouseClick,left, 3124,709
        }
      else
        {
            OutputDebug `n super invite initiated
            superinv()
        }
      }
    Text:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"
    if (ok:=FindText(3043, 787, 150000, 150000, 0, 0, Text))
        {
          while (ok:=FindText(3043, 787, 150000, 150000, 0, 0, Text))
                    {
                      X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                      Click, %X%, %Y%
                    }
        }
      MouseMove, 2541, 140    
      Sleep %zzz%
      MouseClick,left, 2541, 140     
      MouseMove, 1901, 140    
      Sleep %zzz%
      MouseClick,left, 1901, 140      
      MouseMove, 1261, 140    
      Sleep %zzz%
      MouseClick,left, 1261, 140      
      MouseMove, 621, 140    
      Sleep %zzz%
      MouseClick,left, 621, 140      
      MouseMove, 2541, 620    
      Sleep %zzz%
      MouseClick,left, 2541, 620     
      MouseMove, 1901, 620    
      Sleep %zzz%
      MouseClick,left, 1901, 620      
      MouseMove, 1261, 620    
      Sleep %zzz%
      MouseClick,left, 1261, 620      
      MouseMove, 621, 620    
      Sleep %zzz%
      MouseClick,left, 621, 620      
      MouseMove, 2581, 856 
      Sleep %zzz%
      MouseClick,left, 2581, 856  
      MouseMove, 2590, 320
      Sleep %zzz%
      MouseClick,left, 2590, 320 
      MouseMove, xpos, ypos
      BlockInput, off      
      popout()
      Text:="|<joinbutton>*138$10.kC0Ek30z3w30A81kC"
      while (ok:=FindText(2539, 143, 150000, 150000, 0, 0, Text))
                {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                }
      lobbyfull := lobbycheck()   
      if (lobbyfull = 1)
          {
              OutputDebug `n cick on play
              MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
              BlockInput, On          ; BlockInput, off      
              MouseClick, left,2583,574,,0,, ; niche wala
              ;MouseClick, left,3058,473,,90,,  ; uper wala go
        
              MouseClick, left,2583,80,,0,,  ; uper wala
              ;MouseClick, left,3058,956,,90,,     ; niche wala go
              Sleep 1000  ; j death match lag reha he tan e sleep wdao
              MouseClick, left, 2638,90,,0,,    ;....uper wala compi
              MouseClick, left,0,480,,0,, R ; .....niche wala compi

              MouseClick, left,2585,800,,0,,
              MouseMove, xpos, ypos
              BlockInput, off      

              Text:="|<compi_tab>*50$31.zzwtzzzm4zk00080U0V00E0EUU8002EyTzzzzDzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzy00000zzzzzzzzzzzzzzzw"
             while (ok:=FindText(2649, 347, 150, 260, 0, 0, Text))
                      {
                        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                        Click, %X%, %Y%
                      }
              ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
              if (errorlevel = 0)
                  {
                     OutputDebug `n ok found in isinhome funtion
                      isinhome()
                      return
                  }
        OutputDebug `n lobby joined
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
        if (errorlevel = 0)
             {
                isinhome()
                return
              }
        lobbystatus1 = nonprime
        lobbystatus2 = nonprime
        Text:="|<nonprime>*95$25.zzzvzDzZk0Vma20tG12Ac2064zzzyTzzz8"
        if (ok:=FindText(2806, 73, 50, 50, 0, 0, Text))
            {
              lobbystatus1 = nonprime
              OutputDebug `n %lobbystatus1%
            }
        if (ok:=FindText(2806, 553, 50, 50, 0, 0, Text))
          {
            lobbystatus2 = nonprime
            OutputDebug `n %lobbystatus2%
          }
      Text:="|<prime>*103$54.WDv77xly808O619VA08c2SM8ZAm08260+VA2Ac2SM0ZAmAUO616100U"
      if (ok:=FindText(2806, 73, 50, 50, 0, 0, Text))
          {
            lobbystatus1 = prime
            OutputDebug `n %lobbystatus1%
          }
    if (ok:=FindText(2806, 553, 50, 50, 0, 0, Text))
        {
            lobbystatus2 = prime
            OutputDebug `n %lobbystatus2%
        }
    if (lobbystatus2 != lobbystatus1)
      {
        OutputDebug `n one is prime other is non prime 
        OutputDebug `n %matchcount% done till ac num %set% , mode %my_mode%
        print("one is prime")
        IniWrite, %lobbystatus1%,%lobbystatus2% , status.ini,SectionName, prime_%set%
        matchcount = matchlimit++
        changeaccs()
      }
    if (lobbystatus2 = prime and  lobbystatus1 = prime)
      {
        OutputDebug `n both prime
        OutputDebug `n %matchcount% done till ac num %set% , mode %my_mode%
        print("prime")
        IniWrite, %lobbystatus1%,%lobbystatus2% , status.ini,prime_status, prime_%set%
        matchcount = matchlimit++
        changeaccs()
      }
    }
  }     
lobbycheck()
  {
    sleep 1000
    read_value()
    OutputDebug `n adv lobby check
    sx1 := "0"
   ,sy1 := "0"
   ,tx1 := "640"
   ,ty1 := "480"
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
   ,pos1 :=  "-x 3 -y 16"
   ,pos2 := "-x 643 -y 16"
   ,pos3 := "-x 1283 -y 16"
   ,pos4 := "-x 1923 -y 16"
   ,pos5 := "-x 2563 -y 16"
   ,pos6 := "-x 3    -y 496"
   ,pos7 := "-x 643  -y 496"
   ,pos8 := "-x 1283 -y 496"
   ,pos9 := "-x 1923 -y 496"
   ,pos10 := "-x 2563 -y 496"
   ,pos11 := "-x 3   -y 976"
   ,pos12 := "-x 643 -y 976"
   ,pos13 := "-x 1283 -y 976"
   ,pos14 := "-x 1923 -y 976"
   ,pos15 := "-x 2563 -y 976"
   ,pos16 := "-x 3   -y 1456"
   ,pos17 := "-x 643 -y 1456"
   ,pos18 := "-x 1283 -y 1456"
   ,pos19 := "-x 1923 -y 1456"
   ,pos20 := "-x 2563 -y 1456"
    sleep 1000
    error()
    while (i <= 10)
              {
                  if (i = 6)
                      {
                        b := "2"
                        ,a := "1"
                      }
                  sx := sx%a%
                  sy := sy%b%
                  tx := tx%a%
                  ty := ty%b%
                  ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *55 green.png     
                  if (errorlevel = 0)
                      {
                        ;OutputDebug `n %i% is in lobby
                      }
                  else
                      {
                          OutputDebug `n %i% is not in lobby fk
                          OutputDebug `n waiting 5 sec
                          sleep 5000
                          ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *55 green.png
                          if (errorlevel = 0)
                              {
                                OutputDebug `n %i% is in lobby
                              }
                          else
                            {	
                              OutputDebug `n still %i% is not in lobby :(
                              join = 1
                              ;isinhome()
                              lobbyfull = 0
                              tenaccopen()
                              return lobbyfull
                              break
                            }
                      }
                i++
                ,a++
              }
    lobbyfull = 1
    join = 0
    lobby = 1
    return lobbyfull
}
superinv()
    {
        ya := Clipboard 
        Clipboard := ""
        zz = 350
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
          }
      Clipboard := ""
      ;OutputDebug `n a1 %Clipboard%

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
          }
        Clipboard := ""
        ;OutputDebug `n a2 %Clipboard% 
        
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
          }
        Clipboard := ""
        ;OutputDebug `n a3 %Clipboard%
        
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
          }
        Clipboard := ""
        ;OutputDebug `n a4 %Clipboard%
        
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
          }
        Clipboard := ""
        ;OutputDebug `n b1 %Clipboard%
        
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
          }
          
        Clipboard := ""
        ;OutputDebug `n b2 %Clipboard%
        
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
          }
        Clipboard := ""
        ;OutputDebug `n b3 %Clipboard%
        
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
          }
          
        Clipboard := ""
        ;OutputDebug `n b4 %Clipboard%
        
        
        loop 4
            {
                ;OutputDebug `n %A_Index%, %a% 
                MouseMove	3182,125
                sleep %zz%	
                sleep %zz%	
                MouseClick, left,	3182,125
                sleep %zz%	
                MouseClick, left,	3053,155
                sleep %zz%	
                MouseClick, left,	2836,245 ;type
                sleep %zz%	
                Clipboard1 := a%A_Index%
                ;OutputDebug `n %Clipboard%
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
                MouseClick, left,	2965,300
            }
        loop 4
            {
                  MouseMove	3179,604
                  sleep %zz%	
                  sleep %zz%	
                  MouseClick, left,	3179,604
                  sleep %zz%	
                  MouseClick, left,	3053,634
                  sleep %zz%	
                  MouseClick, left,	2850,732
                  sleep %zz%	
                  Clipboard1 := b%A_Index%
                  ;OutputDebug `n %Clipboard%
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
                  MouseClick, left,	2964,784
            }
  }
crossfix()
    {
        ;OutputDebug `n checking for cross
        sleep 100
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, crossfix.png
        if (ErrorLevel = 0)
            {
              OutputDebug `n cross found
                x :=  FoundX
                y :=  FoundY
                 loop , 2
                {
                MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                BlockInput, On          ; BlockInput, off      
                MouseMove, x, y, 10,  
                sleep 100
                ;MouseClick, left, x, y
                MouseMove, 10, 10, 10, R
                sleep 100
                MouseMove, xpos, ypos
                BlockInput, off
                ;sleep 100
                ;OutputDebug `n now w8 for 55 sec
                ;sleep 55100
                }
            }
    }                                          
pressaccept()
    {
      MouseClick,left,2880,270,,10,,
      Sleep 50
      MouseClick,left,0,480,,10,,R
      Sleep 5000
      Text:="|<accept_check>5@1.00$40.3U00070T0000y1w0003s7k000DUT0000y0E0000U00000000000003y0007wzy001zzzs007zzzU00TzU"
      if (ok:=FindText(2825, 288, 30, 10, 0, 0, Text) and ok:=FindText(2825, 768, 30, 10, 0, 0, Text) )
        {
          MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
          loop 2
              {
                  MouseClick,left,320,270,,0,,
                  loop,4
                          {
                              MouseClick, left,640,0,,0,, R
                          }
                  MouseClick, left,320,750,,0,,
                  loop,4
                        {
                            MouseClick, left,640,0,,0,, R
                            Sleep 30
                        }
              }  
          MouseMove, xpos, ypos 
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
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 fixinv.png
        if (ErrorLevel = 0)
        OutputDebug `n  popout found
        while (ErrorLevel = 0)
                {
                   x :=  FoundX 
                   y :=  FoundY
                   MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                   BlockInput, On          ; BlockInput, off
                   MouseClick, left, x, y
                   MouseMove, 20, 30, 10, R
                   MouseMove, xpos, ypos
                   BlockInput, off
                   Sleep 20
                   ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 fixinv.png
                }
} 
update_client_check(dhkka)
{
      ;dhkka :: 0 is skip ,1 is csgo update, 2 is steam only
	if (dhkka = 1)
		play_now = 1
	Text:="|<>*150$39.0000003k0E10040G0840Z2GZ/Z50GH9psd2GNGc4sSQvqs002000000E000000000U"
	if (ok:=FindText(1280, 480, 1280, 480, 0, 0, Text) or play_now = 1)
	{
		MouseMove x,y
		OutputDebug `n update client check %play_now%
		Sleep 100
		print("updating")
		play_now = 0
		runwait kill_steam.bat 
		runwait Taskkill /IM vac.exe /F
		steam_1 = %steam_folder%Steam1.exe
		if !FileExist(steam_1)
			FileCopy,%steam_folder%Steam.exe, %steam_folder%Steam1.exe
		IniRead,arguments,status.ini,SectionName,arguments
		Run,steam1.exe %SectionName% %arguments% -login %ha%  -low  ,%steam_folder%,,steam_pid
                ;Run	%steam_folder%Steam1.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  -low
		Sleep 5000
		time_since_last_match := ""
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
			title := "@ Ready - Counter-Strike: Global Offensive @"
			title1 := "@ Updating Counter-Strike: Global Offensive @"
			WinGetTitle, Var, Ready
			WinGetTitle, Var1, pdating
			loop
			{
				If InStr(var,"Counter") or InStr(var1,"Counter")
				{
					If InStr(var,"Counter")
					{
						ControlGetPos, x, y, w, h, ,%var%
						x:= x+w
                                    ,y:= y +h
                                    ,title1 := var
						while( Var == title1)
						{
							x:= x-6
							y:= y-3
							Click, %X%, %Y%
							Sleep 50
							WinGetTitle, Var,Ready
						}
					}
					timer1++
					Sleep 1000
					if (timer1 = 800)
					{
						print("update ni hoea")
						break
					}
				}
                            ;click, 2009 ,1222  ; click close
				ControlSend,,send {Esc},Counter
				Text:="|<close>*110$22.XwNU9V02aIXCNM0dZMkU40U"
				if (ok:=FindText(1600, 1600, 1600, 1600, 0.11, 0.11, Text1))
				{ 
					X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
					MouseClick, left,%X%, %Y%,1,50,,
					sleep 500
					y := y + 60
					MouseMove x,y
					x = 0
				}
				
				Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU" ; are we home screen
				if (ok:=FindText(2103, 1191, 150000, 150000, 0.1, 0.1, Text))
				{
					X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
					Click, %X%, %Y%
					break
				}
				Text1:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
				if (ok:=FindText(2103, 1171, 700, 750, 0.1, 0.1, Text1))
				{ 
					OutputDebug `n old play game clicked
					X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
					MouseClick, left,%X%, %Y%,1,50,,
					sleep 500
					y := y + 60
					MouseMove x,y
					x = 0
				}
				Text:="|<>*120$26.3jvjbPxRpqzLf3jixrvsDRyyvrTUTRs"
				if (ok:=FindText(2103, 1171, 700, 750, 0.1, 0.1, Text))
				{ 
					OutputDebug `n new play game clicked
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
				if (ok:=FindText(1885, 1093, 150000, 150000, 0, 0, Text))
				{
					play_now = 1
					update_client_check("0") 
					return
				}
			}
		}
		sleep 5000
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
		SendRaw,`quit
		sleep 200
		send {enter}
		sleep 2000
		IniRead, map_name, status.ini,SectionName , map_name
		IniWrite, %Clipboard% %map_name% , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\test.cfg,echo ,
		run %steam_folder%Steam1.exe -app_stop 730 1
		sleep 5000
		run %steam_folder%Steam1.exe -shutdown
		Process, Exist, steam.exe
		while(errorlevel = 0)
		{
			Sleep 1000
			run %steam_folder%Steam1.exe -app_stop 730 1
			run %steam_folder%Steam1.exe -shutdown
			qwe++
			Process, Exist, steam.exe
			if (qwe >= 60)
			{
				runwait kill_steam.bat
				break
			}
		}
		IniRead,arguments,status.ini,SectionName,arguments
		Run,steam1.exe %SectionName% %arguments% -login %ha% -low  ,%steam_folder%,,steam_pid
                          ;Run	%steam_folder%Steam1.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  -low
		x = 0
		while (x = 0)
		{
			start_check()
			title := "Ready - Counter-Strike: Global Offensive"
			title2 := "Updating Counter-Strike: Global Offensive"
			WinGetTitle, Var, @ Ready
			WinGetTitle, Var1, @ Updating
			while  (title = var or title1 = var1)
			{
				if (Var == title1)
				{
					ControlGetPos, x, y, w, h, ,%var%
					x:= x+w
                                              ,y:= y +h
					while( Var = title1)
					{
						x:= x-6
						y:= y-3
						Click, %X%, %Y%
						Sleep 50
						WinGetTitle, Var, @ Ready
					}
				}
				timer1++
				Sleep 1000
				if (timer1 = 800)
				{
					print("update ni hoea")
					break
				}
			}
			click, 2009 ,1222
			Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
			if (ok:=FindText(2103, 1171, 700, 150, 0.15, 0.15, Text))
			{ 
				X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
				MouseClick, left,%X%, %Y%,1,50,,
				sleep 500
				y := y + 60
				MouseMove x,y
			}
			Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"
			if (ok:=FindText(2103, 1171, 800, 800, 0.2, 0.2, Text))
			{ 
				X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
				sleep 500
				y := y + 60
				MouseMove x,y
			}
		}
		Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"
		loop
		{
			start_check()	 
			if (ok:=FindText(2103, 1171, 500, 500, 0.2, 0.2, Text))
			{
				MouseClick, left,%X%, %Y%,1,50,,
				sleep 1000
				break
			}
			sleep 1000
		}
		SendRaw,``
		sleep 200
		SendRaw,`quit
		sleep 200
		send {enter}
		sleep 2000
		run %steam_folder%Steam1.exe -app_stop 730 1
		sleep 5000
		run %steam_folder%Steam1.exe -app_stop 730 1
		sleep 5000
		run %steam_folder%Steam1.exe -shutdown
		qwe = 0
		Process, Exist, steam.exe
		while(errorlevel = 0)
		{
			Sleep 1000
			qwe++
			Process, Exist, steam.exe
			if (qwe >= 60)
			{
				runwait kill_steam.bat
				runwait Taskkill /IM vac.exe /F
				break
			}
		}
		SET := SET - total_accounts_open
		OutputDebug `n OPENING FROM ac %set%			   									 
		newchangeaccs()
		
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
				ControlGetPos, x, y, w, h, ,%var%
				if (var := "Steam Login"  &&  w >= 1)
				{
                         Sleep 13000
					run %steam_folder%Steam.exe -shutdown
					Sleep 3000
					break
				}
				sleep 1000
				timer ++
				OutputDebug `n timer = %timer%
				if (timer = 300)
					break
			}
			WinGetText, yup,,Steam,
		}
		SET := SET - total_accounts_open
		newchangeaccs()
	}
}
update_client_check_old(dhkka)
	{
      ;dhkka :: 0 is skip ,1 is csgo update, 2 is steam only
      if (dhkka = 1)
        play_now = 1
        Text:="|<>*150$39.0000003k0E10040G0840Z2GZ/Z50GH9psd2GNGc4sSQvqs002000000E000000000U"
        if (ok:=FindText(1280, 480, 1280, 480, 0, 0, Text) or play_now = 1)
            {
                MouseMove x,y
                OutputDebug `n update client check %play_now%
                Sleep 100
                print("updating")
                play_now = 0
                runwait kill_steam.bat 
                runwait Taskkill /IM vac.exe /F
                steam_1 = %steam_folder%Steam1.exe
                if !FileExist(steam_1)
                FileCopy,%steam_folder%Steam.exe, %steam_folder%Steam1.exe
                IniRead,arguments,status.ini,SectionName,arguments
                Run,steam1.exe %SectionName% %arguments% -login %ha%  -low  ,%steam_folder%,,steam_pid
                ;Run	%steam_folder%Steam1.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  -low
                Sleep 5000
                time_since_last_match := ""
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
                          title := "@ Ready - Counter-Strike: Global Offensive @"
                          title1 := "@ Updating Counter-Strike: Global Offensive @"
                          WinGetTitle, Var, Ready
                          WinGetTitle, Var1, pdating
                          loop
                          {
                            If InStr(var,"Counter") or InStr(var1,"Counter")
                              {
                                If InStr(var,"Counter")
                                  {
                                    ControlGetPos, x, y, w, h, ,%var%
                                    x:= x+w
                                    ,y:= y +h
                                    ,title1 := var
                                    while( Var == title1)
                                          {
                                            x:= x-6
                                            y:= y-3
                                            Click, %X%, %Y%
                                            Sleep 50
                                            WinGetTitle, Var,Ready
                                          }
                                  }
                                timer1++
                                Sleep 1000
                                if (timer1 = 800)
                                {
                                  print("update ni hoea")
                                  break
                                }
                              }
                            ;click, 2009 ,1222  ; click close
                            ControlSend,,send {Esc},Counter
                            Text:="|<close>*110$22.XwNU9V02aIXCNM0dZMkU40U"
                            if (ok:=FindText(2103, 1171, 700, 750, 0.1, 0.1, Text1))
                              { 
                                  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                  MouseClick, left,%X%, %Y%,1,50,,
                                  sleep 500
                                  y := y + 60
                                  MouseMove x,y
                                  x = 0
                              }
                                
                            Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU" ; are we home screen
                            if (ok:=FindText(2103, 1191, 150000, 150000, 0, 0, Text))
                                {
                                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                    Click, %X%, %Y%
                                    break
                                }
                            Text1:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
                            if (ok:=FindText(2103, 1171, 700, 750, 0.1, 0.1, Text1))
                              { 
                                  OutputDebug `n old play game clicked
                                  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                  MouseClick, left,%X%, %Y%,1,50,,
                                  sleep 500
                                  y := y + 60
                                  MouseMove x,y
                                  x = 0
                              }
                            Text:="|<>*120$26.3jvjbPxRpqzLf3jixrvsDRyyvrTUTRs"
                            if (ok:=FindText(2103, 1171, 700, 750, 0.1, 0.1, Text))
                                { 
                                  OutputDebug `n new play game clicked
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
                            if (ok:=FindText(1885, 1093, 150000, 150000, 0, 0, Text))
                              {
                                  play_now = 1
                                  update_client_check("0") 
                                  return
                              }
                          }
                        }
                          sleep 5000
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
                          SendRaw,`quit
                          sleep 200
                          send {enter}
                          sleep 2000
                          IniRead, map_name, status.ini,SectionName , map_name
                          IniWrite, %Clipboard% %map_name% , %steam_folder%steamapps\common\Counter-Strike Global Offensive\csgo\cfg\test.cfg,echo ,
                          run %steam_folder%Steam1.exe -app_stop 730 1
                          sleep 5000
                          run %steam_folder%Steam1.exe -shutdown
                          Process, Exist, steam.exe
                          while(errorlevel = 0)
                              {
                                  Sleep 1000
                                  run %steam_folder%Steam1.exe -app_stop 730 1
                                  run %steam_folder%Steam1.exe -shutdown
                                  qwe++
                                  Process, Exist, steam.exe
                                  if (qwe >= 60)
                                  {
                                    runwait kill_steam.bat
                                    break
                                  }
                              }
                              IniRead,arguments,status.ini,SectionName,arguments
                              Run,steam1.exe %SectionName% %arguments% -login %ha% -low  ,%steam_folder%,,steam_pid
                          ;Run	%steam_folder%Steam1.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  -low
                          x = 0
                          while (x = 0)
                                    {
                                      start_check()
                                      title := "@ Ready - Counter-Strike: Global Offensive @"
                                      title2 := "@ Updating Counter-Strike: Global Offensive @"
                                      WinGetTitle, Var, @ Ready
                                      WinGetTitle, Var1, @ Updating
                                      while  (title = var or title1 = var1)
                                        {
                                          if (Var == title1)
                                            {
                                              ControlGetPos, x, y, w, h, ,%var%
                                              x:= x+w
                                              ,y:= y +h
                                              while( Var = title1)
                                                    {
                                                      x:= x-6
                                                      y:= y-3
                                                      Click, %X%, %Y%
                                                      Sleep 50
                                                      WinGetTitle, Var, @ Ready
                                                    }
                                            }
                                        timer1++
                                        Sleep 1000
                                        if (timer1 = 800)
                                          {
                                            print("update ni hoea")
                                              break
                                          }
                                        }
                                      click, 2009 ,1222
                                      Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
                                      if (ok:=FindText(2103, 1171, 700, 150, 0.15, 0.15, Text))
                                          { 
                                            X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                            MouseClick, left,%X%, %Y%,1,50,,
                                            sleep 500
                                            y := y + 60
                                            MouseMove x,y
                                          }
                                        Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"
                                        if (ok:=FindText(2103, 1171, 500, 500, 0, 0, Text))
                                            { 
                                                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                                sleep 500
                                                y := y + 60
                                                MouseMove x,y
                                            }
                                    }
                          Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"
                          loop
                                  {
                                    start_check()	 
                                    if (ok:=FindText(2103, 1171, 500, 500, 0, 0, Text))
                                        {
                                            MouseClick, left,%X%, %Y%,1,50,,
                                            sleep 1000
                                            break
                                        }
                                    sleep 1000
                                  }
                          SendRaw,``
                          sleep 200
                          SendRaw,`quit
                          sleep 200
                          send {enter}
                          sleep 2000
                          run %steam_folder%Steam1.exe -app_stop 730 1
                          sleep 5000
                          run %steam_folder%Steam1.exe -app_stop 730 1
                          sleep 5000
                          run %steam_folder%Steam1.exe -shutdown
                          Process, Exist, steam.exe
                          while(errorlevel = 0)
                              {
                                  Sleep 1000
                                  qwe++
                                  Process, Exist, steam.exe
                                  if (qwe >= 60)
                                  {
                                    runwait kill_steam.bat
                                    runwait Taskkill /IM vac.exe /F
                                    break
                                  }
                              }
                                SET := SET - total_accounts_open
                                OutputDebug `n OPENING FROM ac %set%			   									 
                                newchangeaccs()
                              
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
                       ControlGetPos, x, y, w, h, ,%var%
                      if (var := "Steam Login"  &&  w >= 1)
                      {
                         Sleep 13000
                        run %steam_folder%Steam.exe -shutdown
                        Sleep 3000
                        break
                      }
                     sleep 1000
                     timer ++
                     OutputDebug `n timer = %timer%
                     if (timer = 300)
                      break
                    }
                    WinGetText, yup,,Steam,
                }
                SET := SET - total_accounts_open
                newchangeaccs()
            }
    }
testing()
{
my_mode = 16

  Loop
  {
read_value()
            IniRead,arguments,status.ini,SectionName,arguments
            Run,steam.exe %SectionName% %arguments% -login %ha% %p%  -low  ,%steam_folder%,,steam_pid
}
  
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
          OutputDebug `n out from get score no								   
          teamwin = 8
          win = 8
          return
        }
    if( runfuntion = 0)  ;check must
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
          ,Clipboard := "ac"
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
          sleep 20
          while(i <= 10)
                    {	
                      sx := sx%a%
                      ,sy := sy%b%
                      ,tx := tx%a%
                      ,ty := ty%b%
                      RunWait, Capture2Text\Capture2Text_CLI.exe --screen-rect "%sx% %sy% %tx% %ty%"  --clipboard ,,Hide
                      ;OutputDebug `n "%sx% %sy% %tx% %ty%" "%clipboard%"
                      Value := Mod(i, 2)
                      if (value = 0)
                        {
                          b = 2
                          a++
                        }
                      else
                        {
                          b = 1
                        }
                     clipboard := StrReplace(clipboard, "`r`n")
                    , clipboard := StrReplace(clipboard,"g", "5")
                     ,clipboard := StrReplace(clipboard,"S", "5")
                     ;clipboard := RegExReplace(clipboard,E, "5")
                     ,clipboard := StrReplace(clipboard,"O", "0")
                     ,clipboard := StrReplace(clipboard,"D", "0")
                     ,clipboard := StrReplace(clipboard,"16", "15")
                    ,cts := clipboard
                    ;StringReplace,cts,cts,`r,,All
                    ;cts += 0
                    ;cts := cts + 0
                    if cts is integer 
                    {
                      if(cts >= getct or cts <= 3)
                      {
                        cts += 0
                          if ( cts > 0 and cts < 17 )
                          {	
                            ;OutputDebug `n ct score is %cts% or %clipboard%
                            getct := cts
                            break
                          }
                          else 
                          {
                            cts := "0"
                            cts += 0
                            ,getct := cts
                            ; OutputDebug `n else ct score is %cts% or %clipboard%
                            break
                          }  
                        }  
                      }
                      i++
                    }
        OutputDebug `n ct= cts"%cts%" copy"%clipboard%" real"%getct%"  
        ;return ; comment this or if else with mode selcetion    
        sx1 := "324"   ;t 
        ,sy1 := "31"
        ,tx1 := "341"
       , ty1 := "43"
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
            RunWait, Capture2Text\Capture2Text_CLI.exe --screen-rect "%sx% %sy% %tx% %ty%"  --clipboard ,,Hide
            ;OutputDebug `n "%sx% %sy% %tx% %ty%" "%clipboard%"
            Value := Mod(i, 2)
            if (value = 0)
                {
                  b = 2
                  a++
                }
                else
                {
                  b = 1
                }
      clipboard := StrReplace(clipboard, "`r`n")
      ,clipboard := StrReplace(clipboard,"g", "5")
      ,clipboard := StrReplace(clipboard,"S", "5")
      ;clipboard := RegExReplace(clipboard,E, "5")
      ,clipboard := StrReplace(clipboard,"O", "0")
      ,clipboard := StrReplace(clipboard,"D", "0")
      ,clipboard := StrReplace(clipboard,"16", "15")

 ;     OutputDebug `n  "%clipboard%"
 ;           Sleep 10
;      OutputDebug `n  ------------
      tss := clipboard
      ;StringReplace,tss,tss,`n,,All
      ;tss += 0
    if tss is integer
      {  
        if(tss >= gett or tss <= 3)
        {
            tss += 0
			if(tss > 0 and tss < 17)
			{
				;OutputDebug `n ts score is %tss% or %clipboard%
                gett := tss
                break
            }
            else
            {
            tss = 0
            tss += 0
            gett := tss
            break
           ; OutputDebug `n else t score is %tss% or %clipboard%
            
            }
        }    
      }
      i++      
	}
    OutputDebug `n t tss"%tss%" copy"%clipboard%" real"%gett%"
    if (my_mode = 16)
      {
        if (gett >=14 or getct >=14) and (gett <=2 or getct <=2 ) and (wins = 6)
        {
          OutputDebug `n t%gett% ct%getct%
          wins++
          OutputDebug `n wins %wins%++
        }
      }
        return
    } ;return ; needed for 16-0
tss := gett
,cts := getct
	if ( tss <=14 or cts <=14) and (tss >=0 or cts >=0 )
{		
  skiphftm = 1
	if (tss >= cts )
	{	
    wins = 7
		teamwin = 7
		if (cts <= 13)
		{	
			fixscore = 1
			if (t = "up")
            {
				;updis()
               dndis() 
              }
			else
            {
              ;updis()
				dndis()
              }
		}
		else
		{
			if (t = "up")
            {
				;updis()
               dndis()
			}
            else
            {
              updis()
				;dndis()
            }    
		}
		fixscore = 0
		getscore()
		return
	}
	if (tss < cts)
	{
	wins = 7
		teamwin = 7
		if (tss <= 13)
		{	
			fixscore = 1 
			if (t = "up")
            {
				;updis()
               dndis()
              }
			else
            {
              updis()
				;dndis()
              }
		}
		else
		{
			
			if (t = "up")
            {
				;updis()
               dndis()
              }
			else
            {
              updis()
				;dndis()
              }
		}
        fixscore = 0
		getscore()
		return
	}
	
    skiphftm = 0
	}
    else
    {
      OutputDebug `n 2703
      print("score ocr")
    }  
;clearvar()
}
getteam()
  {
    OutputDebug `n getteam function
    Text:="|<t>*252$26.00000000000000000Dw007zzk3zzw0zzz0Dzzs3zzz0Tzzs7zzy0zzzkDzzw3zzz0zzzsDzzy3zzzUU"
    if (ok:=FindText(1600, 406, 1600, 60, 0, 0, Text))
      {
        t = up
        OutputDebug `n t.gun t = %t%
        get := ""
        return
      }
    else
      {
        if (ok:=FindText(1600, 885, 1600, 60, 0, 0, Text))
          {
            t = down
            OutputDebug `n t.gun t = %t%
            get := ""
            return
          }
      }
    Text:="|<ct>*226$21.00080000000000000Dzs3zz0Tzs3zzUTzw1zzkDzy0zzk7zz0zzs4"
    if (ok:=FindText(1600, 406, 1600, 60, 0, 0, Text))
      {
        t = down
        OutputDebug `n ct.gun t = %t%
        get := ""
        return
      }
  else
    {
      if (ok:=FindText(1600, 885, 1600, 60, 0, 0, Text))
        {
          t = up
          OutputDebug `n ct.gun t = %t%
          get := ""
        return
        }
      }
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
              
              RunWait, Capture2Text\Capture2Text_CLI.exe --screen-rect "%sx% %sy% %tx% %ty%"  --clipboard ,,Hide
              clipboard := StrReplace(clipboard, "`r`n")
              get := clipboard 
                  OutputDebug `n team %get%
                got := get
                  
                      if( i <=5)
                        {
                          a++
                          b = 1
                          If InStr(get,"T", true) or InStr(get,"C", true) or InStr(get,"G", true)
                              {
                                StringGetPos, pos, get, T
                                if pos != 0
                                get := "CT"
                                StringGetPos, pos, get, C
                                if pos = 0
                                get := "CT"
                                StringGetPos, pos, get, G
                                if pos = 0
                                get := "CT"
                                If InStr(get,"CT")
                                  ;If (got = gott)
                                  {
                                      ;OutputDebug `n t's are upper
                                      t = down
                                    break
                                  }	
                                else
                                  {
                                      t = up
                                      ;OutputDebug `n t's are down
                                    break
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
                        get := "CT"
                      StringGetPos, pos, get, C
                      if pos = 0
                        get := "CT"
                      StringGetPos, pos, get, G
                      if pos = 0
                        get := "CT"
						If InStr(get,"CT")
						{
							;OutputDebug `n t's are Down
							t = up
                            break
						}	
                      else
						{
							t = down
							;OutputDebug `n t's are up
                            break
						}
					}
              a--
			}
      i++
      t = no
	}
    OutputDebug `n t = %t%
    get := ""
  }    
halftime()
  {
    Text:="|<15>*130$20.1s00S007U01sTsS7y7VzVsTsS7y7U0Vs88S727VsVsS8TzW7zsVsy8S7W7U0Vs08T06"
    if (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
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
home()
  {
      Text:="|<has medal>*175$8.zyT3Us77lzzzzs"
      ;Text:="|<has medal>*154$26.zzzzzzzzzzxzzzzDzzzVzzzkDzzw3zzzVzzzsTzzzzzzznzzzzzzzzzzzzzzy"
      if (ok:=FindText(1700, 380, 1780, 580, 0, 0, Text))
        {  
          X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
          Click, %X%, %Y%
          while (ok:=FindText(1700, 380, 1780, 580, 0, 0, Text))
                  {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                  }
          Sleep 1000
          Text:="|<get medal>*160$14.X0EU4dn24mbA8HU"
          while (ok:=FindText(1780, 480, 1680, 480, 0, 0, Text))
                  {
                      X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                      Click, %X%, %Y%
                      sleep 500
                      x = x + 20
                      Click, %X%, %Y%
                  }
          sleep 1000
          Text:="|<close_medal>*104$23.lyAl2ME2ImYQtZU9H+lkU40U"
          while (ok:=FindText(1700, 480, 1780, 580, 0, 0, Text))
                  {
                    X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                    Click, %X%, %Y%
                  }
          }
      Text:="|<dangerlobby>*122$8.kvavBq7zU"
      if (ok:=FindText(1280, 480, 1280, 480, 0, 0, Text))
        {
          OutputDebug `n danger zone lobby detected
          Text:="|<playbutton>*136$27.zzzzzzUTzzk0zzs01zy007zU00Ts001z000Dk000y0E07U3U0Q0T03U3y0Q0Ts3U3s0Q0Q03k200y0007s001z000Dw003zk00zz00Dzy07zU"
          while (ok:=FindText(2584, 480, 100, 480, 0, 0, Text))
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
    while (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
            {
              X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
              Text:="|<exit_button>*65$14.zzs0S07U9s2S0VU0M060XU9s0S07sDzzy"
              while (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
                      {
                        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                        MouseClick, left,%X%, %Y%,1,50,,
                      }
              Text:="|<lobby/5>*155$7.dhqPr7"
              if (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
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
changeaccs()
  {   
    cd = 0
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, cd_bar.png
    if (ErrorLevel = 0)
        {
          cd = 1
          OutputDebug `n its cd
        }
    if (cd = 1 or matchcount >= matchlimit)
        {
          matchcount = 0
          write_value()
          runwait kill_steam.bat
          runwait Taskkill /IM vac.exe /F
          sleep 3000
          time_since_last_match := ""
          if (rank_open = 1 )
              set := set - 5
         newchangeaccs()
         join = 1
         return
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
   ,pos1 :=  "-x 3 -y 16"
   ,pos2 := "-x 643 -y 16"
   ,pos3 := "-x 1283 -y 16"
   ,pos4 := "-x 1923 -y 16"
   ,pos5 := "-x 2563 -y 16"
   ,pos6 := "-x 3    -y 496"
   ,pos7 := "-x 643  -y 496"
   ,pos8 := "-x 1283 -y 496"
   ,pos9 := "-x 1923 -y 496"
   ,pos10 := "-x 2563 -y 496"
   ,pos11 := "-x 3   -y 976"
   ,pos12 := "-x 643 -y 976"
   ,pos13 := "-x 1283 -y 976"
   ,pos14 := "-x 1923 -y 976"
   ,pos15 := "-x 2563 -y 976"
   ,pos16 := "-x 3   -y 1456"
   ,pos17 := "-x 643 -y 1456"
   ,pos18 := "-x 1283 -y 1456"
   ,pos19 := "-x 1923 -y 1456"
   ,pos20 := "-x 2563 -y 1456"
	runwait kill_steam.bat
	runwait Taskkill /IM vac.exe /F ,,hide
	if (set <= sold_accs)
		set := sold_accs + 1
	i = 1
	
	Index := set
	if index <= 0
		Index = 1
	OutputDebug `n OPENING FROM ac %set%
	delay := set*100
	if delay < 5000
		delay = 5000
	if delay > 20000
		delay = 20000
	
	x1 := placing("c" , "x")
	y1 := placing("c" , "y")
	loop
	{
		p := pos%i%
		FileReadLine, ha,username.txt, %Index%
		if (ErrorLevel = 1)
          {
			set = 1
			Index := set
			i = 1
			if FileExist("print.exe")
				RunWait print.exe
			write_value()
			IniRead,shutdown,status.ini,SectionName,shutdown
			if(shutdown = 1)
				Shutdown, 6
          }
		else       
          { 
			IniRead,arguments,status.ini,SectionName,arguments
			Run,steam.exe %SectionName% %arguments% -login %ha% %p%  -low  ,%steam_folder%,,steam_pid
            ;Run	%steam_folder%steam.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  %p%  -low 
			Start_Time := A_TickCount
			wait_time := A_TickCount - Start_Time
			while (wait_time < delay )
			{
				WinGetText, yup,,Steam,
				IfInString,yup,pdate
				{
                  ;update_client_check("2")
                  ;return
				}
				ifWinExist, vac.exe
					WinClose, vac.exe
				ControlClick , OK, VAC bypass
				ControlClick , Close, @ Steam
				ControlClick , Close, Steam
				IF Process, Exist, WerFault.exe
					run Taskkill /IM WerFault.exe.exe /F ,,hide
				wait_time := A_TickCount - Start_Time
			}
			i++
			if (i = i_value)
			{
				set := Index + 1
				break	
			}
			Index++
			Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
			if (ok:=FindText(2103, 1171, 700, 150, 0.15, 0.15, Text))
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
	changeaccs()
	Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
	if (ok:=FindText(2103, 1171, 700, 150, 0.15, 0.15, Text))
	{ 
		play_now = 1 
		update_client_check("0")
		return
	}
	Text:="|<restart_steam>*135$25.1UkkCrnirPxzMA77hizxqvTSvQUkxk"
	if (ok:=FindText(1959, 1127, 150, 150, 0, 0, Text))
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
		error()
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
			matchcount = matchlimit++
            Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /convert=rank\rank_%set%.png
        }
		csgo_size_check()
		update_client_check("0")
		changeaccs()
                ;if (timer = 560)
                  ;{
                    ;break
                  ;}
		Text:="|<close>*110$22.XwNU9V02aIXCNM0dZMkU40U"
		while (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
			x =  0
		}
		Text:="|<missing file>*125$10.zzzzzzzzzztLjQJvLhSpvLhTzzzzzzzzzzzzzzzzzy"
		if (ok:=FindText(2036, 1025, 150, 500, 0, 0, Text))
		{
			play_now = 1 
			update_client_check("0")
			return
		}
		Text:="|<retry connection>*122$29.zzzzz1UUEGtTniJmzbQsA7C3qvyRjirwvjQUNrDzzzzw"
		if (ok:=FindText(1828, 1118, 1500, 1500, 0, 0, Text))
		{
			SET := SET - total_accounts_open
			newchangeaccs()
			break
		}
		Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
		if (ok:=FindText(2103, 1171, 700, 150, 0.15, 0.15, Text))
		{ 
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			MouseClick, left,%X%, %Y%,1,50,,
			sleep 500
			y := y + 60
			MouseMove x,y
			x = 0
		}
		Text:="|<hidden.play_game>*82$59.3jvjjnxvv0vTfizPpnaxqzLfxzfbBsRxrjv6vJM7vsDTrg6erjrrSzqvhJjTUTRznjfP1"
		if (ok:=FindText(2121, 1246, 150, 150, 0.1, 0.1, Text))
		{
			play_now = 1 
			update_client_check("0")
			return
		}
		title := "@ Ready - Counter-Strike: Global Offensive @"
		title1 := "@ Updating Counter-Strike: Global Offensive @"
		WinGetTitle, Var, @ Ready
		WinGetTitle, Var1, @ Updating
		if (exec = 0)
		{
			WinGetTitle, Var2, @ Steam - Error @
			if  (Var2 :="@ Steam - Error @")
				print("error")
			WinGetTitle, Var3, @ Steam - Warning @
			if  (Var3 :="@ Steam - Warning @")
				print("error")
			exec = 1
		}
		if  (title = var or title1 = var1)
		{
			update_client_check("1")
			return
		}
		Text:="|<restart_steam>*135$25.1UkkCrnirPxzMA77hizxqvTSvQUkxk"
		if (ok:=FindText(1959, 1127, 150, 150, 0, 0, Text))
		{
			play_now = 1 
			update_client_check("0")
			return
		}
		Text:="|<new_settings>*104$26.zzzzzz01zzU0Dzs03zy00zzU0Dzs03zy00zzU0Dz003zk00zc00Tk0Dzw03zz3kzzswTzyD7zz3kzzk0Dzw03zzc5zzz3zzzkzzzzzzzzzzzs"
		while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
			Sleep 100
			z := y - 200
			Click %X%, %z%
			x = 0
		}
		Text:="|<new settings>3@1.00$12.8484M6QCHm1U1UU"
		if (ok:=FindText(x1, y1, "323", "248", "0", "0", Text))
		{
			OutputDebug `n settings found break
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
		}
		sleep 400
		timer++  
		Text:="|<close>*110$22.XwNU9V02aIXCNM0dZMkU40U"
		while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
		{
			X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
			Click, %X%, %Y%
			x = 0
            MouseMove 10,10,0,r
		} 
                  ; x = 0 likhna jrui he ethe 
	}
	OutputDebug `n loop break
	tenaccopen_check()
      ;matchcount = matchlimit++
	IniRead,my_mode,status.ini,SectionName,my_mode
	tenaccopen()
	if(my_mode == "pr2")
	{
          make_pr2_ini()
          check_for_pr1()
	}
	else
	{
          check_for_pr1()
          Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /convert=rank\rank_%set%.png
	}
	Join = 1
	write_value()
	changeaccs()
	;RunWait, video_adv.bat, %steam_folder%userdata
	;click_settings_then_video()
}
tenaccopen()
    {
      read_value()
      OutputDebug `n CHKING IF all accs are open
      sx1 := "14"
      ,sy1 := "198"
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
      ,i = "1"
      ,b = "1"
      ,a = "1"
      ,pos1 :=  "-x 3 -y 16"
      ,pos2 := "-x 643 -y 16"
      ,pos3 := "-x 1283 -y 16"
      ,pos4 := "-x 1923 -y 16"
      ,pos5 := "-x 2563 -y 16"
      ,pos6 := "-x 3    -y 496"
      ,pos7 := "-x 643  -y 496"
      ,pos8 := "-x 1283 -y 496"
      ,pos9 := "-x 1923 -y 496"
      ,pos10 := "-x 2563 -y 496"
      ,pos11 := "-x 3   -y 976"
      ,pos12 := "-x 643 -y 976"
      ,pos13 := "-x 1283 -y 976"
      ,pos14 := "-x 1923 -y 976"
      ,pos15 := "-x 2563 -y 976"
      ,pos16 := "-x 3   -y 1456"
      ,pos17 := "-x 643 -y 1456"
      ,pos18 := "-x 1283 -y 1456"
      ,pos19 := "-x 1923 -y 1456"
      ,pos20 := "-x 2563 -y 1456"
      ,Text:="|<in_match_check>70@0.79$8.67tyNa1wDUNaTbsMU"
      start_check()
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
        ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png     
        if (errorlevel = 0)
            {
             ;OutputDebug `n found csgo @ position %i% in menu
            }
        else if (ok:=FindText(sx, sy, "150", "150", "0", "0", Text))
            {
              OutputDebug `n found csgo @ position %i% in game
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
              ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *150 tv.png     
              if (errorlevel = 0)
                {
                  OutputDebug `n found csgo @ position %i% in 2nd try
                }
            else
                {
                  csgo_size_check()
                    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *2 whitescreen.png
                    while (ErrorLevel = 0)
                            {
                              OutputDebug `n white screen  @ %i%
                              FoundX := FoundX+5 ; there maybe a problem
                              ,FoundY := FoundY+6
                              Click %FoundX%, %FoundY%
                              sleep 1000
                              SendEvent, {up}
                              sleep 39
                              SendEvent, {enter}
                              Sleep 1000
                              IF Process, Exist, WerFault.exe
                                run Taskkill /IM WerFault.exe.exe /F ,,hide
                              Sleep 1000
                              ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *2 whitescreen.png
                            }
                  OutputDebug `n cant find csgo @ position %i%
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
                  result := set - diff
                  FileReadLine, users, username.txt, %result%
                  p := pos%i%
                  IniRead,arguments,status.ini,SectionName,arguments
                  Run,steam.exe %SectionName% %arguments% -login %users% %p%  -low  ,%steam_folder%,,steam_pid
                  ;Run	%steam_folder%steam.exe -inhibitbootstrap -single_core -login %users% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe  -d3d9ex -nocrashdialog -h 480 -w 640  %p% -low 
                  sleep  10000
                  timer = 0
                  ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png     
                  while (errorlevel != 0)
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
                          starterror()
                          Text:="|<play_game>*144$27.zzzzy2zgtrLsrSuzLLkLmxyyy3jrrrRyy1xjzzzzw"
                          if (ok:=FindText(2103, 1171, 700, 150, 0.15, 0.15, Text))
                            {
                                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                MouseClick, left,%X%, %Y%,1,50,,
                                sleep 500
                                MouseMove 5,5
                                play_now = 1
                            }
                        if (timer = 70) ; 150 c
                            {
                                matchcount = matchlimit++
                                set := set - total_accounts_open
                                changeaccs()
                                return
                            }
                        timer++
                        ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png    
                        }
                }
          }
      i++
      ,a++
      }
      if (swap_accs = 1)
      swap_accs = 2
    }
tenaccopen_check()
{
    OutputDebug `n CHKING IF all accs are open
    sx1 := "14"
   ,sy1 := "198"
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
   ,pos1 :=  "-x 3 -y 16"
   ,pos2 := "-x 643 -y 16"
   ,pos3 := "-x 1283 -y 16"
   ,pos4 := "-x 1923 -y 16"
   ,pos5 := "-x 2563 -y 16"
   ,pos6 := "-x 3    -y 496"
   ,pos7 := "-x 643  -y 496"
   ,pos8 := "-x 1283 -y 496"
   ,pos9 := "-x 1923 -y 496"
   ,pos10 := "-x 2563 -y 496"
   ,pos11 := "-x 3   -y 976"
   ,pos12 := "-x 643 -y 976"
   ,pos13 := "-x 1283 -y 976"
   ,pos14 := "-x 1923 -y 976"
   ,pos15 := "-x 2563 -y 976"
   ,pos16 := "-x 3   -y 1456"
   ,pos17 := "-x 643 -y 1456"
   ,pos18 := "-x 1283 -y 1456"
   ,pos19 := "-x 1923 -y 1456"
   ,pos20 := "-x 2563 -y 1456"
    start_check()
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
              ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png     
              if (errorlevel = 0)
                {
                  ;OutputDebug `n found csgo @ position %i%
                }
              else
                {
                    ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *150 tv.png     
                    if (errorlevel = 0)
                      {
                        OutputDebug `n found csgo @ position %i% in 2nd try
                      }
                    else
                      {
                        OutputDebug `n cant find csgo @ position %i%
                        sleep 20000 ; j kuj na labea 
                      }
                  }
              i++
              ,a++
          }
}

click_settings_then_video()
{
	Text:="|<setting>*127$16.zzzwDzkzv3T00w03kwDXlyD7kwD00w03v3TwDzkzzzy"
	while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
	{
		X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
		Click, %X%, %Y%
	}
	Text:="|<video>*82$32.zzzzzzv7TzzyFbzzzY00Tzw007zz801zzm00Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000DzzzzzzzzzzU"
	while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
	{
		X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
		Click, %X%, %Y%
	}
	Text:="|<csgo>*116$26.zzzzzzzzzzzzzzzzzzzzzzzzzzzzDzzzUTzzk7zzw3zzz3zwkkkl0A88C320vkK4C41U0DyPzzziTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
     while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
	{
		X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
		Click, %X%, %Y%
	}
}
mode_change()
{
  if (my_mode != "pr2")
  {
  Text:="|<unranked>36@0.81$8.0Dw0D7ta3VkM01UM003z08"
  if (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
     {
       my_mode = 16
       matchlimit = 3
     }
     else
    {
      my_mode = 15
      IniRead, matchlimit, status.ini,SectionName , matchlimit
    }
   }
}
crash_check()
{
    ;OutputDebug `n crash check
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
   ,pos1 :=  "-x 3 -y 16"
   ,pos2 := "-x 643 -y 16"
   ,pos3 := "-x 1283 -y 16"
   ,pos4 := "-x 1923 -y 16"
   ,pos5 := "-x 2563 -y 16"
   ,pos6 := "-x 3    -y 496"
   ,pos7 := "-x 643  -y 496"
   ,pos8 := "-x 1283 -y 496"
   ,pos9 := "-x 1923 -y 496"
   ,pos10 := "-x 2563 -y 496"
   ,pos11 := "-x 3   -y 976"
   ,pos12 := "-x 643 -y 976"
   ,pos13 := "-x 1283 -y 976"
   ,pos14 := "-x 1923 -y 976"
   ,pos15 := "-x 2563 -y 976"
   ,pos16 := "-x 3   -y 1456"
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
                  OutputDebug `n   csgo  %i% is not running
                  rerun = 1
                  delay := delay+15000
                  diff := i_value - i
                  result := set - diff
                  FileReadLine, ha, username.txt, %result%
                  p := pos%i%
                  IniRead,arguments,status.ini,SectionName,arguments
                  Run,steam.exe %SectionName% %arguments% -login %ha% %p%  -low  ,%steam_folder%,,steam_pid
                  ;Run %steam_folder%steam.exe -inhibitbootstrap -single_core -login %ha% -applaunch 730 -silent -novid -nocache -nohltv -softparticlesdefaultoff -nopreload -hijack -limitvsconst  +mat_disable_fancy_blending -r_emulate_g -refresh 10 -nominidumps -safe -noforcemparms -nomsa -nojoy -noaafonts -nosound -threads 1 -noshader -safe -d3d9ex -nocrashdialog -h 480 -w 640 %p% -low 
                  Sleep %delay%
                  StartTime := A_TickCount
                  ElapsedTime := A_TickCount - StartTime
                  de := delay/1000
                  OutputDebug `n sleep for %de%sec
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
                          while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
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
                                               if (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
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
                          while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                               {
                                 X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                 Click, %X%, %Y%
                               }
                           Text:="|<play>*136$24.zs7zzU1zy00Tw00Ds007k003k003U001U401070007k007w007y007k00700U401U001k003k003s007w00Dy00TzU1zzs7zU"
                           while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                                     {
                                       X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                       Click, %X%, %Y%
                                     }
                           ;Text:="|<deathmatch>*86$45.zzzzzzzz7zvzzzTkztDzntyI000003mU10820SI0810G3kU40880Tzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz00000007zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw"
                           ;while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                                     ;{
                                       ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                       ;Click, %X%, %Y%
                                     ;}
                           ;Text:="|<dust 11>*95$32.zzzzzsDzvs6tT4TPiK17qvZVvxitN6zPiqQjqsQ0Ms7zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"
                           ;while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                                     ;{
                                       ;X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                       ;Click, %X%, %Y%
                                     ;}
                           Text:="|<go>*68$15.1s870AtVzA8tU7AAtU700s4"
                           while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                                     {
                                       X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                       MouseClick, left, %X%, %Y%
                                     }
                           Text:="|<go>*69$17.zzz1sC1kAnaNzAmCNUQnAta1kA3UTzzk"
                           while (ok:=FindText(1600, 960, 1600, 960, 0, 0, Text))
                                     {
                                       X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                                       MouseClick, left, %X%, %Y%
                                     }
                        }
                }
              else
                {
                  ;OutputDebug `n   csgo  %i% is running
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
              ;OutputDebug `n %pids%
              ;OutputDebug `n %pids0%
              i = 1
              Loop %total_accounts_open%
                  {
                    apid := value%i%
                    ;OutputDebug `n %apid%
                    if (apid = "")
                      {
                        OutputDebug `n done injecting total %i%
                        return
                      }
                    v := HasVal(avalue, apid) 
                    OutputDebug `n v=%v%
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
      if (ok:=FindText(1600, 1600, 1600, 1600, 0, 0, Text))
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
print(comment)
  {
    ifnotexist, logs   ; Location Of The Saved Capture
    fileCreateDir, logs   ; Location Of The Saved Capture
    if(comment := "")
      {
        Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /convert=logs\set_%set%.match_%matchcount%_nocomment_%A_TickCount%.png
      }
    else
      {
        Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /convert=logs\set_%set%.match_%matchcount%_%comment%_%A_TickCount%.png
      }
    ;Run, %A_ScriptDir%\IrfanView\i_view64.exe /capture=1 /convert=ranks\set_%set%.match_%matchcount%_$U(`%Y-`%m-`%d_`%H`%M`%S).png
  }
placing(one , two) ; one(a = start point b = end point c = center point) two (x or y)
  {
    place_1_a_x := "3" 
    ,place_1_b_x := "643"
    ,place_1_c_x :=  "323"
    
    ,place_1_a_y :=  "16"
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
    ,place_3_c_x := "248"
    
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
    this := place_%total_accounts_open%_%one%_%two%
    return this
  }
DateFromTicks(Ticks)
{
  Years := 1, Months := 1
  Loop, 
    {
      CurYear := IsLeapYear(A_Index) ? 316224000000000 : 315360000000000  ; 366/365 days
      if (Ticks - CurYear >= 0)
        {
          Ticks -= CurYear
          Years++
        }
      else
      break
    }
  Loop,
    {
      if (A_Index = 2)
      CurMonth := IsLeapYear(Years) ? 25056000000000 : 24192000000000  ; 29/28 days
      else if A_Index in 1,3,5,7,8,10
        CurMonth := 26784000000000 ; 31 days
      else
        CurMonth := 25920000000000 ; 30 days
      if (Ticks - CurMonth >= 0)
        {
          Ticks -= CurMonth
          Months++
        }
    else
      break
    }
  Days := (Ticks // 864000000000) + 1
  ,Ticks -= (Days - 1) * 864000000000
  ,Hours := Ticks // 36000000000
  ,Ticks -= Hours * 36000000000
  ,Minutes := Ticks // 600000000
  ,Ticks -= Minutes * 600000000
  ,Seconds := Ticks // 10000000
  ,Ticks -= Seconds * 10000000
  return SubStr("" Years, -3)
 . SubStr("" Months, -1)
 . SubStr("" Days, -1)
 . SubStr("" Hours, -1)
 . SubStr("00" Minutes, -1)
 . SubStr("00" Seconds, -1)
  }
; ==============================================================================================
TicksFromDate(Date)
{
  local Ticks := 0, Time := SplitDate(Date)
  Loop, % Time.Year - 1
    {
      Ticks += IsLeapYear(A_Index) ? 316224000000000 : 315360000000000  ; 366/365 days
    }
  Loop, % Time.Month - 1
    {
    if (A_Index = 2)
      Ticks += IsLeapYear(Time.Year) ? 25056000000000 : 24192000000000  ; 29/28 days
    else if A_Index in 1,3,5,7,8,10
      Ticks += 26784000000000 ; 31 days
    else
      Ticks += 25920000000000 ; 30 days
    }
  Ticks += (Time.Day - 1) * 864000000000
  ,Ticks += Time.Hour * 36000000000
  ,Ticks += Time.Minute * 600000000
  ,Ticks += Time.Second * 10000000
  return Ticks
}
; ==============================================================================================
; https://en.wikipedia.org/wiki/Leap_year#Algorithm
; Does not calculate leap seconds which are, "irregularly spaced and unpredictable."
; https://en.wikipedia.org/wiki/Leap_second
; Uses the Gregorian calendar, but extends it back prior to 1582.
IsLeapYear(Year)
{
  if (Mod(Year, 4))
    return 0
  if (Mod(Year, 100))
    return 1
  if (Mod(Year, 400))
    return 0
  return 1
}
; ==============================================================================================
SplitDate(Date)
{
  return {Year:   SubStr(Date, 1, 4)
        , Month:  Substr(Date, 5, 2)
        , Day:    Substr(Date, 7, 2)
        , Hour:   SubStr(Date, 9, 2)
        , Minute: SubStr(Date, 11, 2)
        , Second: SubStr(Date, 13, 2)}
}

pidListFromName(name) {
	static wmi := ComObjGet("winmgmts:\\.\root\cimv2")
	
	if (name == "")
		return

	PIDs := []
	for Process in wmi.ExecQuery("SELECT * FROM Win32_Process WHERE Name = '" name "'")
		PIDs.Push(Process.processId)

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
get  :=ocr([sx5,sy2,l,b]) 
}

ping_check()
{
  k =
Server = www.google.co.in  ; network server name/ip
ServerDown =          ; clearing out variable

;Settimer, ServerCheck, 5000  ; currently set to 5 secs for testing

;ServerCheck:
Target = %Server% -n 1 -w 250 
Run, %comspec% /c ping %Target% > Ping.log, , Hide
Sleep, 250
FileRead, FileContent, Ping.log 
If FileContent not contains Reply from ; or another error 
{
  ;MsgBox, %Server% not responding  ; for testing
  ;ServerDown++ ; increments up the timeout count
}
Else
{
  k = 1
  ;MsgBox, %Server% is up  ; for testing
  ;ServerDown = ; clears the timeout count in case there was any on it
}
FileDelete, Ping.log
Return k
}




FindText(x,y,w,h,err1,err0,text)
{
  xywh2xywh(x-w,y-h,2*w+1,2*h+1,x,y,w,h)
  if (w<1 or h<1)
    return, 0
  bch:=A_BatchLines
  SetBatchLines, -1
  ;--------------------------------------
  GetBitsFromScreen(x,y,w,h,Scan0,Stride,bits)
  ;--------------------------------------
  sx:=0, sy:=0, sw:=w, sh:=h, arr:=[]
  Loop, Parse, text, |
  {
    v:=A_LoopField
    IfNotInString, v, $, Continue
    comment:="", e1:=err1, e0:=err0
    ; You Can Add Comment Text within The <>
    if RegExMatch(v,"<([^>]*)>",r)
      v:=StrReplace(v,r), comment:=Trim(r1)
    ; You can Add two fault-tolerant in the [], separated by commas
    if RegExMatch(v,"\[([^\]]*)]",r)
    {
      v:=StrReplace(v,r), r1.=","
      StringSplit, r, r1, `,
      e1:=r1, e0:=r2
    }
    StringSplit, r, v, $
    color:=r1, v:=r2
    StringSplit, r, v, .
    w1:=r1, v:=base64tobit(r2), h1:=StrLen(v)//w1
    if (r0<2 or h1<1 or w1>sw or h1>sh or StrLen(v)!=w1*h1)
      Continue
    ;--------------------------------------------
    mode:=InStr(color,"*") ? 1:0
    color:=StrReplace(color,"*") . "@"
    StringSplit, r, color, @
    color:=mode=1 ? r1 : ((r1-1)//w1)*Stride+Mod(r1-1,w1)*4
    n:=Round(r2,2)+(!r2), n:=Floor(255*3*(1-n))
    StrReplace(v,"1","",len1), len0:=StrLen(v)-len1
    VarSetCapacity(allpos, 1024*4, 0), k:=StrLen(v)*4
    VarSetCapacity(s1, k, 0), VarSetCapacity(s0, k, 0)
    ;--------------------------------------------
    if (ok:=PicFind(mode,color,n,Scan0,Stride,sx,sy,sw,sh
      ,v,s1,s0,Round(len1*e1),Round(len0*e0),w1,h1,allpos))
      or (err1=0 and err0=0
      and (ok:=PicFind(mode,color,n,Scan0,Stride,sx,sy,sw,sh
      ,v,s1,s0,Round(len1*0.05),Round(len0*0.05),w1,h1,allpos)))
    {
      Loop, % ok
        pos:=NumGet(allpos, 4*(A_Index-1), "uint")
        , rx:=(pos&0xFFFF)+x, ry:=(pos>>16)+y
        , arr.Push( [rx,ry,w1,h1,comment] )
    }
  }
  SetBatchLines, %bch%
  return, arr.MaxIndex() ? arr:0
}

PicFind(mode, color, n, Scan0, Stride, sx, sy, sw, sh
  , ByRef text, ByRef s1, ByRef s0
  , err1, err0, w1, h1, ByRef allpos)
{
  static MyFunc
  if !MyFunc
  {
    x32:="5589E55383EC50C745E8000000008B45242B454083C0018"
    . "945C88B45282B454483C0018945C48B45200FAF45188B551CC"
    . "1E20201D08945C0C745CC000000008B45CC8945D08B45D0894"
    . "5F8C745EC00000000EB78C745F000000000EB638B45EC0FAF4"
    . "5188B55F0C1E20201D08945BC8B45F88D50018955F889C28B4"
    . "52C01D00FB6003C31751C8B45D08D50018955D08D148500000"
    . "0008B453001C28B45BC8902EB1A8B45CC8D50018955CC8D148"
    . "5000000008B453401C28B45BC89028345F0018B45F03B45407"
    . "C958345EC018B45EC3B45447C808B45D03945CC0F4D45CC894"
    . "5B8837D08000F854D020000C745EC00000000E930020000C74"
    . "5F000000000E9140200008B45EC0FAF45188B55F0C1E20201C"
    . "28B45C001D08945F88B45388945D88B453C8945D48B55F88B4"
    . "50C01D08945BC8B45BC83C00289C28B451401D00FB6000FB6C"
    . "08945B48B45BC83C00189C28B451401D00FB6000FB6C08945B"
    . "08B55BC8B451401D00FB6000FB6C08945ACC745F400000000E"
    . "94C0100008B45F43B45D00F8D9A0000008B45F48D148500000"
    . "0008B453001D08B108B45F801D08945BC8B45BC83C00289C28"
    . "B451401D00FB6000FB6C02B45B48945E48B45BC83C00189C28"
    . "B451401D00FB6000FB6C02B45B08945E08B55BC8B451401D00"
    . "FB6000FB6C02B45AC8945DC837DE4007903F75DE4837DE0007"
    . "903F75DE0837DDC007903F75DDC8B55E48B45E001C28B45DC0"
    . "1D03B45107E0E836DD801837DD8000F88EF0000008B45F43B4"
    . "5CC0F8D960000008B45F48D1485000000008B453401D08B108"
    . "B45F801D08945BC8B45BC83C00289C28B451401D00FB6000FB"
    . "6C02B45B48945E48B45BC83C00189C28B451401D00FB6000FB"
    . "6C02B45B08945E08B55BC8B451401D00FB6000FB6C02B45AC8"
    . "945DC837DE4007903F75DE4837DE0007903F75DE0837DDC007"
    . "903F75DDC8B55E48B45E001C28B45DC01D03B45107F0A836DD"
    . "401837DD40078508345F4018B45F43B45B80F8CA8FEFFFF8B4"
    . "5E88D50018955E88D1485000000008B454801D08B4D208B55E"
    . "C01CA89D3C1E3108B4D1C8B55F001CA09DA8910817DE8FF030"
    . "0000F8FFE010000EB0490EB01908345F0018B45F03B45C80F8"
    . "CE0FDFFFF8345EC018B45EC3B45C40F8CC4FDFFFFE9D701000"
    . "08B450C83C00169C0E803000089450CC745EC00000000E98D0"
    . "00000C745F000000000EB788B45EC0FAF45188B55F0C1E2020"
    . "1C28B45C001D08945F88B45F883C00389C28B451401D08B55F"
    . "883C20289D18B551401CA0FB6120FB6D269CA2B0100008B55F"
    . "883C20189D38B551401DA0FB6120FB6D269D24B0200008D1C1"
    . "18B4DF88B551401CA0FB6120FB6D26BD27201DA3B550C0F9CC"
    . "288108345F0018B45F03B45247C808345EC018B45EC3B45280"
    . "F8C67FFFFFF8345C003C745EC00000000E901010000C745F00"
    . "0000000E9E50000008B45EC0FAF45188B55F0C1E20201C28B4"
    . "5C001D08945F88B45388945D88B453C8945D4C745F40000000"
    . "0EB708B45F43B45D07D2E8B45F48D1485000000008B453001D"
    . "08B108B45F801D089C28B451401D00FB6003C01740A836DD80"
    . "1837DD800787B8B45F43B45CC7D2E8B45F48D1485000000008"
    . "B453401D08B108B45F801D089C28B451401D00FB60084C0740"
    . "A836DD401837DD40078488345F4018B45F43B45B87C888B45E"
    . "88D50018955E88D1485000000008B454801D08B4D208B55EC0"
    . "1CA89D3C1E3108B4D1C8B55F001CA09DA8910817DE8FF03000"
    . "07F2BEB0490EB01908345F0018B45F03B45C80F8C0FFFFFFF8"
    . "345EC018B45EC3B45C40F8CF3FEFFFFEB0490EB01908B45E88"
    . "3C4505B5DC244009090"
    x64:="554889E54883EC50894D10895518448945204C894D28C74"
    . "5EC000000008B45482B858000000083C0018945CC8B45502B8"
    . "58800000083C0018945C88B45400FAF45308B5538C1E20201D"
    . "08945C4C745D0000000008B45D08945D48B45D48945FCC745F"
    . "000000000E988000000C745F400000000EB708B45F00FAF453"
    . "08B55F4C1E20201D08945C08B45FC8D50018955FC4863D0488"
    . "B45584801D00FB6003C3175218B45D48D50018955D44898488"
    . "D148500000000488B45604801C28B45C08902EB1F8B45D08D5"
    . "0018955D04898488D148500000000488B45684801C28B45C08"
    . "9028345F4018B45F43B85800000007C858345F0018B45F03B8"
    . "5880000000F8C69FFFFFF8B45D43945D00F4D45D08945BC837"
    . "D10000F8582020000C745F000000000E965020000C745F4000"
    . "00000E9490200008B45F00FAF45308B55F4C1E20201C28B45C"
    . "401D08945FC8B45708945DC8B45788945D88B55FC8B451801D"
    . "08945C08B45C083C0024863D0488B45284801D00FB6000FB6C"
    . "08945B88B45C083C0014863D0488B45284801D00FB6000FB6C"
    . "08945B48B45C04863D0488B45284801D00FB6000FB6C08945B"
    . "0C745F800000000E96C0100008B45F83B45D40F8DAA0000008"
    . "B45F84898488D148500000000488B45604801D08B108B45FC0"
    . "1D08945C08B45C083C0024863D0488B45284801D00FB6000FB"
    . "6C02B45B88945E88B45C083C0014863D0488B45284801D00FB"
    . "6000FB6C02B45B48945E48B45C04863D0488B45284801D00FB"
    . "6000FB6C02B45B08945E0837DE8007903F75DE8837DE400790"
    . "3F75DE4837DE0007903F75DE08B55E88B45E401C28B45E001D"
    . "03B45207E0E836DDC01837DDC000F88090100008B45F83B45D"
    . "00F8DA60000008B45F84898488D148500000000488B4568480"
    . "1D08B108B45FC01D08945C08B45C083C0024863D0488B45284"
    . "801D00FB6000FB6C02B45B88945E88B45C083C0014863D0488"
    . "B45284801D00FB6000FB6C02B45B48945E48B45C04863D0488"
    . "B45284801D00FB6000FB6C02B45B08945E0837DE8007903F75"
    . "DE8837DE4007903F75DE4837DE0007903F75DE08B55E88B45E"
    . "401C28B45E001D03B45207F0A836DD801837DD800785A8345F"
    . "8018B45F83B45BC0F8C88FEFFFF8B45EC8D50018955EC48984"
    . "88D148500000000488B85900000004801D08B4D408B55F001C"
    . "AC1E2104189D08B4D388B55F401CA4409C28910817DECFF030"
    . "0000F8F3A020000EB0490EB01908345F4018B45F43B45CC0F8"
    . "CABFDFFFF8345F0018B45F03B45C80F8C8FFDFFFFE91302000"
    . "08B451883C00169C0E8030000894518C745F000000000E9A40"
    . "00000C745F400000000E9880000008B45F00FAF45308B55F4C"
    . "1E20201C28B45C401D08945FC8B45FC83C0034863D0488B452"
    . "84801D08B55FC83C2024863CA488B55284801CA0FB6120FB6D"
    . "269CA2B0100008B55FC83C2014C63C2488B55284C01C20FB61"
    . "20FB6D269D24B020000448D04118B55FC4863CA488B5528480"
    . "1CA0FB6120FB6D26BD2724401C23B55180F9CC288108345F40"
    . "18B45F43B45480F8C6CFFFFFF8345F0018B45F03B45500F8C5"
    . "0FFFFFF8345C403C745F000000000E926010000C745F400000"
    . "000E90A0100008B45F00FAF45308B55F4C1E20201C28B45C40"
    . "1D08945FC8B45708945DC8B45788945D8C745F800000000E98"
    . "40000008B45F83B45D47D3A8B45F84898488D1485000000004"
    . "88B45604801D08B108B45FC01D04863D0488B45284801D00FB"
    . "6003C01740E836DDC01837DDC000F88910000008B45F83B45D"
    . "07D368B45F84898488D148500000000488B45684801D08B108"
    . "B45FC01D04863D0488B45284801D00FB60084C0740A836DD80"
    . "1837DD80078568345F8018B45F83B45BC0F8C70FFFFFF8B45E"
    . "C8D50018955EC4898488D148500000000488B8590000000480"
    . "1D08B4D408B55F001CAC1E2104189D08B4D388B55F401CA440"
    . "9C28910817DECFF0300007F2BEB0490EB01908345F4018B45F"
    . "43B45CC0F8CEAFEFFFF8345F0018B45F03B45C80F8CCEFEFFF"
    . "FEB0490EB01908B45EC4883C4505DC39090909090909090"
    MCode(MyFunc, A_PtrSize=8 ? x64:x32)
  }
  return, DllCall(&MyFunc, "int",mode
    , "uint",color, "int",n, "ptr",Scan0, "int",Stride
    , "int",sx, "int",sy, "int",sw, "int",sh
    , "AStr",text, "ptr",&s1, "ptr",&s0
    , "int",err1, "int",err0, "int",w1, "int",h1, "ptr",&allpos)
}

xywh2xywh(x1,y1,w1,h1,ByRef x,ByRef y,ByRef w,ByRef h)
{
  SysGet, zx, 76
  SysGet, zy, 77
  SysGet, zw, 78
  SysGet, zh, 79
  left:=x1, right:=x1+w1-1, up:=y1, down:=y1+h1-1
  left:=left<zx ? zx:left, right:=right>zx+zw-1 ? zx+zw-1:right
  up:=up<zy ? zy:up, down:=down>zy+zh-1 ? zy+zh-1:down
  x:=left, y:=up, w:=right-left+1, h:=down-up+1
}

GetBitsFromScreen(x,y,w,h,ByRef Scan0,ByRef Stride,ByRef bits)
{
  VarSetCapacity(bits,w*h*4,0), bpp:=32
  Scan0:=&bits, Stride:=((w*bpp+31)//32)*4
  Ptr:=A_PtrSize ? "UPtr" : "UInt", PtrP:=Ptr . "*"
  win:=DllCall("GetDesktopWindow", Ptr)
  hDC:=DllCall("GetWindowDC", Ptr,win, Ptr)
  mDC:=DllCall("CreateCompatibleDC", Ptr,hDC, Ptr)
  ;-------------------------
  VarSetCapacity(bi, 40, 0), NumPut(40, bi, 0, "int")
  NumPut(w, bi, 4, "int"), NumPut(-h, bi, 8, "int")
  NumPut(1, bi, 12, "short"), NumPut(bpp, bi, 14, "short")
  ;-------------------------
  if hBM:=DllCall("CreateDIBSection", Ptr,mDC, Ptr,&bi
    , "int",0, PtrP,ppvBits, Ptr,0, "int",0, Ptr)
  {
    oBM:=DllCall("SelectObject", Ptr,mDC, Ptr,hBM, Ptr)
    DllCall("BitBlt", Ptr,mDC, "int",0, "int",0, "int",w, "int",h
      , Ptr,hDC, "int",x, "int",y, "uint",0x00CC0020|0x40000000)
    DllCall("RtlMoveMemory", Ptr,Scan0, Ptr,ppvBits, Ptr,Stride*h)
    DllCall("SelectObject", Ptr,mDC, Ptr,oBM)
    DllCall("DeleteObject", Ptr,hBM)
  }
  DllCall("DeleteDC", Ptr,mDC)
  DllCall("ReleaseDC", Ptr,win, Ptr,hDC)
}

MCode(ByRef code, hex)
{
  ListLines, Off
  bch:=A_BatchLines
  SetBatchLines, -1
  VarSetCapacity(code, StrLen(hex)//2)
  Loop, % StrLen(hex)//2
    NumPut("0x" . SubStr(hex,2*A_Index-1,2),code,A_Index-1,"uchar")
  Ptr:=A_PtrSize ? "UPtr" : "UInt"
  DllCall("VirtualProtect", Ptr,&code, Ptr
    ,VarSetCapacity(code), "uint",0x40, Ptr . "*",0)
  SetBatchLines, %bch%
  ListLines, On
}

base64tobit(s)
{
  ListLines, Off
  Chars:="0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    . "abcdefghijklmnopqrstuvwxyz"
  SetFormat, IntegerFast, d
  StringCaseSense, On
  Loop, Parse, Chars
  {
    i:=A_Index-1, v:=(i>>5&1) . (i>>4&1)
      . (i>>3&1) . (i>>2&1) . (i>>1&1) . (i&1)
    s:=StrReplace(s,A_LoopField,v)
  }
  StringCaseSense, Off
  s:=SubStr(s,1,InStr(s,"1",0,0)-1)
  s:=RegExReplace(s,"[^01]+")
  ListLines, On
  return, s
}

bit2base64(s)
{
  ListLines, Off
  s:=RegExReplace(s,"[^01]+")
  s.=SubStr("100000",1,6-Mod(StrLen(s),6))
  s:=RegExReplace(s,".{6}","|$0")
  Chars:="0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    . "abcdefghijklmnopqrstuvwxyz"
  SetFormat, IntegerFast, d
  Loop, Parse, Chars
  {
    i:=A_Index-1, v:="|" . (i>>5&1) . (i>>4&1)
      . (i>>3&1) . (i>>2&1) . (i>>1&1) . (i&1)
    s:=StrReplace(s,v,A_LoopField)
  }
  ListLines, On
  return, s
}

ASCII(s)
{
  if RegExMatch(s,"\$(\d+)\.([\w+/]+)",r)
  {
    s:=RegExReplace(base64tobit(r2),".{" r1 "}","$0`n")
    s:=StrReplace(StrReplace(s,"0","_"),"1","0")
  }
  else s=
  return, s
}

; You can put the text library at the beginning of the script,
; and Use Pic(Text,1) to add the text library to Pic()'s Lib,
; Use Pic("comment1|comment2|...") to get text images from Lib

Pic(comments, add_to_Lib=0)
{
  static Lib:=[]
  if (add_to_Lib)
  {
    re:="<([^>]*)>[^$]+\$\d+\.[\w+/]{3,}"
    Loop, Parse, comments, |
      if RegExMatch(A_LoopField,re,r)
        Lib[Trim(r1)]:=r
    Lib[""]:=""
  }
  else
  {
    text:=""
    Loop, Parse, comments, |
      text.="|" . Lib[Trim(A_LoopField)]
    return, text
  }
}

PicN(number)
{
  return, Pic(Trim(RegExReplace(number,".","$0|"),"|"))
}

FindTextOCR(nX, nY, nW, nH, err1, err0, Text, Interval=5)
{
  OCR:="", Right_X:=nX+nW
  While (ok:=FindText(nX, nY, nW, nH, err1, err0, Text))
  {
    ; For multi text search, This is the number of text images found
    Loop, % ok.MaxIndex()
    {
      ; X is the X coordinates of the upper left corner
      ; and W is the width of the image have been found
      i:=A_Index, x:=ok[i].1, y:=ok[i].2
        , w:=ok[i].3, h:=ok[i].4, comment:=ok[i].5
      ; We need the leftmost X coordinates
      if (A_Index=1 or x<Left_X)
        Left_X:=x, Left_W:=w, Left_OCR:=comment
    }
    ; If the interval exceeds the set value, add "*" to the result
    OCR.=(A_Index>1 and Left_X-Last_X>Interval ? "*":"") . Left_OCR
    ; Update nX and nW for next search
    x:=Left_X+Left_W, nW:=(Right_X-x)//2, nX:=x+nW, Last_X:=x
  }
  Return, OCR
}


FindText2(x,y,w,h,err1,err0,text,Interval=5)
{
  xywh2xywh(x-w,y-h,2*w+1,2*h+1,x,y,w,h)
  if (w<1 or h<1)
    return, 0
  bch:=A_BatchLines
  SetBatchLines, -1
  ;--------------------------------------
  GetBitsFromScreen(x,y,w,h,Scan0,Stride,bits)
  ;--------------------------------------
  sx:=0, sy:=0, sw:=w, sh:=h
  arr:=[], info:=[], allw:=0, allv:=allcolor:=allcomment:=""
  if (err1=0 and err0=0)
    err1:=err0:=0.05
  Loop, Parse, text, |
  {
    v:=A_LoopField
    IfNotInString, v, $, Continue
    comment:="", e1:=err1, e0:=err0
    ; You Can Add Comment Text within The <>
    if RegExMatch(v,"<([^>]*)>",r)
      v:=StrReplace(v,r), comment:=Trim(r1)
    ; You can Add two fault-tolerant in the [], separated by commas
    if RegExMatch(v,"\[([^\]]*)]",r)
    {
      v:=StrReplace(v,r), r1.=","
      StringSplit, r, r1, `,
      e1:=r1, e0:=r2
    }
    StringSplit, r, v, $
    color:=r1, v:=r2
    if !InStr(color,"*")
      Continue
    StringSplit, r, v, .
    w1:=r1, v:=base64tobit(r2), h1:=StrLen(v)//w1
    if (r0<2 or h1<1 or w1>sw or h1>sh or StrLen(v)!=w1*h1)
      Continue
    if (allcolor="")
      allcolor:=StrReplace(color,"*")
    StrReplace(v,"1","",len1), len0:=StrLen(v)-len1
    e1:=Round(len1*e1), e0:=Round(len0*e0)
    info.Push(StrLen(allv),w1,h1,len1,len0,e1,e0)
    allv.=v, allw+=w1, allcomment.=comment
  }
  if (allv="")
  {
    SetBatchLines, %bch%
    return, 0
  }
  num:=info.MaxIndex(), VarSetCapacity(in,num*4,0)
  Loop, % num
    NumPut(info[A_Index], in, 4*(A_Index-1), "int")
  VarSetCapacity(ss, sw*sh, 0), k:=StrLen(allv)*4
  VarSetCapacity(s1, k, 0), VarSetCapacity(s0, k, 0)
  VarSetCapacity(allpos, 1024*4, 0)
  offsetX:=Interval, offsetY:=5
  if (ok:=PicFind2(allcolor,offsetX,offsetY,Scan0,Stride
    ,sx,sy,sw,sh,ss,allv,s1,s0,in,num,allpos))
  {
    Loop, % ok
      pos:=NumGet(allpos, 4*(A_Index-1), "uint")
      , rx:=(pos&0xFFFF)+x, ry:=(pos>>16)+y
      , arr.Push( [rx,ry,allw,h1,allcomment] )
  }
  SetBatchLines, %bch%
  return, arr.MaxIndex() ? arr:0
}

PicFind2(color, offsetX, offsetY
  , Scan0, Stride, sx, sy, sw, sh
  , ByRef ss, ByRef text, ByRef s1, ByRef s0
  , ByRef in, num, ByRef allpos)
{
  static MyFunc
  if !MyFunc
  {
    x32:="5589E55383C480C745DC00000000C745EC00000000E9DA0"
    . "000008B45EC8D1485000000008B453C01D08B008945CC8B45C"
    . "C8945D88B45D88945F88B45EC83C0018D1485000000008B453"
    . "C01D08B008945B88B45EC83C0028D1485000000008B453C01D"
    . "08B008945B4C745F000000000EB77C745F400000000EB628B4"
    . "5F00FAF452489C28B45F401D08945E88B45F88D50018955F88"
    . "9C28B453001D00FB6003C31751C8B45D88D50018955D88D148"
    . "5000000008B453401C28B45E88902EB1A8B45CC8D50018955C"
    . "C8D1485000000008B453801C28B45E889028345F4018B45F43"
    . "B45B87C968345F0018B45F03B45B47C818345EC078B45EC3B4"
    . "5400F8C1AFFFFFF8B450883C00169C0E80300008945088B452"
    . "00FAF45188B551CC1E20201D08945F88B5524B80000000029D"
    . "0C1E00289C28B451801D08945E8C745EC00000000C745F0000"
    . "00000EB7FC745F400000000EB648B55EC8B452C01D08B55F88"
    . "3C20289D18B551401CA0FB6120FB6D269CA2B0100008B55F88"
    . "3C20189D38B551401DA0FB6120FB6D269D24B0200008D1C118"
    . "B4DF88B551401CA0FB6120FB6D26BD27201DA3B55080F9CC28"
    . "8108345F4018345F8048345EC018B45F43B45247C948345F00"
    . "18B45E80145F88B45F03B45280F8C75FFFFFF8B453C8B40048"
    . "945B88B453C8B40088945B48B453C8B400C8945B08B453C8B4"
    . "0108945AC8B453C8B40148945A88B453C8B40188945A48B452"
    . "42B45B88945A08B45282B45B489459C8B45B03945AC0F4D45A"
    . "C894598C745F000000000E91E030000C745F400000000E9020"
    . "300008B45F00FAF452489C28B45F401D08945F88B45A88945E"
    . "48B45A48945E0C745E800000000EB788B45E83B45B07D328B4"
    . "5E88D1485000000008B453401D08B108B45F801D089C28B452"
    . "C01D00FB6003C01740E836DE401837DE4000F889A0200008B4"
    . "5E83B45AC7D328B45E88D1485000000008B453801D08B108B4"
    . "5F801D089C28B452C01D00FB60084C0740E836DE001837DE00"
    . "00F88630200008345E8018B45E83B45987C808B55F48B45B80"
    . "1D083E8018945D48B45F02B45108945D0837DD0007907C745D"
    . "000000000C745EC07000000E9DF0100008B45EC8D148500000"
    . "0008B453C01D08B008945CC8B45EC83C0018D1485000000008"
    . "B453C01D08B008945948B45EC83C0028D1485000000008B453"
    . "C01D08B008945908B45EC83C0038D1485000000008B453C01D"
    . "08B0089458C8B45EC83C0048D1485000000008B453C01D08B0"
    . "08945888B45EC83C0058D1485000000008B453C01D08B00894"
    . "5848B45EC83C0068D1485000000008B453C01D08B008945808"
    . "B45242B45948945C08B55D48B450C01D08945E88B45E83B45C"
    . "07D068B45E88945C08B45282B45908945BC8B55F08B451001D"
    . "08945E88B45E83B45BC7D068B45E88945BC8B45D48945C8E9D"
    . "20000008B45D08945C4E9B70000008B45C40FAF452489C28B4"
    . "5C801D08945F88B45848945E48B45808945E0C745E80000000"
    . "0EB378B55CC8B45E801D08D1485000000008B453401D08B108"
    . "B45F801D089C28B452C01D00FB6003C01740A836DE401837DE"
    . "40078568345E8018B45E83B458C7CC1C745E800000000EB378"
    . "B55CC8B45E801D08D1485000000008B453801D08B108B45F80"
    . "1D089C28B452C01D00FB60084C0740A836DE001837DE000781"
    . "18345E8018B45E83B45887CC1EB2690EB01908345C4018B45C"
    . "43B45BC0F8E3DFFFFFF8345C8018B45C83B45C00F8E22FFFFF"
    . "FEB5B8B55C88B459401D083E8018945D48345EC078B45EC3B4"
    . "5400F8C15FEFFFF8B45DC8D50018955DC8D1485000000008B4"
    . "54401D08B4D208B55F001CA89D3C1E3108B4D1C8B55F401CA0"
    . "9DA8910817DDCFF0300007F28EB0490EB01908345F4018B45F"
    . "43B45A00F8EF2FCFFFF8345F0018B45F03B459C0F8ED6FCFFF"
    . "FEB01908B45DC83EC805B5DC24000"
    x64:="554889E54883C480894D10895518448945204C894D28C74"
    . "5E000000000C745F000000000E9FF0000008B45F04898488D1"
    . "48500000000488B45784801D08B008945D08B45D08945DC8B4"
    . "5DC8945FC8B45F048984883C001488D148500000000488B457"
    . "84801D08B008945BC8B45F048984883C002488D14850000000"
    . "0488B45784801D08B008945B8C745F400000000E984000000C"
    . "745F800000000EB6F8B45F40FAF454889C28B45F801D08945E"
    . "C8B45FC8D50018955FC4863D0488B45604801D00FB6003C317"
    . "5218B45DC8D50018955DC4898488D148500000000488B45684"
    . "801C28B45EC8902EB1F8B45D08D50018955D04898488D14850"
    . "0000000488B45704801C28B45EC89028345F8018B45F83B45B"
    . "C7C898345F4018B45F43B45B80F8C70FFFFFF8345F0078B45F"
    . "03B85800000000F8CF2FEFFFF8B451083C00169C0E80300008"
    . "945108B45400FAF45308B5538C1E20201D08945FC8B5548B80"
    . "000000029D0C1E00289C28B453001D08945ECC745F00000000"
    . "0C745F400000000E991000000C745F800000000EB768B45F04"
    . "863D0488B45584801D08B55FC83C2024863CA488B55284801C"
    . "A0FB6120FB6D269CA2B0100008B55FC83C2014C63C2488B552"
    . "84C01C20FB6120FB6D269D24B020000448D04118B55FC4863C"
    . "A488B55284801CA0FB6120FB6D26BD2724401C23B55100F9CC"
    . "288108345F8018345FC048345F0018B45F83B45487C828345F"
    . "4018B45EC0145FC8B45F43B45500F8C63FFFFFF488B45788B4"
    . "0048945BC488B45788B40088945B8488B45788B400C8945B44"
    . "88B45788B40108945B0488B45788B40148945AC488B45788B4"
    . "0188945A88B45482B45BC8945A48B45502B45B88945A08B45B"
    . "43945B00F4D45B089459CC745F400000000E97B030000C745F"
    . "800000000E95F0300008B45F40FAF454889C28B45F801D0894"
    . "5FC8B45AC8945E88B45A88945E4C745EC00000000E98800000"
    . "08B45EC3B45B47D3A8B45EC4898488D148500000000488B456"
    . "84801D08B108B45FC01D04863D0488B45584801D00FB6003C0"
    . "1740E836DE801837DE8000F88EC0200008B45EC3B45B07D3A8"
    . "B45EC4898488D148500000000488B45704801D08B108B45FC0"
    . "1D04863D0488B45584801D00FB60084C0740E836DE401837DE"
    . "4000F88AD0200008345EC018B45EC3B459C0F8C6CFFFFFF8B5"
    . "5F88B45BC01D083E8018945D88B45F42B45208945D4837DD40"
    . "07907C745D400000000C745F007000000E9180200008B45F04"
    . "898488D148500000000488B45784801D08B008945D08B45F04"
    . "8984883C001488D148500000000488B45784801D08B0089459"
    . "88B45F048984883C002488D148500000000488B45784801D08"
    . "B008945948B45F048984883C003488D148500000000488B457"
    . "84801D08B008945908B45F048984883C004488D14850000000"
    . "0488B45784801D08B0089458C8B45F048984883C005488D148"
    . "500000000488B45784801D08B008945888B45F048984883C00"
    . "6488D148500000000488B45784801D08B008945848B45482B4"
    . "5988945C48B55D88B451801D08945EC8B45EC3B45C47D068B4"
    . "5EC8945C48B45502B45948945C08B55F48B452001D08945EC8"
    . "B45EC3B45C07D068B45EC8945C08B45D88945CCE9E20000008"
    . "B45D48945C8E9C70000008B45C80FAF454889C28B45CC01D08"
    . "945FC8B45888945E88B45848945E4C745EC00000000EB3F8B5"
    . "5D08B45EC01D04898488D148500000000488B45684801D08B1"
    . "08B45FC01D04863D0488B45584801D00FB6003C01740A836DE"
    . "801837DE800785E8345EC018B45EC3B45907CB9C745EC00000"
    . "000EB3F8B55D08B45EC01D04898488D148500000000488B457"
    . "04801D08B108B45FC01D04863D0488B45584801D00FB60084C"
    . "0740A836DE401837DE40078118345EC018B45EC3B458C7CB9E"
    . "B2690EB01908345C8018B45C83B45C00F8E2DFFFFFF8345CC0"
    . "18B45CC3B45C40F8E12FFFFFFEB688B55CC8B459801D083E80"
    . "18945D88345F0078B45F03B85800000000F8CD9FDFFFF8B45E"
    . "08D50018955E04898488D148500000000488B8588000000480"
    . "1D08B4D408B55F401CAC1E2104189D08B4D388B55F801CA440"
    . "9C28910817DE0FF0300007F28EB0490EB01908345F8018B45F"
    . "83B45A40F8E95FCFFFF8345F4018B45F43B45A00F8E79FCFFF"
    . "FEB01908B45E04883EC805DC390909090909090"
    MCode(MyFunc, A_PtrSize=8 ? x64:x32)
  }
  return, DllCall(&MyFunc, "int",color, "int",offsetX
    , "int",offsetY, "ptr",Scan0, "int",Stride
    , "int",sx, "int",sy, "int",sw, "int",sh
    , "ptr",&ss, "AStr",text, "ptr",&s1, "ptr",&s0
    , "ptr",&in, "int",num, "ptr",&allpos)
}



