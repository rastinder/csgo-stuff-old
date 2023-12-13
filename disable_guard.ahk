
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#SingleInstance Force
#include <Vis2>  ; Equivalent to #include .\lib\Vis2.ahk
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen
;MouseMove, 20, 30, 10, R
;Text:="|<in_lobby>*110$16.zzy00M01s0TwDzzzU"
SetMouseDelay, 300
!p::Pause
F4::OutputDebug %matchcount% done till ac num %set%
F6::play_160()
F7::changeaccs()
F8::tenaccopen()
F2::matchcount = 150000000
F3::isinhome()
F11::superinv()
!t::topbat()
!b::bottombat()
!r::Reload

   
  ;~ mode = 1 1515
  ;~ mode = 2 160



FoundX := 0
FoundY := 0
global lobby,loading,win,script,script1,go,firstrun,teamwin,wins,join,error1,a1,a2,reconnectdelay,warmupdelay,halftimedelay,thismap,rounddelay,UX,UY,reconnectdelay1,reconnectdelay2,mode,rounds,xc,yc,l,b,sx1,sx2,sx3,sx4,sx5,sy1,sy2,tx1,tx2,tx3,tx4,tx5,ty1,ty2,get,getu,getd,ts,t,ct,cts,matchcount,skiphftm,fixscore,s,godownfound,godupfound,nextmatch,set,sold_accs,matchlimit,getct,gett


play_160()
{
  i = 220
loop
{
  OutputDebug %i%
FileReadLine, ha,username.txt, %i%
Run	c:\Program Files (x86)\Steam\Steam.exe  -login %ha%
 if ErrorLevel
        break
        
  Loop
  {
    Text:="|<steam>*53$35.zzzzzzzzzzzzzzzzzy3TzzzxmzzzzvslkU7kvRB9jwK32PTwhwoqwtN/9hw6MkHPzzzzzzzzzzzz"
;Text:="|<steam>*51$38.zzzzzzzzzzzzzkPzzzzxmzzzzzT6C40zkvRB9jzWkMHPzwhwoqzb/9NBjw6MkHPzzzzzzzzzzzzzzzzzzzs"
if (ok:=FindText(960, 960, 960, 960, 0, 0, Text))
      {
        ;CoordMode, Mouse
        X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
        ;x = x + 15
        sleep 1000
        MouseMove,%X%, %Y%
        sleep 500
        Click down
        sleep 20
        Click up
        sleep 50
        MouseClick, left,0,128,,20,, R
        break
      }
  
  }
  
  
    loop
  {
    Sleep 2000
  Text:="|<already_disabled>*94$71.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzbybzttztzzzzDxzznnznza40T2FkUYA7z9dgwY9BB//DyMGNvc72M06TwaYnrH4okDAztNBbYVf9dNNzW2MDV8EEG63zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"

if (ok:=FindText(960, 960, 960, 960, 0, 0, Text))
{
  run c:\Program Files (x86)\Steam\Steam.exe -shutdown
sleep 3000
   break
}

Text:="|<guard_on>*96$71.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzkTzjzxzwxzzziTzTznztvzzzSW4ElW63kaRyt9Zgd9dbYhzw6n+1SE3DR3zvxaIywbaSu7zrvAhZ9AAwaTTjr38Mt31sQzzzzzzzzzzztzzzzzzzzzzzbzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"

if (ok:=FindText(960, 960, 960, 960, 0, 0, Text))
{
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  MouseMove, %X%, %Y%
  Sleep 100
  MouseClick, left,0,40,,20,, R
            Loop
            {
              Text:="|<turn_guard_off>*84$71.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzztzzz3XzzzzzznzzySTzzzzzzbzzwwzzzzzzzDzzttzvnkQ70Tw700zrbAMwEzl7bbzDDwnntzDbDDySTtbbnyTCSTwwznDDbxyQwzttk6STDvwttznn7AwyTntnnzraSNtwzbnbbzYAEnsVzWDDDz1Q4bs3zUySTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"

              if (ok:=FindText(960, 960, 960, 960, 0, 0, Text))
              {
                CoordMode, Mouse
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                Click, %X%, %Y%
                break
              }
            }  
                          Loop
                          {
                            Text:="|<green_guard_off>*151$71.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzsSTzzDtzzkDTyDzzyTnzzCAzyTzzwzbzySNzyH1kM7A7wzVVwatCFaHbsTaPt9zwbYbjw7BzmMT1D90Tz6EDgw8mSGTzzAbyNyHYwYzwzNDsmQa8n9nwwnC7a3UECMDw3X3zzzzzzzzzzzzzzzzzzzzzzzs"
              
                          if (ok:=FindText(960, 960, 960, 960, 0, 0, Text))
                              {
                CoordMode, Mouse
                X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                Click, %X%, %Y%
                ;Sleep 1000
                break
                              }
                          }

 
}
  Text:="|<maa>*85$62.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUSzzzzzzzzlXDzzzzzzztznzzzzzzzyTsD1sD0EzzXzDaAFkUbzwDnnnzAwxzzkwxyznDDDzz7C0DwnnnzzwnbzUAwwzzzAxzlXDDDzznDDxwnnnzsllsXAAwwzz0yD1sFDDDzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzs"

if (ok:=FindText(960, 960, 960, 960, 0, 0, Text))
{
  run c:\Program Files (x86)\Steam\Steam.exe -shutdown
sleep 1000
RunWait kill_steam.bat
break 
}

  }

i++
}}
variables()
{
        matchlimit = 2
        read_value()
        OutputDebug ac num %set%
        sold_accs = 0
        UX = 1
        UY = 1
        rounds = 7 ; how many rounds to win 
        halftimedelay = 100
        warmupdelay = 76000
        rounddelay = 19000 ;19000
        reconnectdelay = 11500
        reconnectdelay1 = 1500   ;reconnect delay on halftime
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
         sx1 = 2991
  sy1 = 947
  l = 139
  b = 17
  
  get :=ocr([sx1,sy1,l,b])
  ;OutputDebug 2 %get%
   If InStr(get,"GO") or InStr(get,"G")
  {
                     join = 0
                }
                Else{      
                  Error()
                      join = 1
                      OutputDebug are csgo even launched?
                      Text:="|<setting>*123$14.y7zVzMPU0M067VlswSC7VU0M07MPy7zVy"
                          if (ok:=FindText(2582, 777, 16, 100, 0, 0, Text))
                          {
                            OutputDebug ys
                          }
                          else
                          {
                           OutputDebug no
                           SET := SET - 10
                            OutputDebug OPENING FROM ac %set%			   									 
                           newchangeaccs()
                           sleep 20000
                           x = 0
                           while (x = 0)
                           {
                           error()
                           Text:="|<setting>*123$14.y7zVzMPU0M067VlswSC7VU0M07MPy7zVy"
                           if (ok:=FindText(2582, 777, 16, 100, 0, 0, Text))
                           {
                             X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
                           }
                           sleep 1000                           
                           }
                           sleep 10000
                           tenaccopen()
                           
                           
                          }
                    }      
}
play_1515()
{   
  S = 1
   mode = 1
   variables()
     play()
    }   
