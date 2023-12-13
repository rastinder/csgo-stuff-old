Loop, Read, C:\Users\Administrator\Documents\MyScript.txt
    {
		;OutputDebug %  A_LoopReadLine
		If InStr(A_LoopReadLine,"click") and InStr(A_LoopReadLine,"Down")
			b_LoopReadLine = DllCall("mouse_event", "UInt", 0x02)
		else if   InStr(A_LoopReadLine,"click") and InStr(A_LoopReadLine,"Up")
        b_LoopReadLine = DllCall("mouse_event", "UInt", 0x04)
		else if   InStr(A_LoopReadLine,"click")
		{
			word_array := StrSplit(A_LoopReadLine, "," )
		,x := word_array[2]
		,y := word_array[3]
		b_LoopReadLine= DllCall("SetCursorPos", "int", %x%, "int", %y%)
		}
		else
			b_LoopReadLine:=A_LoopReadLine
		;OutputDebug `n b=%b_LoopReadLine% `n
		;OutputDebug % A_LoopReadLine
		FileAppend,%b_LoopReadLine% `n,rass.txt
    }
	
