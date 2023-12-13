#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

All_UserInfo :=[]
reserve :=[]
ha = []
storereserve :=[]
inreserve := reserve.maxindex()
loop , 20
	Array_%a_index% :=[]
Index = 1
posi = 1
					loop, Read , username.txt
					{
						ha := StrSplit(A_LoopReadLine, ",")
						,rank := ha[2]
						,pr := ha[3]
						if !rank
						{
								rank := oldrank
								pr := oldpr
						}
						
							
						 IfInString,rank, Global
						{
							Array_1.Push(A_LoopReadLine)
						}
						else IfInString,rank, Supreme
													{
							Array_2.Push(A_LoopReadLine)
						}
						else IfInString,rank, Eagle Master
													{
							Array_3.Push(A_LoopReadLine)
						}
							
						else IfInString,rank, Eagle
													{
							Array_4.Push(A_LoopReadLine)
						}
							
						else IfInString,rank, Distinguished Master Guardian
													{
							Array_5.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Master Guardian Elite
													{
							Array_6.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Master Guardian II
													{
							Array_7.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Master Guardian I
													{
							Array_8.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Gold Nova Master
													{
							Array_9.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Gold Nova III
													{
							Array_10.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Unranked
													{
							Array_11.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,expired
													{
														
							Array_12.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Gold Nova II
													{
							Array_14.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Gold Nova I
													{
							Array_15.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Silver Elite Master
													{
							Array_16.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Silver Elite
													{
							Array_17.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Silver III
													{
							Array_18.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Silver II
													{
							Array_19.Push(A_LoopReadLine)
						}
							
						else IfInString,rank,Silver I
													{
							Array_20.Push(A_LoopReadLine)
						}
						else
						Array_13.Push(A_LoopReadLine)

						Index++
						posi ++
						if posi = 11
							posi = 1
						if rank
						{
						oldrank := rank
						oldpr := pr
						}
					}
x = 1
unrakedarrayh := []
unrakedarrayl := []
while (x = 1)
{
	unrakedarrayh := []
loop, % Array_11.MaxIndex()
{
		insex := A_Index + 1
							ha := StrSplit(Array_11[a_index], ",")
						,pr := ha[3]
							ha1 := StrSplit(Array_11[insex], ",")
						,pr1 := ha1[3]
	;OutputDebug %insex%  %pr%  %pr1% `n
	if ( pr  < pr1)
		unrakedarrayl.push( Array_11[a_index])
	else 
		unrakedarrayh.push( Array_11[a_index])
}
if (unrakedarrayl.MaxIndex() == "")
	x = 0
loop % unrakedarrayl.length() ; iterate through the array2
    unrakedarrayh.push(unrakedarrayl.RemoveAt(1)) ; remove the last entry of array2 and put it at the end of array1
Array_11 := unrakedarrayh
count := Array_11.MaxIndex()
;OutputDebug %count%
}

FileDelete, username.txt
	loop 20
	{
		num := a_index
		if array_%num%
		{
		loop % array_%num%.MaxIndex()
		{
			if array_%num%[A_Index]
			{
				this := array_%num%[A_Index]
				OutputDebug %this%`n
				FileAppend,%this%`n, username.txt
			}
		else
			break
		}
	}
}

ExitApp



						
						FileReadLine, ha,username.txt, %Index%
						All_UserInfo.push(ha) ; 







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
			All_UserInfo[A_Index]  := ha
			TF_ReplaceLine(file_write2,indexing,indexing,str)
			TF_ReplaceLine(file_write1,indexing,indexing,Str )
			indexing++





a = %A_ScriptDir%\levelnum.txt
if  !fileexist(a)
makenewlevels()
processoflevel()
ExitApp
f2::makenewlevels()
f3::processoflevel()
f4::recieveoutputlevels()
f5::filesdelete()



makenewlevels()
{
FileDelete level5.txt
loop
{
FileReadLine, value,username.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, level5.txt
}
}

processoflevel()
{
FileDelete, levelnum.txt
b = 0
loop , 11
{
FileReadLine, value,level%b%.txt, 10
;lvl := level%b%
if (ErrorLevel != 1)
	FileAppend, %b% `n, levelnum.txt
b++
}

loop
{
FileReadLine,lvl,levelnum.txt,%A_Index%
if (ErrorLevel = 1)
        break
;if  !(lvl > 10 or lvl < 0)
;	{
		b = %lvl%
		a := b-1
		c := b+1

		i = 1
		loop
		{
		FileReadLine, value,level%b%.txt, %A_Index%
		if (ErrorLevel = 1)
				break
		if ( i = 11)
			i = 1
		if (i <= 5)	
		{
			FileAppend, %value% `n, level%c%.txt
		}
		else
		{
			FileAppend, %value% `n, level%a%.txt
		}
;	}
	i++
}
FileDelete, level%b%.txt
}
recieveoutputlevels()
}













recieveoutputlevels()
{
FileDelete, username.txt
loop
{
FileReadLine, value,level10.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level9.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level8.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level7.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level6.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level5.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level4.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level3.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level2.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}	

loop
{
FileReadLine, value,level1.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}
loop
{
FileReadLine, value,level0.txt, %A_Index%
if (ErrorLevel = 1)
        break
	FileAppend, %value% `n, username.txt
}
}

filesdelete()
{
	b = 0
Loop,11
{
	FileDelete, level%b%.txt
	b++
}
}