play()
{
   
    OutputDebug  ran  
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
        ;lobbycheck()
         mapcheck() 
         accept()
         ;OutputDebug accepted
        }                    
 

    If ( a1 = 1 && a2 = 1 )
        {
           OutputDebug  match found
            ;Sleep 5000            
                a1 = 0
                a2 = 0
                lobby = 0
                loading = 1
                firstrun = 1
                go = 1
                nextmatch = 1
                
                OutputDebug  match %matchcount% completed
                
        }
            Else If ( a1 = 1 or a2 = 1 )
            
             
                {   
                    a1 = 0
                    a2 = 0
                    OutputDebug 1 ACCEPT DETECTED
                    uclose = 0
                    dclose = 0
                    ;sleep 26000
                    ;OutputDebug  searching for go
                    StartTime := A_TickCount
                    ElapsedTime := A_TickCount - StartTime
                       ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 accept.png
                                while (ErrorLevel = 0)
                                    {
                                        error()
                                        if(ElapsedTime > 60000 )
                                          {
                                            gos()
                                          }
                                        ElapsedTime := A_TickCount - StartTime
                                        ; OutputDebug  i c accept loop
                                        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 accept.png
                                    }  
                    gos()
                    lobbycheck() 
                    sleep 50000

                }        
                          
      
        
    if ( loading = 1 )
  {
    sleep 12000
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 540, *5 accept.png
    If (ErrorLevel = 0)
      {
      t = "no"
      matchcount--
      OutputDebug matchcount-- %matchcount%
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
             t = no
             OutputDebug chking for map now
             map()
                    OutputDebug  map gone wait %warmupdelay% sec
                  StartTime := A_TickCount
                  ElapsedTime := A_TickCount - StartTime
                  while(ElapsedTime < warmupdelay )
                              {
                                ;OutputDebug Wait time %ElapsedTime%/%warmupdelay%
                                
                                  if (t = "no")
                                {
                                getteam()
                                }
                                ElapsedTime := A_TickCount - StartTime
                                sleep 10
                                error()
                              }
                  ;showscore()
                  
                  
                  ;sleep %warmupdelay%
                  ;getteam()
                  
                  halftime = 1
                  skiphftm = 0
                  firstrun = 0
                  
                  teamwin = 6
                  wins = 6

                  reconnectdelay2 = %reconnectdelay%
          }
                    ;getscore()
                   ; while ( t != "no")
                       ;dndis()
                      ; teamwin = 9
                  ;wins = 9
                    if (t = "up")
                    {
                    ;dndis()
                    updis()
                    }
                    else
                  {
                    ;dndis()
                    updis()
                  }
                    
            
              
              loading = 0
          
              matchcount++
            OutputDebug  match %matchcount% completed
            ;print()
            write_value()
            join = 1
            UX = 0
            UY = 0
      }      
  }
      



    if ( join = 1 )
    {   
      
      join = 0
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, cd_bar.png
      if (matchcount < matchlimit or ErrorLevel = 1 )
      {
        
        OutputDebug 318
        isinhome()
        sleep 250
     
      }
        changeaccs()
    lobby = 1
    }    
    
}}
updis()
{
  while ( teamwin <= rounds )
                    {
                        OutputDebug updis started
                         if (teamwin = 7 and fixscore = 0)
                        {
                        reconnectdelay2 := reconnectdelay1
                        }
                        else
                        {
                          reconnectdelay2 := reconnectdelay
                        }
                       ; if (tss = 14 or cts = 14)
                       ; {
                       ;   OutputDebug t = %14% there fore 
                       ; reconnectdelay2 := reconnectdelay1
                       ; }
                        ;bottombat()
                          topbat()
                        reconnectdelay2 := reconnectdelay
                        sleep 3000
                        ;reconnecterror()
                        reconnect()
                        sleep 6000
                        OutputDebug looking for map
                        map()
                        if (teamwin = 7 and skiphftm = 0)
                        {
                            OutputDebug hftm sleep %halftimedelay%
                    StartTime := A_TickCount
                    ElapsedTime := A_TickCount - StartTime
                    t = no
                    cts = asd
                    while(ElapsedTime < halftimedelay )
                                {
                                   ;OutputDebug Wait time %ElapsedTime%/%halftimedelay%
                                   
                                   if (t = "no" and ElapsedTime > halftimedelay * 0.50)
                                  {
                                  getteam()
                                  ;getscore()
                                  }
                                  ElapsedTime := A_TickCount - StartTime
                                  sleep 10
                                  error()
                                }
                            skiphftm = 1
                              if (cts = 15)
                            {   
                              t = no
                              return
                            }
                        }
                        else
                        {    
                            ;OutputDebug normal sleep %rounddelay%
                             StartTime := A_TickCount
                             ElapsedTime := A_TickCount - StartTime
                             t = no
                             ;cts = asd 
                             while(ElapsedTime < rounddelay )
                                {
                                  ;OutputDebug Wait time %ElapsedTime%/%rounddelay%
                                  if (t = "no" and ElapsedTime > rounddelay * 0.50)
                                
                                  {
                                  getteam()
                                  ;getscore()
                                  }
                                  ElapsedTime := A_TickCount - StartTime
                                  sleep 10
                                  error()
                                }
                           
                        }                      
                       ; teamwin++
                        if (t = "no")
                          break                        
                        OutputDebug first team = %teamwin%*2 , 2nd team = %wins%*2
                    } 
}
dndis()
{
   while ( wins <= rounds )
                     {
                        OutputDebug dndis started
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
                       ;   OutputDebug t = %14% there fore 
                       ; reconnectdelay2 := reconnectdelay1
                       ; }
                        bottombat()
                        ;topbat()
                        reconnectdelay2 := reconnectdelay
                        sleep 3000
                        ;reconnecterror()
                        reconnect()
                        sleep 6000
                        OutputDebug looking for map
                        map()
                        if (wins = 7 and skiphftm = 0)
                        {
                            OutputDebug hftm sleep %halftimedelay%
                            StartTime := A_TickCount
                            ElapsedTime := A_TickCount - StartTime
                            t = no
                            cts = asd                    
                            while(ElapsedTime < halftimedelay )
                                {
                                  ;OutputDebug Wait time %ElapsedTime%/%halftimedelay%
                                   if (t = "no" and ElapsedTime > halftimedelay * 0.30)
                                  ;if (t = "asd")
                                  {
                                  getteam()
                                  ;getscore()
                                  }
                                  ElapsedTime := A_TickCount - StartTime
                                  sleep 10
                                  error()
                                }
                            skiphftm = 1
                              if (cts = 15)
                            {   
                              t = no
                              return
                            }
                        }
                        else
                        {    
                            OutputDebug normal sleep %rounddelay%
                             StartTime := A_TickCount
                             ElapsedTime := A_TickCount - StartTime
                             t = no
                             ;cts = asd
                             while(ElapsedTime < rounddelay )
                                {
                                 ; OutputDebug Wait time %ElapsedTime%/%rounddelay%
                                  if (t = "no" and ElapsedTime > rounddelay * 0.70)
                                 ;if (t = "asd")
                                  {
                                  getteam()
                                  ;getscore()
                                  }
                                  ElapsedTime := A_TickCount - StartTime
                                  sleep 10
                                  error()
                                }
                        
                        }             
                       ; wins++
                        if (t = "no")
                          break
                        OutputDebug first team = %teamwin%*2 , 2nd team = %wins%*2
                    }    
}                    
topbat()
{   
    OutputDebug topbat
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    ;BlockInput, On          ; BlockInput, off
    Sleep 10

    MouseClick,left,550,180,,90,,
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
        MouseClick, left,640,0,,90,, R
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
  
   
   Sleep %reconnectdelay2%

    
    
    
    

    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    BlockInput, On          ; BlockInput, off
    MouseClick, Left,467,45,,90,,
    loop,4
    {
    MouseClick, left,640,0,,90,, R
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
    OutputDebug bottombat
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    BlockInput, On          ; BlockInput, off
    

    MouseClick, left,450,545,,90,,
      Click down
      sleep 100
       
        sleep 100
        Click up
        sleep 100
    loop,4
       {
        MouseClick, left,640,0,,90,, R
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
    
     
    
    Sleep %reconnectdelay2%
    
  

    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
    BlockInput, On          ; BlockInput, off
    MouseClick, left,467,525,,90,,
    loop,4
    {
    MouseClick, left,640,0,,90,, R
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
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 540, *5 accept.png
            If (ErrorLevel = 1)
            {
                a1 = 0 ; this is trash code
            }        
                Else
                {
                    a1 = 1
                    ImageSearch, FoundX, FoundY, 0, 540, 3200, 960, *5 accept.png
                
                    If (ErrorLevel = 1)
                        {
                             a2 = 0 ; this is trash code
                        }
                        Else{   
                            ;run accept.bat
                            pressaccept()
                                Sleep 5000
                                a2 = 1
                                ;OutputDebug Up >running accept bat %a1% =a1= 1 , %a2% = a2 = 1  
                            }    
                }
                
                
}
downaccept() 
{   
    ImageSearch, FoundX, FoundY, 0, 540, 3200, 960, *5 accept.png
                
                    If (ErrorLevel = 1)
                        {
                             a2 = 0 ; this is trash code
                        }
                        Else{
                                a2 = 1
                                ImageSearch, FoundX, FoundY, 0, 0, 3200, 540, *5 accept.png
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
                                    ;OutputDebug down >running accept bat %a1% =a1= 1 , %a2% = a2 = 1  
                                }
                            }    
}
anygo()
{
  sx1 = 2988
  sy1 = 465
  l = 146
  b = 21
  
  
  getu :=ocr([sx1,sy1,l,b])
  If InStr(get,"GO") or InStr(get,"G")
  {
    ErrorLevel = 0
    goupfound = 1
  }




 sx1 = 2991
  sy1 = 947
  l = 139
  b = 17
  
  
  getd :=ocr([sx1,sy1,l,b])
  If InStr(get,"GO") or InStr(get,"G")
  {
    ErrorLevel = 0
    godownfound = 1
  }
}  
upgo()
{
  sx1 = 2988
  sy1 = 465
  l = 146
  b = 21
  
  
  get :=ocr([sx1,sy1,l,b])
  If InStr(get,"GO") or InStr(get,"G")
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
 sx1 = 2991
  sy1 = 947
  l = 139
  b = 17
  
  
  get :=ocr([sx1,sy1,l,b])
  If InStr(get,"GO") or InStr(get,"G")
  {
    ErrorLevel = 0
    godownfound = 1
  }
else
  {
    ErrorLevel = 1
    godownfound = 1
  }
}
goe()
{
  sx1 = 2988
  sy1 = 465
  l = 146
  b = 21
  
  
  get :=ocr([sx1,sy1,l,b])
  ;OutputDebug 1 %get%
  If InStr(get,"CANCEL SEARCH")
  {
  }
  else
  {
  MouseClick, left,2583,350,,90,,  ; uper wala
  }
  If InStr(get,"GO") or InStr(get,"G")
  {
     MouseClick, left, 2586, 350
    X = sx1 + l/2
    y = sy1 + b/2
    
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                           BlockInput, On          ; BlockInput, off
                            Sleep 10
                            MouseClick, left,3058,473,,90,,  ; uper wala go
                            Sleep 10
                            MouseMove, 20, -120, 10, R
                            Sleep 10
                            MouseMove, xpos, ypos
                            BlockInput, off
                             Sleep 10                        
                            go = 1
                            OutputDebug clicked on go
  }
    else
  {
    go = 0
  }

  sx1 = 2991
  sy1 = 947
  l = 139
  b = 17
  
  get :=ocr([sx1,sy1,l,b])
  ;OutputDebug 2 %get%

  If InStr(get,"CANCEL SEARCH")
  {
  }
  else
  {
  MouseClick, left,2585,815,,60,,
  }
  
   If InStr(get,"GO") or InStr(get,"G")
  {
    X = sx1 + l/2
    y = sy1 + b/2
    
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                           BlockInput, On          ; BlockInput, off
                            Sleep 10
                             MouseClick, left,3058,956,,90,,     ; niche wala go
                            Sleep 10
                            MouseMove, 20, -120, 10, R
                            Sleep 10
                            MouseMove, xpos, ypos
                            BlockInput, off
                             Sleep 10                        
                            go = 1
                            OutputDebug clicked on go
  }
  else
  {
    go = 0
  }
  
             
}
gos()
{
  
  
  
  sx1 = 2988
  sy1 = 465
  l = 146
  b = 21
  
  
  get :=ocr([sx1,sy1,l,b])
  OutputDebug 1 %get%


  If InStr(get,"CANCEL SEARCH")
  {
     MouseClick, left, 2586, 400
    X = sx1 + l/2
    y = sy1 + b/2
    
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                           BlockInput, On          ; BlockInput, off
                            Sleep 10
                            MouseClick, left,3058,473,,90,,  ; uper wala go
                            Sleep 10
                            MouseMove, 20, -120, 10, R
                            Sleep 10
                            MouseMove, xpos, ypos
                            BlockInput, off
                             Sleep 10                        
                            
                            OutputDebug If InStr(get,"CANCEL SEARCH")
  }
 

  sx1 = 2991
  sy1 = 947
  l = 139
  b = 17
  
  get :=ocr([sx1,sy1,l,b])
  OutputDebug 2 %get%
   If InStr(get,"CANCEL SEARCH")
  {
    X = sx1 + l/2
    y = sy1 + b/2
    
    MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                           BlockInput, On          ; BlockInput, off
                            Sleep 10
                             MouseClick, left,3058,956,,90,,     ; niche wala go
                            Sleep 10
                            MouseMove, 20, -120, 10, R
                            Sleep 10
                            MouseMove, xpos, ypos
                            BlockInput, off
                             Sleep 10                        
                            
                            OutputDebug If InStr(get,"CANCEL SEARCH")
  }
 
  
             
}
starterror()
{   
    

    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
     if (ErrorLevel = 0)
        OutputDebug  errors found
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
                   ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
                 }
         If (error1 = 1)
            { 
              MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                                        ; BlockInput, off
                home()
                isinhome()
                
                
                               
                ;Sleep 5000
                MouseMove, xpos, ypos
                OutputDebug going home screen
               sx1 = 3038
  sy1 = 459
  l = 53
  b = 31
  
  
  get :=ocr([sx1,sy1,l,b])
  thisgo := get
  OutputDebug 1 %get%
   sx1 = 3038
  sy1 = 939
  l = 53
  b = 31
  
  get :=ocr([sx1,sy1,l,b])
  thatgo := get
  If InStr(thisgot,"GO") AND InStr(thatgo,"GO")
  
                {
                   
                     error1 = 0
                     OutputDebug  errors fixed
                     join = 0
                     
                     
                }

                
            }    
            
            
            
} 
error()
{   
    

ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
     if (ErrorLevel = 0)
    {
              if (loading = 1 && nextmatch = 1)
                  {
                    matchcount--
                    OutputDebug matchcount-- %matchcount%
                    nextmatch = 0
                  }
    if (join = 1)
    {
       
      
        Text:="|<>*125$16.331hhaqqPPMBhc"
        if (ok:=FindText(1280, 480, 1280, 480, 0, 0, Text))
          {
            MouseClick, left,2580,74,,90,,
            Sleep 500
            MouseClick, left,2680,470,,90,,
            Sleep 500
          
            Sleep 500
            sleep 40
            Sleep 500
            MouseClick, left,2580,568,,90,,
            Sleep 500
            MouseClick, left,2680,953,,90,,
            Sleep 500
            MouseClick, left,2680,470,,90,,
            Sleep 500
          }}            
    OutputDebug  errors found
    
     
    
    join = 1
    }
        while (ErrorLevel = 0)
                {
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
                   
                   
                   Sleep 300
                   error1 = 1
                 ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *10 ok.png  
                 }
                 
                 
 if (loading = 0) ; firstrun = 1
{
  
  
  ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *25 ok.png
     if (ErrorLevel = 0)
        OutputDebug  errors found
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
                OutputDebug  confirm found
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
                     OutputDebug  errors fixed
                     join = 1
             }

} 
map()
{
    ;mirrage
    ;subxero
    ;bio
    ;universal_map
    if (firstrun = 1)
    {
      thismap := "sry cant find map n this is problem"
      ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *20 universal_map.png
     if (ErrorLevel = 0)
        thismap = universal_map.png
;    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *20 office.png
;     if (ErrorLevel = 0)
;        thismap = office.png
;    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 agency.png
;     if (ErrorLevel = 0)
;        thismap = agency.png
;ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 train.png
;     if (ErrorLevel = 0)
;        thismap = train.png
;ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 nuke.png
;     if (ErrorLevel = 0)
;        thismap = nuke.png
;ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 austria.png
;     if (ErrorLevel = 0)
;        thismap = austria.png
;ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 cobble.png
;     if (ErrorLevel = 0)
;        thismap = cobble.png
    }

    
    OutputDebug  checking %thismap%
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 %thismap%
    OutputDebug map errorlevel = %ErrorLevel%
                    while (ErrorLevel = 0)
                    {
                        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *80 %thismap%
                        Sleep 1000
                       ;OutputDebug  waiting %thismap% to disappear
                    }
}
reconnecterror()
{   
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
     if (ErrorLevel = 0)
    {
        OutputDebug  errors found while reconnecting
         MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                  BlockInput, On          ; BlockInput, off
    }
        while (ErrorLevel = 0)
                {
                   x :=  FoundX 
                   y :=  FoundY
                   MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                   BlockInput, On          ; BlockInput, off        
                   MouseClick, left, x, y
                   MouseClick, left,3839,1079
                   MouseMove, xpos, ypos
                   BlockInput, off        
                   
                   Sleep 20
                   
                   ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
                   if (ErrorLevel = 0)
                   OutputDebug  reconnect found
                   
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
                            Sleep 200
                                    
                ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png   
                }
                MouseMove, xpos, ypos
                BlockInput, off
    
}
reconnect()
{                  
  
error()

                  ;MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
                  ;OutputDebug  searching reconnect
                   ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
                   if (ErrorLevel = 0)
                  {
                   OutputDebug  reconnect found
                   BlockInput, on
					MouseGetPos, xpos, ypos					  
                   
                  }
                   while (ErrorLevel = 0)
                        {
                          (while ErrorLevel = 0)
                          {
                            error()
                            X = 0
                            
                             OutputDebug  reconnect found
                   
                            ImageSearch, FoundX, FoundY, 0, 0, 3200, 960,*5 reconnect.png
                            x :=  FoundX - 10 
                            y :=  FoundY + 5
                           
                            MouseClick, left, x, y ,,10
                            
                            MouseMove, 20, 40, 10, R
                            sleep 20

                            Sleep 10
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
OutputDebug looking 4 freez
while (x = 0)
{

Text:="|<>*65$10.UWHdCYuHdCUu3jzU"

if (ok:=FindText(63, 172, 3000, 800, 0, 0, Text))
{
  
  OutputDebug found in 1st
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  ; Click, %X%, %Y%
}


Text:="|<>*86$14.UXvCynjgvvCynjYvsCzzzU"

if (ok:=FindText(2891, 509, 3000, 800, 0, 0, Text))
{
  OutputDebug found in 2nd
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  ; Click, %X%, %Y%
}

Text:="|<>*117$14.ifviyvjivviyvjivwSzzzzzs"

if (ok:=FindText(330, 510, 3000, 800, 0, 0, Text))
{
  OutputDebug found in 3rd
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  ; Click, %X%, %Y%
}


}
OutputDebug freez found @ %X%, %Y%,

}
mapcheck()
{
;  if (firstrun != 1)
;  {
;    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, dust.png
;                   if (ErrorLevel = 0)
;                  { 
;                    MsgBox dude its dust
;                    Sleep 10000
;                  }
;   
;  }
}
isinhome()
{   
  lobby = 0
  error()
  x = 0 
  OutputDebug are we on home Screen?
  while (x = 0)
{
  sleep 1000
  error()
  changeaccs()
;Text:="|<home?>*114$10.sT0slX7QTlyDtz7wznzDzznzDU"   ; are we on home screen?
Text:="|<setting>*123$14.y7zVzMPU0M067VlswSC7VU0M07MPy7zVy"
if (ok:=FindText(2582, 777, 16, 100, 0, 0, Text))
{
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
}  
 
Text:="|<inlobby>*150$13.ndvhwqTfq/7zzU"
  if (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
    {
        home()
    }

Text:="|<setting>*123$14.y7zVzMPU0M067VlswSC7VU0M07MPy7zVy"    
}

Text:="|<ScoreTab>*80$6.zXdddXzUa"

while (x != 0 )
{
  
  if (ok:=FindText(1600, 480, 1600, 480, 0, 0, Text))
  {
    Sleep 500
  }
  else
  {
   break 
  }
}    

OutputDebug i think yes
update_client_check()
MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        
        
home()
popout()

zzz = 500
MouseMove,3189,122 ;3180,126     
Sleep %zzz%
MouseClick,left
Sleep %zzz%
MouseClick,left, 3140,126   ;nearby up   
Sleep %zzz%

Text:="|<nearby_chk>*131$7.zssBqvtwwyzTzrvzs"      ; near by wich bande hege k nhi?
if (ok:=FindText(3055, 157, 15, 15, 0, 0, Text))
{
  OutputDebug normal invite initiated
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
  OutputDebug super invite initiated
  superinv()
}

Text:="|<cancel_bt>*106$41.zzzzzzzzzzzzzzz7TslzzwAm10zztMU+Nzznp0Q3zzZ20dbzz2kUE3zzzzzzzzzzzzzzs"

if (ok:=FindText(3043, 787, 150000, 150000, 0, 0, Text))
{
 while (ok:=FindText(3043, 787, 150000, 150000, 0, 0, Text))
{
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
   Click, %X%, %Y%
 }
 superinv()
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

MouseMove, 2593, 313 
Sleep %zzz%
MouseClick,left, 2593, 313  

MouseMove, xpos, ypos
BlockInput, off      
popout()


Text:="|<joinbutton>*138$10.kC0Ek30z3w30A81kC"

while (ok:=FindText(2539, 143, 150000, 150000, 0, 0, Text))
{
  CoordMode, Mouse
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  Click, %X%, %Y%
}

lobbyfull := lobbycheck()   
if (lobbyfull = 1)
{
        OutputDebug cick on play
        MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
        BlockInput, On          ; BlockInput, off      
        MouseClick, left,2583,574,,90,, ; niche wala
        ;MouseClick, left,3058,473,,90,,  ; uper wala go
        
        MouseClick, left,2583,80,,90,,  ; uper wala
        ;MouseClick, left,3058,956,,90,,     ; niche wala go
        Sleep 400
        MouseClick, left, 2638,90,,90,,     
        MouseClick, left,0,480,,90,, R

        MouseClick, left,2585,800,,60,,
        MouseMove, xpos, ypos
        BlockInput, off      
        

        
      ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
                            if (errorlevel = 0)
                            {
                              OutputDebug ok found in isinhome funtion
                              isinhome()
                              return
                            }


        OutputDebug lobby joined
        ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 ok.png
                              if (errorlevel = 0)
                                {
                                isinhome()
                                return
                                }
                                return
}								 
}     
tenaccopen()
{
read_value()
OutputDebug CHKING IF all accs are open
sx1 = 14
sy1 = 198
tx1 = 33
ty1 = 350
algoritham()
i = 1
b = 1
a = 1
pos1 =  -x 3 -y 16
pos2 =  -x 643 -y 16
pos3 =  -x 1283 -y 16
pos4 =  -x 1923 -y 16
pos5 =  -x 2563 -y 16
pos6 =  -x 3 -y 496
pos7 =  -x 643 -y 496
pos8 =  -x 1283 -y 496
pos9 =  -x 1923 -y 496
pos10 = -x 2563 -y 496


while (i <= 10)
{
  error()
  if (i = 6)
  {
    b = 2
    a = 1
  }
      sx := sx%a%
      sy := sy%b%
      tx := tx%a%
      ty := ty%b%
ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 tv.png     
if (errorlevel = 0)
{
 OutputDebug found csgo @ position %i%
}
else
{
  error()
y := sy + 20
sleep 20		
Click, sx, %y%
ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *150 tv.png     
if (errorlevel = 0)
{
 OutputDebug found csgo @ position %i% in 2nd try
}
else
{
  ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *2 whitescreen.png
            while (ErrorLevel = 0)
            {
              OutputDebug white screen  @ %i%
              Click %FoundX%, %FoundY%
              sleep 39
               FoundX := FoundX + 634
               Foundy := Foundy - 6
               
              Click %FoundX%, %FoundY%
              Sleep 2000
              SendEvent, {up}
              sleep 39
              SendEvent, {enter}
              FoundX := FoundX - 310
              Foundy := Foundy + 235
              MouseMove %FoundX%, %FoundY%
              Sleep 1000
              ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *2 whitescreen.png
            }
  
  OutputDebug cant find csgo @ position %i%
  diff := 11 - i
  result := set - diff
  FileReadLine, users, username.txt, %result%
  
print()

		p := pos%i%
Run	c:\Program Files (x86)\Steam\Steam.exe  -login %users%	-applaunch 730 -silent -windowed -novid -low -nojoy -noaafonts -nosound -threads 1 -dxlevel 80 -safe  +r_rootlod 2 -d3d9ex -nocrashdialog -h 480 -w 640 %p%
	sleep 190000
  
  
}}
i++
a++

}
Text:="|<retry_connection>*150$21.zzzwC31iryxqzrVkSxizriryxq3rzzzw"

if (ok:=FindText(1824, 1133, 150000, 150000, 0, 0, Text))
{
  sleep 300000
  set := set - 10
  matchcount := matchlimit++
  changeaccs()
}
}
lobbycheck()
{
sleep 1000
read_value()
OutputDebug adv lobby check
sx1 = 0
sy1 = 0
tx1 = 640
ty1 = 480
algoritham()
i = 1
b = 1
a = 1
pos1 =  -x 3 -y 16
pos2 =  -x 643 -y 16
pos3 =  -x 1283 -y 16
pos4 =  -x 1923 -y 16
pos5 =  -x 2563 -y 16
pos6 =  -x 3 -y 496
pos7 =  -x 643 -y 496
pos8 =  -x 1283 -y 496
pos9 =  -x 1923 -y 496
pos10 = -x 2563 -y 496

sleep 1000
while (i <= 10)
{
  error()
  if (i = 6)
  {
    b = 2
    a = 1
  }
      sx := sx%a%
      sy := sy%b%
      tx := tx%a%
      ty := ty%b%
ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 green.png     
if (errorlevel = 0)
{
OutputDebug %i% is in lobby

}
else
{
  OutputDebug %i% is not in lobby fk
  OutputDebug waiting 5 sec
  sleep 5000
  ImageSearch, FoundX, FoundY, %sx%, %sy%, %tx%, %ty%, *50 green.png
  if (errorlevel = 0)
  {
    OutputDebug %i% is in lobby
  }
  else
  {	
    OutputDebug still %i% is not in lobby :(
    join = 1
    ;isinhome()
    lobbyfull = 0
    return lobbyfull
    break
  }
}
i++
a++
}
lobbyfull = 1
lobby = 1
return lobbyfull
}
superinv()
{
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
;OutputDebug a1 %Clipboard%

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
;OutputDebug a2 %Clipboard% 

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
;OutputDebug a3 %Clipboard%

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
;OutputDebug a4 %Clipboard%

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
;OutputDebug b1 %Clipboard%

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
;OutputDebug b2 %Clipboard%

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
;OutputDebug b3 %Clipboard%

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
;OutputDebug b4 %Clipboard%


loop 4
{
;OutputDebug %A_Index%, %a% 
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
;OutputDebug %Clipboard%
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
MouseClick, left,	2965,320
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
;OutputDebug %Clipboard%
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
 
  ;OutputDebug checking for cross
  sleep 100
  ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, crossfix.png
                                      if (ErrorLevel = 0)
                                          {
                                            OutputDebug cross found
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
                                              ;OutputDebug now w8 for 55 sec
                                              ;sleep 55100
                                              }
                                             
                                          }
}                                          
pressaccept()
{
  MouseGetPos, xpos, ypos ; MouseMove, xpos, ypos
  
   loop 2
  {
   MouseClick,left,320,270,,90,,
   
    loop,4
    {
        MouseClick, left,640,0,,90,, R

      }
      ;;;;;;;;;;;;;;;;;;;;;;;;
      MouseClick, left,320,750,,10,,
      
     
    loop,4
       {
        MouseClick, left,640,0,,90,, R
        Sleep 30
        
     
      }
    }  
  MouseMove, xpos, ypos          
                                
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
        OutputDebug  popout found
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
update_client_check()
{
  Text:="|<>*150$39.0000003k0E10040G0840Z2GZ/Z50GH9psd2GNGc4sSQvqs002000000E000000000U"

if (ok:=FindText(1280, 480, 1280, 480, 0, 0, Text))
{
            runwait kill_steam.bat
              Sleep 3000
            runwait kill_steam.bat
              sleep 3000
              
  Run	c:\Program Files (x86)\Steam\Steam1.exe  -login ateam_mehul spiceboy	-applaunch 730 -silent -windowed -novid -low -nojoy -noaafonts -nosound -threads 1 -dxlevel 80 -safe  +r_rootlod 2 -d3d9ex -nocrashdialog -h 480 -w 640

Text:="|<play_now>*83$25.0blC73smHVxRM4waAyS3iTCQrDUCPk"
x = 0
while (x =0)
{
if (ok:=FindText(2103, 1191, 150000, 150000, 0, 0, Text))
{
 
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  Click, %X%, %Y%
  break
}
Sleep 5000
}
sleep 3000
                                  SendRaw,``
                                  sleep 200
                                  SendRaw,`player_competitive_maplist_8_7_0
                                  sleep 200
                                  send {Down}
                                  sleep 200
                                  send {Ctrl} + {a}
                                  sleep 200
                                  send {Ctrl} + {c}
                                  sleep 200
                                  map_command := Clipboard
                                  sleep 200
                                  ;incomplete
                                  

x = 0
while(x = 0)
{
Text:="|<setting>*123$14.y7zVzMPU0M067VlswSC7VU0M07MPy7zVy" ; are we home screen
if (ok:=FindText(2103, 1191, 150000, 150000, 0, 0, Text))
{
  X:=ok.1.1, Y:=ok.1.2, W:=ok.1.3, H:=ok.1.4, Comment:=ok.1.5, X+=W//2, Y+=H//2
  Click, %X%, %Y%
  break
} 
sleep 2000
}



run c:\Program Files (x86)\Steam\Steam1.exe -app_stop 730 1
sleep 5000
run c:\Program Files (x86)\Steam\Steam1.exe -app_stop 730 1
sleep 5000
run c:\Program Files (x86)\Steam\Steam.exe -shutdown
sleep 3000
 runwait kill_steam.bat
 sleep 5000
SET := SET - 10
OutputDebug OPENING FROM ac %set%			   									 
newchangeaccs()
sleep 20000
}
}
testing()
{
  UX = 1
        UY = 1
        rounds = 7 ; how many rounds to win 
        halftimedelay = 30500
        warmupdelay = 80500
        rounddelay = 22500
        reconnectdelay = 8500
        reconnectdelay1 = 2000   ;reconnect delay on halftime
        lobby = 0
        loading  = 1
        win = 0
        script = 0
        script1 = 0
        go = 0
        firstrun = 0
        teamwin = 10
        wins = 10
        skiphftm = 0
        fixscore = 0
        join = 0 ;  u wanna autojoin on first run?? 1 is run 0 will not
        a1= 1
        a2 = 1
       ;play()
        
                                  MouseClick, Right,300,300,,90,,  
                                  sleep 100                                  
                                  SendRaw,``
                                  sleep 200
                                  SendRaw,`+showscores
                                  sleep 100
                                  send {enter}
                                  sleep 100
                                  Sendraw, ``
                                  sleep 200
                                  MouseClick, Right,300,700,,90,,  
                                  sleep 100
                                  SendRaw, ``
                                  sleep 200
                                  SendRaw, `+showscores
                                  sleep 100
                                  send {enter}
                                  sleep 100
                                  SendRaw, ``         
OutputDebug cick on play
        
        MouseClick, left,2583,574,,90,, ; niche wala
        ;MouseClick, left,3058,473,,90,,  ; uper wala go
        
        MouseClick, left,2583,80,,90,,  ; uper wala
        ;MouseClick, left,3058,956,,90,,     ; niche wala go
        Sleep 400
        MouseClick, left, 2638,90,,90,,     
        MouseClick, left,0,480,,90,, R

        MouseClick, left,2585,765,,90,,
} 
showscore()
{
   MouseClick, Right,300,300,,90,,  
                                  sleep 100                                  
                                  SendRaw,``
                                  sleep 200
                                  SendRaw,`+showscores
                                  sleep 100
                                  send {enter}
                                  sleep 100
                                  Sendraw, ``
                                  sleep 200
                                  MouseClick, Right,300,700,,90,,  
                                  sleep 100
                                  SendRaw, ``
                                  sleep 200
                                  SendRaw, `+showscores
                                  sleep 100
                                  send {enter}
                                  sleep 100
                                  SendRaw, ``     
}
algoritham()
{
xc = 640
yc = 480
sx1 := sx1
sx2 := sx1 + xc
sx3 := sx1 + xc*2
sx4 := sx1 + xc*3
sx5 := sx1 + xc*4
sy2 := sy1 + yc

tx1 := tx1
tx2 := tx1 + xc
tx3 := tx1 + xc*2
tx4 := tx1 + xc*3
tx5 := tx1 + xc*4
ty2 := ty1 + yc
}
getscore()
{	

 ;return
;getteam()
if (t = "no")
{
  teamwin = 8
  win = 8
  return
}
sx1 = 305   
sy1 = 32
tx1 = 322
ty1 = 44

a = 1
b = 1
i = 1
cts = -1
tss = -1
Clipboard := "ac"
algoritham()


sleep 20

	while(i <= 10)
	{	
      sx := sx%a%
      sy := sy%b%
      tx := tx%a%
      ty := ty%b%
      
      RunWait, Capture2Text\Capture2Text_CLI.exe --screen-rect "%sx% %sy% %tx% %ty%"  --clipboard ,,Hide
				;OutputDebug tada
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
      if clipboard = S
        Clipboard = 5
      cts := clipboard
      ;StringReplace,cts,cts,`r,,All
      ;cts += 0
      ;cts := cts + 0
									  
			   
    if cts is integer  ;if (cts != "")
    {
        cts += 0
		if ( cts > 0 and cts < 17 )
		{	
			OutputDebug ct score is %cts% or %clipboard%
            getct := cts
			break
		}
        ;else if ( cts = 0 and getct != "")
        ;{
        ;  
        ;  cts := getct + 2
        ;  OutputDebug assuming ct score is %cts% or %clipboard%
        ;  break
        ;}
        else 
        {
          cts = 0
          cts += 0
          OutputDebug else ct score is %cts% or %clipboard%
         ; break
        }  
	}    
		i++
        
	}
  
    ;return ; comment this or if else with mode selcetion    
sx1 = 324   ;t 
sy1 = 32
tx1 = 341
ty1 = 44
clipboard := a

i = 1
algoritham()
	while (i <= 10)
	{
      sx := sx%a%
      sy := sy%b%
      tx := tx%a%
      ty := ty%b%
      
      RunWait, Capture2Text\Capture2Text_CLI.exe --screen-rect "%sx% %sy% %tx% %ty%"  --clipboard ,,Hide
				;OutputDebug tada 
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
              if clipboard = S
        Clipboard = 5
      tss := clipboard
      ;StringReplace,tss,tss,`n,,All
      ;tss += 0
    if tss is integer  ;if (tts != "")
      {   
            tss += 0
			if(tss > 0 and tss < 17)
			{
				OutputDebug ts score is %tss% or %clipboard%
                gett := tss
                break
            }
           ; else if ( tss = 0 )
           ; {
           ;   tss := gett + 2
           ;   OutputDebug assuming ts score is %tss% or %clipboard%
           ;   break
           ; }
            else
            {
            tss = 0
            tss += 0
            OutputDebug else t score is %tss% or %clipboard%
            
            }
      } 
      i++      
	}
;return ; needed for 16-0
	if ( tss <=14 or cts <=14) and (tss >=0 or cts >=0 )
{		
  skiphftm = 1
	if (tss >= cts and t != "no" )
	{	wins = 7
		teamwin = 7
		if (cts <= 13)
		{	
			fixscore = 1
			if (t = "up")
            {
				updis()
              }
			else
            {
				dndis()
              }
		}
		else
		{
			if (t = "up")
            {
				updis()
			}
            else
            {
				dndis()
            }    
		}
		fixscore = 0
		getscore()
		return
	}
	if (tss < cts)
	{	wins = 7
		teamwin = 7
		if (tss <= 13)
		{	
			fixscore = 1 
			if (t = "up")
            {
				updis()
              }
			else
            {
				dndis()
              }
		}
		else
		{
			
			if (t = "up")
            {
				updis()
              }
			else
            {
				dndis()
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
      print()
    }  
;clearvar()
}
getteam()
{
  ;5,22,50,14
sx1 = 11   ;team
sy1 = 30
l = 48 ;66
b = 47 ;18
i = 1
gott := "T Start" 
gotct := "CT Start"

  algoritham()
  	while(i <= 10)
	{	
		box%i%()
		 OutputDebug team %get%
        got := get
		
			if( i <=5)
			{
				If InStr(get,"T Start") ; or InStr(get,"CT Start")
					{
						;~ OutputDebug team found
                        If InStr(get,"CT Start")
						;If (got = gott)
						{
							;OutputDebug t's are upper
							t = down
                            break
						}	
						else
						{
							t = up
							;OutputDebug t's are down
                            break
						}
					}		
			}
			else
			{
				If InStr(got,"T Start") ; or InStr(got,"CT Start")
					{
						;~ OutputDebug team found
						If InStr(get,"CT Start")
						{
							;OutputDebug t's are Down
							t = up
                            break
						}	
						else
						{
							t = down
							;OutputDebug t's are up
                            break
						}
					}
			}
			i++
            t = no
	}
    OutputDebug t = %t%
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
  Text:="|<dangerlobby>*122$8.kvavBq7zU"
        if (ok:=FindText(1280, 480, 1280, 480, 0, 0, Text))
        {
          OutputDebug danger zone lobby detected
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
    
  
  
  
  
SetMouseDelay, 20
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
SetMouseDelay, 300
}
changeaccs()
{   
  cd = 0
  ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, cd_bar.png
                   if (ErrorLevel = 0)
                  {
                    cd = 1
                    OutputDebug its cd
                  }

        if (cd = 1 or matchcount >= matchlimit)
        {
          matchcount = 0
          
            runwait kill_steam.bat
              Sleep 3000
            runwait kill_steam.bat
              sleep 3000
              newchangeaccs()
            




              sleep 10000
              join = 1
              return
        }
}            
changeaccs1()
{   
  cd = 0
  ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, cd_bar.png
                   if (ErrorLevel = 0)
                  {
                    cd = 1
                    OutputDebug its cd
                  }

        if (cd = 1 or matchcount >= matchlimit)
        {
          matchcount = 0
            runwait C:\Users\rumpel\Desktop\New Text Document.bat
              Sleep 3000
            runwait C:\Users\rumpel\Desktop\New Text Document.bat
              
            RunWait set%s%.exe
              sleep 60000
              Sleep 3000
              s++
              IF (s >= 11)
                s = 1
              ;isinhome()
			  join = 1
              return
        }
}            
newchangeaccs()
{
pos1 =  -x 3 -y 16
pos2 =  -x 643 -y 16
pos3 =  -x 1283 -y 16
pos4 =  -x 1923 -y 16
pos5 =  -x 2563 -y 16
pos6 =  -x 3 -y 496
pos7 =  -x 643 -y 496
pos8 =  -x 1283 -y 496
pos9 =  -x 1923 -y 496
pos10 = -x 2563 -y 496

if (set <= sold_accs)
  set := sold_accs + 1

i = 1
Index := set
loop
{
p := pos%i%
FileReadLine, ha,username.txt, %Index%
if (ErrorLevel = 1)
{
        set = 1
        Index := set
        i = 1
}
else       
   {   
		
Run	c:\Program Files (x86)\Steam\Steam.exe  -login %ha%	-applaunch 730 -silent -safe -windowed -novid - low -nojoy -noaafonts -nosound -threads 1 -dxlevel 80  +r_rootlod 2 -d3d9ex -nocrashdialog -h 480 -w 640 %p%
	sleep 5000
		i++
		;if (i = 11)
		;i = 1
		Value := Mod(index, 10)
        if (value = 0)	
          {
          set := Index + 1
          break	
          }
        Index++
}}
write_value()
}
csgo_size_check()
{
	Text:="|<is everythingok>*156$71.w00003zw0001s00007zs0003k000Dzzzk007U000TzzzU00D0000zzzz000S0001zzzy000zw03zzzzzw03zs07zzzzzs07zk0Dzzzzzk0DzU0TzzzzzU0Tz00zzzzzz00zy01zzzzzy01zw03zzzzzw03zs07zzzzzs07zk0Dzzzzzk0DU000TzzzU00D0000zzzz000S0001zzzy000w0003zzzw001s00007zs0003k0000Dzk0007U0000TzU000D00000zz0000S00001zy0000w00000000001"

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
}
print()
{
ifnotexist, ranks   ; Location Of The Saved Capture
fileCreateDir, ranks   ; Location Of The Saved Capture
Run, C:\Program Files\IrfanView\i_view64.exe /capture=0 /convert=ranks\set_%set%.match_%matchcount%_%A_TickCount%.png
;Run, C:\Program Files\IrfanView\i_view64.exe /capture=0 /convert=ranks\set_%set%.match_%matchcount%_$U(`%Y-`%m-`%d_`%H`%M`%S).png
}
clearvar()
{
VarSetCapacity(sx1, 0)
VarSetCapacity(sx2, 0)
VarSetCapacity(sx3, 0)
VarSetCapacity(sx4, 0)
VarSetCapacity(sx5, 0)
VarSetCapacity(tx1, 0)
VarSetCapacity(tx2, 0)
VarSetCapacity(tx3, 0)
VarSetCapacity(tx4, 0)
VarSetCapacity(tx5, 0)
VarSetCapacity(sy1, 0)
VarSetCapacity(sy2, 0)
VarSetCapacity(ty1, 0)
VarSetCapacity(ty2, 0)
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




