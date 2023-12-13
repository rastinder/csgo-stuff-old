CoordMode Pixel, Screen
CoordMode Mouse, Screen



		MouseClick, left,2583,574,,90,, ; niche wala
        ;MouseClick, left,3058,473,,90,,  ; uper wala go
        
        MouseClick, left,2583,80,,90,,  ; uper wala
        ;MouseClick, left,3058,956,,90,,     ; niche wala go
        Sleep 400
        MouseClick, left, 2638,90,,90,,     
        MouseClick, left,0,480,,90,, R

        MouseClick, left,2585,765,,60,,
        MouseMove, xpos, ypos






















f6::play()
play()
{
	loop{
		Sleep 500
		
	
PixelGetColor, color, 350,545
     


  colour := color
 
	
	OutputDebug  ,%color%, %colour%,
    while (color = colour)
	{
		Sleep 500
        PixelGetColor, colour, 350,545
		OutputDebug  ,%color%, %colour%,
		
	}
	
}}