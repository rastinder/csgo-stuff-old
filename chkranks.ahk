#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
#include <tf> 
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
CoordMode Pixel, Screen
CoordMode Mouse, Screen
SetTitleMatchMode, 2
global Users:=[]
,output12:=[],ha:=[]

Str = zbc 
file_write2 := "!C:\Python Scripts\pythoncsgoinfo\masteroutput.csv" 
indexing = 1

Loop, Read,C:\Python Scripts\pythoncsgoinfo\masteroutput.csv
{
    la := A_LoopReadLine
    if la
    {
        la := RTrim(A_LoopReadLine)
        ,ha := StrSplit(la, ",")
        if(ha.MaxIndex() = 7)
        {
              output12.Push(la)
          ;  OutputDebug,in %la% `n
        }
        Else if(ha.MaxIndex() = 8)
        {
            output12.Push(la)
            OutputDebug,in %la% `n
        }
        ; Else
        ; OutputDebug,out %la% `n

    }
}

dubUsers:=[]
Loop, % output12.MaxIndex()
{
    haa := output12[A_Index]
    ;OutputDebug, %haa% `n
    ,ha := StrSplit(haa, ",")
    ;OutputDebug ............................................................................................................................................. `n
   ,Str := ha[4] ;win
   ; d := dubVal(output12,Str) 
    ,w := HasVal(dubUsers,Str) 
    
    OutputDebug w=%w%  value %Str% `n`n
    if ( w = 0)
    {
        users.Push(haa)
        dubUsers.Push(haa)
    }
    else
    {
        Str1 := dubUsers[w]
        OutputDebug new=%haa% `nold=%str1% `n
        if (haa > str1)
        {
            v := HasVal(users,Str) 
            users[v]:=haa
        }
     ;   else if (haa < str1)
     ;   {
     ;       v := HasVal(users,Str) 
     ;       users[v]:=Str1
     ;   }
            
    }
   ;     dubUsers.Push(haa)

}
output12:=[]
file_write := "!\\2700-PC\C\DLL\masteroutput.csv" 
FileDelete,\\2700-PC\C\DLL\masteroutput.csv
Loop, % users.MaxIndex()
{
    haa := Users[A_Index]
    FileAppend,%haa% `n,\\2700-PC\C\DLL\masteroutput.csv
}

hasVal(haystack, needle) {
    if(!isObject(haystack))
        return false
    if(haystack.Length()==0)
        return false
    for k,v in haystack
    {
        IfInString,v, %needle%
        {
            return k
        }
    }
    return false
}

dubVal(haystack, needle) {
    count = 0
    if(!isObject(haystack))
        return false
    if(haystack.Length()==0)
        return false
    for k,v in haystack
    {
        IfInString,v, %needle%
        {
            count++
            if count = 2
                return k
        }
    }
    return false
}
