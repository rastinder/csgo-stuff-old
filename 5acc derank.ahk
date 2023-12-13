CoordMode Pixel, Screen
CoordMode Mouse, Screen
Loop{
ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *5 go.png
                If (ErrorLevel = 1 or ErrorLevel = 2)
                {
                     go = 0 ; this is trash code
                }
                Else{      
                            x  :=  FoundX + 30
                            y  :=  FoundY
                          
                            MouseClick, left, x, y
                            MouseMove, 20, -50, 0, R
                            Sleep 10
                            MouseMove, xpos, ypos
                            BlockInput, off
                                                     
                            go = 1
                            OutputDebug clicked on go
                            Sleep 1000
                            ;crossfix()
						}
							
	ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, *15 accept.png
   if (ErrorLevel = 0)
                        {
                          
                                x :=  FoundX 
                                y :=  FoundY 
                               
                                MouseClick, left, x, y
                                ;MouseMove, 0,40,10,R
                                
                        }        						
                            
                    
}					