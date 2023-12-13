;*************************************************************************************************************************
;*************************************************************************************************************************
;*************************************************************************************************************************

;Written By: 	Hellbent
;Date Started: 	Nov 21st 2019
;Name: Not Named Yet

;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;                         HOTKEYS:
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

;~ Hotkey , *^ESC , GuiClose  ; Ctrl + Esc to exit     ;<------------------------------   Activate to use.


Hotkey, Numpad1 , Take_ScreenShot   ;<---------------------  Take screenshot of pre-selected area.

;*************************************************************************************************************************

;Auto-Execute Section

;The following code executes as soon as the script is run. 
;Setup of script settings and options.
;Declaration of global and other variables used throughout the script.
;Creation of the main gui.
;Creation of the folder to store saved screenshots.

;*************************************************************************************************************************

	;Set the script to exit the previous instance if it is run again while it is already running
#SingleInstance, Force

	;Set the script to use no environment variables
#NoEnv

	;Set the script to run at top speed
SetBatchLines, -1

	;Set the coordmode used when selecting pixel positions to be related to the screen
CoordMode, Pixel , Screen

	;Set the coordmode used when selecting cursor positions to be related to the screen
CoordMode, Mouse , Screen

	;Start using Gdip.
Gdip_Startup()

IfNotExist, %A_ScriptDir%\Screen Shots
	;If the folder to hold the saved screenshots doen't already exist.

		;Create a folder to hold the saved screenshots.
	FileCreateDir, %A_ScriptDir%\Screen Shots
	
	;Set the working dir to be the folder that will hold any screenshots taken.
SetWorkingDir, %A_ScriptDir%\Screen Shots

;Declaration of global variables used throughout the execution of the script.
;****************************************************************************************************
global CapActive := 0 , SP , XCAP , YCAP , WCAP , HCAP , OB := 0

global CapWin := {} , Monitors := New MonitorClass()

;~ global TXC , TYC , BB := New_Brush( "000000" , "88" ) , GB := New_Brush( "00ff00" , "55" ) , RB := New_Brush( "ff0000" , "55" )
global TXC , TYC , BB := New_Brush( "000000" , "ff" ) , GB := New_Brush( "00ff00" , "55" ) , RB := New_Brush( "ff0000" , "55" )

global ShowWin := {} , ImageList1 := [] , ZoomWindow := {}

global Index := 1 , Frame1 , Detached , Message

global OutColor := "3399FF"
;****************************************************************************************************

;###################################################################################################
;Added Jan 7th, 2020
;Check if there are any saved colors and dump them into a variable.
IfNotExist, %A_ScriptDir%\Saved Colors.txt
	FileAppend,3399FF`,3399FF`,3399FF`,3399FF,%A_ScriptDir%\Saved Colors.txt
FileRead, SavedColors, %A_ScriptDir%\Saved Colors.txt
global SavedColors:=StrSplit(SavedColors,",")
;~ ToolTip,% SavedColors[1] "`n" SavedColors[2] "`n" SavedColors[3] "`n" SavedColors[4]
;###################################################################################################

	;Create a instance of a layered window for the main gui
global CDisplay := Layered_Window_SetUp( 4 , A_ScreenWidth - 250 , 50 , 200 , 200 , 1 , "-Caption -DPIScale +ToolWindow +AlwaysOnTop" )

	;Add a text control to act as a trigger for moving the window
Gui, 1: Add , Text , x0 y0 w200 h40 gMove_Window hwndForumTestHwnd

	;Add a text control to act as a trigger for getting a color from the screen
Gui, 1: Add , Text , x45 y75 w110 h30 gGetColor

	;Add a text control to act as a trigger for running the setting menu.
Gui, 1: Add , Text , x45 y103 w110 h30 gGetColor

	;Add a text control to act as a trigger for taking a screenshot.
Gui, 1: Add , Text , x45 y135 w20 h20 gCreate_Capture_Size_Window

	;Add a text control to act as a trigger for displaying the screenshots saved in the scripts folder.
Gui, 1: Add , Text , x75 y135 w20 h20 gShowPics


	;Add a text control to act as a trigger for launching the 3rd function.
Gui, 1: Add , Text , x105 y135 w20 h20 gTemp1

	;Add a text control to act as a trigger for launching the 4th function.
Gui, 1: Add , Text , x135 y135 w20 h20 gTemp2

	;Draw the main windows background to the graphics.
Gdip_DrawImage( CDisplay.G , HB_BITMAP_MAKER() , 0 , 0 , CDisplay.w , CDisplay.h ) 

	;Draw the Get Color button to the graphics.
Gdip_DrawImage( CDisplay.G , _Create_Default_Bitmap( 110 , 30 , "0xFF2D2F33" , "0xFF000000" , "0xFF3399FF" , "Get Color" , "12 Bold" , "0" , "Segoe UI" ) , 45 , 75 , 110 , 30 ) 

	;Draw the Settings button to the graphics.
Gdip_DrawImage( CDisplay.G , _Create_Default_Bitmap( 110 , 30 , "0xFF2D2F33" , "0xFF000000" , "0xFF3399FF" , "Settings" , "12 Bold" , "0" , "Segoe UI" ) , 45 , 103 , 110 , 30 ) 

	;Draw the graphics to the main window and set its default size and positioning.
UpdateLayeredWindow( CDisplay.hwnd , CDisplay.hdc , CDisplay.x , CDisplay.y , CDisplay.w , CDisplay.h )

	;Create a new brush 
Brush := Gdip_BrushCreateSolid( "0xFF2D2F33" )

	;Use the brush to cover the section of the graphics that will contain the text displaying the color.
Gdip_FillRectangle( CDisplay.G , Brush , 45 , 55 , 110 , 20 )

	;Delete the brush.
Gdip_DeleteBrush( Brush )

	;Add text to the graphics containing the color.
Gdip_TextToGraphics( CDisplay.G , OutColor := "0x3399ff" , "s12 Bold Center vCenter cFF3399FF  x45 y50" , "Segoe UI" , 110 , 30 )

	;Show the window hidden to set its default width and height.
Gui, 1: Show , hide w200 h200 , Gadget 

	;Show the window with its tabbed size.
Gui, 1: Show , % "h" 45 

	;Draw the graphics to the main window.
UpdateLayeredWindow( CDisplay.hwnd , CDisplay.hdc )

;###################################################################################################
;Added Jan 7th, 2020
;Update the main window with the saved colors

Loop, 4	{
	OutColor := SavedColors[A_Index]
	ChangeColor(A_Index)
}

;###################################################################################################


	;Set a timer that will keep the main window on top of all other windows
SetTimer, Always , 2000

	;End of the Auto-Execute Section.
return

;*************************************************************************************************************************

;Subroutine: GuiClose

;Triggered by press the close button on a gui or by pressing the Hotkey Escape
;Once called the script will exit.

;*************************************************************************************************************************

GuiClose:
;~ *Esc::
	ExitApp


;*************************************************************************************************************************

;Function: Move_Window

;Called whenever the trigger text control at the top of the main gui or the sides of the Display Window are clicked.
;Allows the window to be moved around. Thinking about having the Display window follow the main window if it hasn't been moved yet.

;*************************************************************************************************************************

Move_Window(){
	
		;Post WM_NCLBUTTONDOWN message to allow the active window to be dragged to a new location
	PostMessage, 0xA1 , 2
		
		;Redraw the graphics
	UpdateLayeredWindow( CDisplay.hwnd , CDisplay.hdc )
	
}

;*************************************************************************************************************************

;Function: Temp1

;A placeholder function for button 3

;*************************************************************************************************************************

Temp1(){
	
	if(GetKeyState("Shift")){
		;If Shift is being held
		
			;Change the color of this button on the main gui to the one currently in the main color display.
		ChangeColor(3)
			
			;Write the new list of saved colors to file.
		WriteColors(3)
		
			;exit this thread
		return
		
	}
}

;*************************************************************************************************************************

;Function: Temp2

;A placeholder function for button 4

;*************************************************************************************************************************

Temp2(){
	
	if(GetKeyState("Shift")){
		;If Shift is being held
		
			;Change the color of this button on the main gui to the one currently in the main color display.
		ChangeColor(4)
		
			;Write the new list of saved colors to file.
		WriteColors(4)
		
			;exit this thread
		return
		
	}
	
}


;*************************************************************************************************************************

;Function: Always

;A timed function that puts the main gui on top of any other window ( even ones that are using the AlwaysOnTop setting )

;*************************************************************************************************************************

Always(){
	
		;Draw the window on top of all other windows
	Gui,1:Show,NA
	
}


;*************************************************************************************************************************

;Function: WriteColors

;This function is called every time one of the four saved colors is changed.
;Deletes the old file and then writes a new one with the updated saved colors.

;*************************************************************************************************************************

WriteColors(Position){
	SavedColors[Position] := OutColor 
	FileDelete,%A_ScriptDir%\Saved Colors.txt
	Loop, 4	{
		FileAppend,% SavedColors[A_Index]",",%A_ScriptDir%\Saved Colors.txt
	}
}



;*************************************************************************************************************************

;Function: GuiContextMenu

;Triggered by right clicking the main gui.
;Toggles between showing the main window at full size or tab sized.

;*************************************************************************************************************************

GuiContextMenu(){
	
		;Create a static variable to maintain the value of the toggle state
	static Tog := 1
	
	if( Tog := !Tog )
		;test if the inverted value is true while also setting it as the value
	
			;Show the main window with the tab sized height
		Gui , 1: Show , % "h" 45 
		
		
	else	{
		;if the value of the toggle is false 
	
			;Show the full sized main window
		Gui, 1: Show , % "h" 200
		
	}
	
		;Redraw the graphics
	UpdateLayeredWindow( CDisplay.hwnd , CDisplay.hdc )
	
}

;*************************************************************************************************************************

;Function: ShowPics

;Triggered by pressing the Second Square on the main gui.
;This function is a hub for a number of actions that can happen depending on the keys that are being pressed when the button is pressed.
;Shows a timed tooltip displaying the main function of this button.

;*************************************************************************************************************************

ShowPics(){
	
		;Set the value for the message that contains the name of the main operation for this button
	Message := "View ScreenShots"
	
		;Set a timer to show the tooltip containing the message quickly following the mouse until the other timer turns it off.
	SetTimer, TooltipFollow , 30
	
		;Set a one time timer to turn off the tooltip timers
	SetTimer, TooltipOff , -900
	
	if( GetKeyState( "Shift" ) )
		;if the key shift is being held down when the button is pressed
	
			;Call the function to change the color on the button for this function ( Button 2 ), return and then write the new colors
		return ChangeColor( 2 ) , WriteColors( 2 )	
		
	else if( GetKeyState( "ctrl" ) )
		;If Control is being held when the button is pressed.
	
			;No action currently assigned for this key... yet.
		return
		
		;Get the x and y positions of the main gui to be used for the positioning of the Display Window.
	WingetPos, tx , ty ,,, % "ahk_ID " CDisplay.Hwnd
	
		;Call the function to create the Display Window, passing it the x and y coords. 
	Create_Display_Window( tx , ty + 190 )
	
}

;*************************************************************************************************************************

;Function: TooltipFollow

;A timed function that displays a tooltip at the current cursor location rapidly.
;This timer is terminated by another timer.

;*************************************************************************************************************************

TooltipFollow(){
	
		;Set the owner of the tooltip to the main gui so that the tooltip will always show above all windows.
	Gui, 1: +OwnDialogs
	
		;Display the tooltip containing the message.
	Tooltip, % Message
	
}

;*************************************************************************************************************************

;Function: TooltipOff

;A timed function that displays a tooltip at the current cursor location rapidly.
;This timer is terminated by another timer.

;*************************************************************************************************************************

TooltipOff(){
	
		;Turn off the timer for the message tooltip.
	SetTimer, TooltipFollow , Off
	
		;Turn off any active tooltips
	ToolTip,
	
}

;*************************************************************************************************************************

;Function: Create_Display_Window

;Create a small window that displays the screenshots taken with this device.

;*************************************************************************************************************************

Create_Display_Window( tx := "" , ty := "" ){
	
		;Select the object
	SelectObject( ShowWin.hdc , ShowWin.obm )
	
		;Delete the object
	DeleteObject( ShowWin.hbm )
	
		;Delete the device context
	DeleteDC( ShowWin.hdc )
	
		;Delete the graphics
	Gdip_deleteGraphics( ShowWin.G )
	
		;Destroy the Display Window if it already exists. I could just use the "New" option, but destroying the window is more fun. 
	Gui,5:Destroy
	
		;Create a new layered window.
	ShowWin := Layered_Window_SetUp( 3 , 0 , 0 , 970 , 220 , "5" , "+AlwaysOnTop -DPIScale -Caption +Owner1" ) 
	
		;Draw the graphics to the Display Window and set its default size and positioning.
	UpdateLayeredWindow( ShowWin.hwnd , ShowWin.hdc , ShowWin.x , ShowWin.y , ShowWin.w , ShowWin.h )
	
		;Draw the background onto the graphics.
	Gdip_DrawImage(ShowWin.G, DW := DisplayWindow(), 0, 0, ShowWin.w, ShowWin.h) 
	
		;Delete the Background bitmap.
	Gdip_DisposeImage(DW)
	
		;Add a text control to act as a trigger for moving this window.
	Gui,5:Add,Text,x0 y0 w43 h220 gMove_Window
	
		;Add a text control to act as a trigger for moving this window.
	Gui,5:Add,Text,x927 y0 w43 h220 gMove_Window
	
		;Add a text control to act as a trigger for closing this window.
	Gui,5:Add,Text,x904 y40 w20 h110 g5GuiClose
	
		;Add a text control to act as a trigger for moving forward in the image list.
	Gui,5:Add,Text,x691 y176 w112 h19 gMoveForward
	
		;Add a text control to act as a trigger for moving Backward in the image list.
	Gui,5:Add,Text,x181 y176 w112 h19 gMoveBackward
	
		;Add a text control to act as a trigger for refreshing the image list and updating the Dispaly Window.
	Gui,5:Add,Text,x47 y42 w16 h106 gRefresh
	
		;Add a text control to act as a trigger for the center frame of the Display Window.
	Gui,5:Add,Text,x411 y21 w150 h150 hwndFrame1 gGetInfo1 
	
		;Add a text control to act as a trigger for moving Backward in the image list. (this may change, currently attached to one of the frames)
	Gui,5:Add,Text,x241 y21 w150 h150 hwndFrame2 gMoveBackward
	
		;Add a text control to act as a trigger for moving Backward in the image list. (this may change, currently attached to one of the frames)
	Gui,5:Add,Text,x71 y21 w150 h150 hwndFrame3 gMoveBackward
	
		;Add a text control to act as a trigger for moving Forward in the image list. (this may change, currently attached to one of the frames)
	Gui,5:Add,Text,x581 y21 w150 h150 hwndFrame4 gMoveforward
	
		;Add a text control to act as a trigger for moving Forward in the image list. (this may change, currently attached to one of the frames)
	Gui,5:Add,Text,x751 y21 w150 h150 hwndFrame5 gMoveforward
	
		;Get the size of the monitor that the cursor is currently in.
		;This is used in position the Display Window when it is first created.
		;Purpose is to have the Dispaly Window line up with the left edge of the main gui when possible or line up with the right side of the monitor when not.
	temp:=Monitors.Get_New_Window_Position(Monitors.Get_Current_Monitor(),0,0,2,2)
	
		;Get the current position of the main gui
	WinGetPos , tX, tY,,, % "ahk_ID " CDisplay.hwnd
	
		;Calculate if the Dispaly Window can be popped up at the same x position as the main gui, or if it needs to line up along the right side of the monitor
	(tx+970>temp.x)?(ntx := temp.x - 970 ):(ntx := tx)
	
		;Calculate if the Display Window can sit below the main gui, or if it needs to be placed above it.
	(ty+200+220+10 > temp.y)?(nty := (ty - 220) -10 ):(nty := ty + 200 + 10)
	
		;Show the Dispaly Window at the calculated position
	Gui, 5: Show , % "x" ntx " y" nty " w970 h220 NA"
	
		;Draw the graphics onto the Dispaly Window
	UpdateLayeredWindow( ShowWin.hwnd , ShowWin.hdc )
	
		;Create a new List of all the images in the target folder
	ImageList1 := "" , ImageList1 := Get_File_List()
	
		;Draw a group of the images from the list to the Display Window Frames. (Based around the current value of "Index")
	UpdateWheel( Index , ImageList1 )
	
		;Start a timer to watch for the cursor moving over the center frame. This will cause a small window to pop up above the Display Window containing the Indexed Image
	SetTimer, ImageZoom , 300
	
}

;*************************************************************************************************************************

;Function: UpdateWheel

;Update the Display Window with the images found in the screenshot folder

;*************************************************************************************************************************

UpdateWheel( Index , ImageList1 ){
	
	if( !ImageList1 )
		;If there are no images in the folder
		
			;exit the function
		Return
	
		;Set an array with the positions for images to be placed.
	Positions := [ { x : 411 , y: 21 } , { x : 241 , y: 21 } , { x : 71 , y: 21 } , { x : 581 , y: 21 } , { x : 751 , y: 21 } ]
	
		;Create some variable / arrays to help in determining which image needs to get placed and what size it should be.
	Images := [] , PB := [] , caseit := [ 0 , -1 , -2 , +1 , +2 ] , Set := [ 150 , 70 , 70 , 70 , 70 ] 
	
	Loop, 5		{
		;Loop once for every frame in the Display Window.
	
			;Create a new brush, use it to redraw over each frame to remove any previous images, then delete the brush.
		Brush := Gdip_BrushCreateSolid( "0xFF000000" ) , Gdip_FillRectangle( ShowWin.G , Brush , Positions[A_Index].X , Positions[A_Index].Y , 150 , 150 ) , Gdip_DeleteBrush( Brush )
		
			;Create bitmaps of the images that need to be dispalyed.
		PB[ A_Index ] := Gdip_CreateBitmapFromFile( ImageList1[Index + caseit[ A_Index ] ] )
			
			;Resize each of the bitmaps to fit within the allotted space while maintaining the same aspect ratio 
		Centering := ResizeIt( PB[ A_Index ] , Width , Height , Set[ A_Index ] )
		
			;Check if there is a bitmap for the current index, and if there is, Draw it to the graphics
		( PB[ A_Index ] ) ? ( Gdip_DrawImage( ShowWin.G , PB[ A_Index ] , Positions[ A_Index ].X  , Positions[ A_Index ].Y  , Width , Height ) )
		
			;Delete the bitmaps to free up the memory
		Gdip_DisposeImage( PB[ A_Index ] )
		
	}
		
		;Create a new brush, paint over the area that contains the "Index" text, then delete the brush. 
	Brush := Gdip_BrushCreateSolid( "0xff333333" ),Gdip_FillRectangle( ShowWin.G , Brush , 810 , 174 , 80 , 20 ),Gdip_DeleteBrush( Brush )	
	
		;Create a new brush, paint the "Index" number, then delete the brush (Bottom layer of the text).
	Brush := Gdip_BrushCreateSolid( "0xff000000" ),Gdip_TextToGraphics( ShowWin.G , Index , "s18 Center vCenter Bold c" Brush " x800 y175" , "Segoe UI" , 100 , 20 ),Gdip_DeleteBrush( Brush )	
		
		;Create a new brush, paint the "Index" number, then delete the brush (Top layer of the text).
		Brush := Gdip_BrushCreateSolid( "0xff3399FF" ),Gdip_TextToGraphics( ShowWin.G , Index , "s18 Center vCenter Bold c" Brush " x801 y176" , "Segoe UI" , 100 , 20 ),Gdip_DeleteBrush( Brush )	
	
		;Draw the graphics to the Display Window.
	UpdateLayeredWindow( ShowWin.hwnd , ShowWin.hdc )
	
}


;*************************************************************************************************************************

;Function: ImageZoom

;A timed routine that checks if the cursor is over the center image display frame in the Display Window ("ShowWin")
;If it is, create a small window with a larger example of the center image ("Index")

;*************************************************************************************************************************

ImageZoom(){
	
		;create a static control variable to help with flow of control
	static ActiveFrame 
	
		;get the hwnd of the control under the cursor
	MouseGetPos,,,, ctrl, 2
	
	if( !ActiveFrame && ctrl = Frame1 ) {
		;if the image display is not already active and if the control under the cursor is the center frame panel
		;create a display window containing the image from the center frame ("Index")
	
			;create a bitmap of the image (.png) saved in the folder
		pBit := Gdip_CreateBitmapFromFile( ImageList1[ Index ] ) 
	
			;resize and scale the image to its new size 
		ResizeIt( pBit, Width, Height, 400 )
		
			;Create a new floating window directly above the center frame containing the selected image
		CreateZoomWindow( pBit, Width, Height )
		
			;Once drawn to the graphics, the bitmap can get deleted. 
		Gdip_DisposeImage(pBit)
		
			;Set control variable to 1 so this part gets skipped until the control under the cursor is no longer the correct one.
		ActiveFrame := 1
		
	}else if( ActiveFrame && ctrl != Frame1 ){
		;if the image display is already active and if the control under the cursor is not the center frame panel
		;Destroy the zoom window and swap the value of the control variable
		
			;Destroy the Zoom Window
		Gui,6:Destroy
		
			;Set the control variable back to 0 so that the routine can begin waiting for the cursor can be back over the center frame again
		ActiveFrame := 0
	}
}

;*************************************************************************************************************************
;Function: CreateZoomWindow

; Create a window containing the selected image and display it directly above the certer frame of the Display Window ("ShowWin")
; Takes: pointer to the selected Bitmap, and the resized Width and Height. 
;*************************************************************************************************************************

CreateZoomWindow( pBit, Width, Height ){
		
		;if this window already exists, destory it ( destroying things is fun! ).
	Gui, 6: Destroy
	
		;Select the object
	SelectObject( ZoomWindow.hdc,ZoomWindow.obm)
	
		;Delete the object
	DeleteObject(ZoomWindow.hbm)
	
		;Delete the device context
	DeleteDC(ZoomWindow.hdc)
	
		;Delete the graphics
	Gdip_deleteGraphics(ZoomWindow.G)
	
		;Create a new Layered window to display the image on
	ZoomWindow := Layered_Window_SetUp( 2 , 0 , 0 , Width , Height , "6" , "+AlwaysOnTop -DPIScale -Caption +Owner5" ) 
	
		;Create a brush for the background of the Layered Window
	Brush := Gdip_CreateLineBrushFromRect( 0 , 0 , Width , Height , "0xFF777777" , "0xFF000000" , 1 , 1 )
	
		;Paint the background of the window 
	Gdip_FillRectangle( ZoomWindow.G , Brush , 0 , 0 , Width , Height )
	
		;Delete the brush to free up the memory
	Gdip_DeleteBrush( Brush )	
	
		;Draw the bitmap of the selected image to onto the Graphics for the Layered Window 
	Gdip_DrawImage(ZoomWindow.G, pBit, 1, 1, ZoomWindow.w-2, ZoomWindow.h-2) 
	;~ Gdip_DisposeImage(pBit)
	
		;Update (Redraw) the Layered Window with the newly changed Graphics
	UpdateLayeredWindow(ZoomWindow.hwnd, ZoomWindow.hdc, ZoomWindow.x, ZoomWindow.y, ZoomWindow.w, ZoomWindow.h)
	
		;Get the position of the Dispaly Window 
	WinGetPos,tx,ty,,,% "ahk_ID " ShowWin.Hwnd
	
		;Display the ZoomWindow offset from the Display Window
	Gui,6:Show,% "x" ( tx + 411 + 75 - Width // 2 ) " y" ( ty + 21 - height - 20 ) " w" Width " h" Height " NA"
	
}

;*************************************************************************************************************************
;Function: ResizeIt

; Get the dimensions from a bitmap and then resize it so that the scale is maintained but the size is adjusted to fit in a defined space
; Takes: Pointer to a bitmap, defined Width and Height variable, The size of the defined area.
;*************************************************************************************************************************

ResizeIt( PB , ByRef tWidth , ByRef tHeight , InputValue ){
	
		;Get the Width and Height of the bitmap.
	Gdip_GetDimensions( PB , tWidth , tHeight )
	
	if( tWidth > InputValue && tWidth >= tHeight )
		;If the width is greater than the defined area and the width is greater than or equal to the height
		
			;Set the scale ratio to be the height divided by the width, set the width to be the max size, set the height to be the scaled value. 
		Ratio := tHeight / tWidth , tWidth := InputValue , tHeight := InputValue * Ratio 
		
		
	else if( tHeight > InputValue && tHeight >= tWidth )
		;If the height is greater than the defined area and the height is greater than or equal to the width
	
			;Set the scale ratio to be the width divided by the height, set the height to be the max size, set the width to be the scaled value. 
		Ratio := tWidth / tHeight , tHeight := InputValue , tWidth := InputValue * Ratio 
		
		
	else if( tWidth > InputValue && tWidth <= tHeight )
		;If the width is greater than the defined area and the Height is greater than or equal to the Width
	
			;Set the scale ratio to be the width divided by the height, set the height to be the max size, set the width to be the scaled value. 
		Ratio := tWidth / tHeight , tHeight := InputValue , tWidth := InputValue * Ratio 
		
}

;*************************************************************************************************************************
;Function: Refresh

; Creates a new list of the images in the target folder and then displays the newly updated list in the display window. 
;*************************************************************************************************************************

Refresh(){
	
		;Create a list of all the full paths of images in a folder
	ImageList1 := "" , ImageList1 := Get_File_List()
		
		;Draw the images on to the display window with the selected image in the center frame
	UpdateWheel( Index , ImageList1 )
	
}

;*************************************************************************************************************************
;Function: GetInfo1

; This is a hub for a number of actions that are connected to the center frame of the Display Window.
; Depending on the keys being pressed, different actions will occur. 

;*************************************************************************************************************************

GetInfo1(){
	
	if( GetKeyState( "ctrl" ) && GetKeyState( "Shift" ) )
		;If both the shift and control keys are being pressed when the frame is clicked
	
			;Remove the image from the Display Window and delete the image file in the target folder.
		RemoveImage( Index )
		
	else if( GetKeyState( "Shift" ) )
		;If only the shift key is being pressed when the center frame is click
	
		Try
			;Try to do a action, if it fails, do so silently
		
				;Run the center image in windows image viewer
			Run, % ImageList1[ Index ]
			
	else
		;If no keys are being pressed.
	
			;Put the full path of the image into the clipboard.
		Clipboard := ImageList1[ Index ]
		
}

;*************************************************************************************************************************
;Function: RemoveImage

;Delete the selected image file from the screenshot folder and then refresh the Dispaly Window and update the image list.
;Takes: The current index for the image in the center frame of the Display Window

;*************************************************************************************************************************

RemoveImage( inVal ){
	
		;Delete the selected file
	FileDelete, % ImageList1[ inVal ]
	
		;Refresh the Display Window
	Refresh()
	
}

;*************************************************************************************************************************

;Subroutine: MoveForward

;Triggered by pressing either the forward arrow button or by clicking on one of the frames to the right of the center frame in the Display Window 

;*************************************************************************************************************************

MoveForward:

	if( GetKeyState( "Shift" ) ){
		;If shift is being held when the button/buttons are pressed.
		
			;Check to see if the length of the image list is greater than the current index + 10, if it is, move forward 10, else set the index to the last position.
		( Index + 10 > ImageList1.Length() ) ? ( Index := ImageList1.Length() ) : ( Index += 10 )
		
			;Draw the newly selected batch of 5 images to the Display Window.
		UpdateWheel( Index , ImageList1 )
		
			;Exit thread
		return
		
	}
	
	if( Index >= ImageList1.Length() )
		;If the current value of "Index" is already at the end of the list.
	
			;Exit thread
		return
		
		;Add one to the value of "Index" and then draw the newly selected batch of 5 images to the Display Window.
	UpdateWheel( Index += 1 , ImageList1 )
	
	
	return
	
;*************************************************************************************************************************

;Subroutine: MoveBackward

;Triggered by pressing either the back arrow button or by clicking on one of the frames to the left of the center frame in the Display Window 

;*************************************************************************************************************************
	
MoveBackward:
	if( GetKeyState( "Shift" ) ){
		;If shift is being held when the button/buttons are pressed. 
		
			;Check to see if subtracting 10 from the current value of "Index" will be less than 1, if it is, set "Index" to 1, else set it to the current value - 10.
		( Index - 10 < 1 ) ? ( Index := 1 ) : ( Index -= 10 )
		
			;Draw the newly selected batch of 5 images to the Display Window.
		UpdateWheel( Index , ImageList1 )
		
			;Exit thread
		return
		
	}
	
	if( Index - 1 <= 0 )
		;If the value of "Index" is already at 1 or less
	
			;Exit thread
		return
		
		;Subtract one from the value of "Index" and then draw the newly selected batch of 5 images to the Display Window.
	UpdateWheel( Index -= 1 , ImageList1 )
	
	return
	
;*************************************************************************************************************************
;Function: Get_File_List

;Creates a list containing the full path to all .pngs in the screenshot folder

;*************************************************************************************************************************	

Get_File_List(){
		
		;Create a array to hold the file paths, set the loop index to 0
	Full_Path := [] , Index2 := 0
		
	Loop, %A_ScriptDir%\Screen Shots\*.png
		;Loop through the contents of the screenshot folder and sort for the ones with a .png extention.
	
			;Add the full path for each found file with the .png extention to the array.
		Full_Path[ ++Index2 ] := A_LoopFileFullPath
		
		;return the array to the caller.
	return Full_Path
	
}

;*************************************************************************************************************************

;Subroutine/s: 5GuiClose - 5GuiContextMenu

;Triggered by press the close button on the Display Window or by right clicking the window
;Once called the Display Window will be closed and related timers are turned off.

;*************************************************************************************************************************

5GuiClose:
5GuiContextMenu:

		;Select the object
	SelectObject( ShowWin.hdc,ShowWin.obm)
	
		;Delete the object
	DeleteObject(ShowWin.hbm)
	
		;Delete the device context
	DeleteDC(ShowWin.hdc)
	
		;Delete the graphics
	Gdip_deleteGraphics(ShowWin.G)
	
		;Destroy the Display Window
	Gui, 5: Destroy
	
	return

;*************************************************************************************************************************
;Function: Create_Capture_Size_Window

;Create a layered window that will be used to draw the cross lines for setting the capture area for the screenshot.  

;*************************************************************************************************************************	

Create_Capture_Size_Window(){
	
		;Create a static variable that is used to check if this is the first time this function is being called. Default = null / 0 / ""
	static ft
	
		;Set the main gui as the owner of the any tooltips so that they stay on top of all other windows
	Gui, 1: +OwnDialogs
	
		;Display a tooltip containing a message about what this button does ( its main function ).
	Tooltip, % Message := "Take ScreenShot"
	
		;Start a timer that once expired will turn off the other timer
	SetTimer, TooltipOff , -1800
	
		;Start a timer that will repeatedly display the message under the cursor
	SetTimer, TooltipFollow , 30
	
	if( GetKeyState( "Shift" ) ){
		;if the Shift key is being held when the button is pressed.
		
			;Change the color of this button on the main gui to the one currently in the main color display.
		ChangeColor( 1 )
		
			;Write the new list of saved colors to file.
		WriteColors( 1 )	
		
			;Exit thread
		return
		
	}
	
		;If this window already exists, destroy it. 
	Gui, 2: Destroy
	
		;Create a new Layered window to display the capture area lines
	CapWin := Layered_Window_SetUp( 3 , 0 , 0 , A_ScreenWidth , A_ScreenHeight , "2" , "+AlwaysOnTop -DPIScale -Caption +Owner1" )
	
	if( !ft )
		;If this is the first time running this function
		
			;Set the static variable to 1 so that this only happens the first time this function is called.
			;Create a timer that moves the drawing area to cover the current monitor.
		Monitors.Set_Window_Move_Timer( GUINAME := 2 , GUIHWND := CapWin.hwnd , TCount := 300 , xpOff := 0 , ypOff := 0 , xr := 1 , yr := 1 , Fill_Screen := 1 ) , ft := 1
	
	else
		;If this isn't the first time.
			
			;Turn on the timer for moving the drawing area to cover the current monitor
		Monitors.Window_Move_Obj.GUIHWND := CapWin.hwnd , Monitors.Turn_On_Window_Move_Timer()
	
		;Show the window
	Gui, 2: Show
	
		;Set the control variables used in the flow of the drawing function.
	CapActive := 1 , SP := 0 , OB := 0
	
		;Set a timer to be used for drawing the lines of the capture area.
	SetTimer, Set_Positions , 10
	
}

;*************************************************************************************************************************
;Function: ChangeColor

;Changes the color of one of the 4 colored buttons on the main gui  
;Takes: The position of the button being changed

;*************************************************************************************************************************	

ChangeColor( Value ){
	
		;Create a local array with the x position of the colored buttons.
	local tempArr := [ 48 , 78 , 108 , 138 ]
	
		;Create a brush, and then paint the button with the color in the main color display, then delete the brush.
	Brush := Gdip_BrushCreateSolid( "0xFF" SubStr( OutColor , 3 ) ) , Gdip_FillRectangle( CDisplay.G , Brush , tempArr[ Value ] , 139 , 14 , 12 ) , Gdip_DeleteBrush( Brush )
	
		;Create a line brush ( gradient brush ). 
	Brush := Gdip_CreateLineBrushFromRect( tempArr[ Value ] , 139 , 14 , 12 , "0xFF000000" , "0xFF777777" , 1 , 1 ) 
	
		;Create a pen from the brush.
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	
		;Delete the brush.
	Gdip_DeleteBrush( Brush )
	
		;Use the pen to draw a border around the new color.
	Gdip_DrawRectangle( CDisplay.G , Pen , tempArr[ Value ] , 139 , 14 , 12 )
	
		;Delete the pen.
	Gdip_DeletePen( Pen )
	
		;Draw the graphics to the window.
	UpdateLayeredWindow( CDisplay.hwnd , CDisplay.hdc )
	
}

;*************************************************************************************************************************
;Function: Set_Positions

;A timed function that draws lines onto the screen.
;Used for setting the capture area of a screenshot.

;*************************************************************************************************************************	

Set_Positions(){
	
		;Set the coordmode used for tarcking the mouse position to be relative to the active window.
	Coordmode, Mouse , Window
	
		;Activate the capture window.
	WinActivate,% "ahk_ID " CapWin.Hwnd
	
		;Clear the graphics so that they can be redrawn in their new positions.
	Gdip_GraphicsClear(CapWin.g)
	
		;Get the current cursor position.
	MouseGetPos, tx , ty
	
	if(SP=0){
		;If setting the first position of the capture area.
		
			;Draw a line from the top of the current monitor to the bottom of the current monitor.
		Fill_Box(CapWin.G,BB,tx,0,1,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Bottom-Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Top)
		
			;Draw a line from the Left side of the current monitor to the Right side of the current monitor.
		Fill_Box(CapWin.G,BB,0,ty,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Right-Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Left,1)
		
			;Store the x and y positions into new variables
		TXC:=tx,TYC:=ty
		
	}else if(SP=1){
		;If the first position has already been set.
	
			;Draw the first line (starting position) for the x axis
		Fill_Box(CapWin.G,BB,TXC,0,1,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Bottom-Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Top)
		
			;Draw the first line (starting position) for the y axis
		Fill_Box(CapWin.G,BB,0,TYC,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Right-Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Left,1)
		
			;Draw a line at the current y position for the end point of the x axis
		Fill_Box(CapWin.G,BB,tx,0,1,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Bottom-Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Top)
		
			;Draw a line at the current x position for the end point of the y axis
		Fill_Box(CapWin.G,BB,0,ty,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Right-Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Left,1)
		
		if(TXC<tx&&TYC<ty){
			;if the second set of lines are below and to the right of the first set of lines.
			
				;Fill the area between the two sets of lines with a semi transparent green rectangle.
			Fill_Box(CapWin.G,GB,TXC,TYC,tx-TXC,ty-TYC)
			
				;Update some variables.
			WCAP:=tx-TXC,HCAP:=ty-TYC,OB:=0
			
				;Get the position of the top and left side of the current monitor. This is used to calculate the capture area.
			XCAP := TXC + Monitors.Monitor[ Monitors.Window_Move_Obj.Current_Monitor ].Left 
			
			YCAP := TYC + Monitors.Monitor[ Monitors.Window_Move_Obj.Current_Monitor ].Top
		
		}else if(TXC>tx&&TYC<ty){
			;If the second set of lines is above and to the left of the first set of lines.
			
				;Fill the area between the two sets of lines with a semi transparent red rectangle. (will be changing this to a valid action)
			Fill_Box( CapWin.G , GB , tx , TYC , TXC - tx , ty - TYC )
				
				;Set a variable to determin if a valid capture area has been set.
			;~ OB := 1
			
			WCAP := tx - TXC
			HCAP := ty - TYC
			OB := 1
			
			XCAP := TXC + Monitors.Monitor[ Monitors.Window_Move_Obj.Current_Monitor ].Left 
			
			YCAP := TYC + Monitors.Monitor[ Monitors.Window_Move_Obj.Current_Monitor ].Top
		
		}else if( TXC > tx && TYC > ty ){
			;if the second set of lines are below and to the left of the first set of lines.
			
				;Fill the area between the two sets of lines with a semi transparent red rectangle. (will be changing this to a valid action)
			Fill_Box( CapWin.G , RB , tx , ty , TXC - tx , TYC - ty )
			
				;Set a variable to determin if a valid capture area has been set.
			OB:=1
		
		}else if(TXC<tx&&TYC>ty){
			;if the second set of lines are above and to the right of the first set of lines.
			
				;Fill the area between the two sets of lines with a semi transparent red rectangle. (will be changing this to a valid action)
			Fill_Box(CapWin.G,RB,TXC,ty,tx-TXC,TYC-ty)
			
				;Set a variable to determin if a valid capture area has been set.
			OB:=1
		
		}
	
	}
	
		;Draw the graphics to the window.
	UpdateLayeredWindow(CapWin.hwnd, CapWin.hdc,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Left,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Top,Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Right-Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Left, Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Bottom-Monitors.Monitor[Monitors.Window_Move_Obj.Current_Monitor].Top)

}

#IF (CapActive=1)

	LButton::
		if(SP=0)
			SP:=1
		else if(SP=1&&OB=0){
			
		
			CaptureShutDown()
			
			gosub,Take_ScreenShot
		
		}
		
		return
		
RButton::
CaptureShutDown(){
	
	
	Monitors.Turn_Off_Window_Move_Timer()
	
	
	CapActive := 0
	
	;~ SelectObject( CapWin.hdc , CapWin.obm ) , DeleteObject( CapWin.hbm ) , DeleteDC( CapWin.hdc ) , gdip_deleteGraphics( CapWin.g )
		
		;Select the object
	SelectObject( CapWin.hdc,CapWin.obm)
	
		;Delete the object
	DeleteObject(CapWin.hbm)
	
		;Delete the device context
	DeleteDC(CapWin.hdc)
	
		;Delete the graphics
	Gdip_deleteGraphics(CapWin.G)
	
	CapWin := "" , SP := 0
	
	
	Gui,2:Destroy
	
	
	SetTimer,Set_Positions,Off
	
	
	Sleep, 300
	
}	

	return
		
#IF



Take_ScreenShot:
	TempBitmap:=Gdip_BitmapFromScreen(XCAP "|" YCAP "|" WCAP "|" HCAP)
	ShotName:=A_Now
	Gdip_SaveBitmapToFile(TempBitmap,A_WorkingDir "\" ShotName ".png", 100)
	Gdip_DisposeImage(TempBitmap)
	Traytip,,Shot Saved
	return	



GetColor(){
	While(!GetKeyState("ctrl")){
		ToolTip,Hover over a color and press "ctrl"
		MouseGetPos,tx,ty
		PixelGetColor,OutColor,tx,ty, RGB
		Brush := Gdip_BrushCreateSolid( "0xFF2D2F33" )
		Gdip_FillRectangle( CDisplay.G , Brush , 45 , 55 , 110 , 20 )
		Gdip_DeleteBrush( Brush )
		Gdip_TextToGraphics( CDisplay.G , OutColor , "s12 Bold Center vCenter cFF3399FF  x45 y50" , "Segoe UI" , 110 , 30 )
		Brush := Gdip_BrushCreateSolid( "0xFF" SubStr(OutColor, 3 ) )
		Gdip_FillRectangle( CDisplay.G , Brush , 55 , 15 , 90 , 20 )
		Gdip_DeleteBrush( Brush )
		UpdateLayeredWindow(CDisplay.hwnd, CDisplay.hdc)
	}
	ToolTip,
	Clipboard := SubStr(OutColor, 3 )
}


_Create_Default_Bitmap( W , H , Background_Color , Font_Color_Bottom , Font_Color_Top , Text , Font_Size , Y_Offset , Font ){
		
		;Bitmap Created Using: HB Bitmap Maker
		pBitmap:=Gdip_CreateBitmap( W , H ) 
		G := Gdip_GraphicsFromImage( pBitmap )
		Gdip_SetSmoothingMode( G , 1 )
		Brush := Gdip_BrushCreateSolid( Background_Color )
		Gdip_FillRectangle( G , Brush , -2 , 0 , W+3 , H+3 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_BrushCreateSolid( "0xFF141416" )
		Gdip_FillRectangle( G , Brush , 3 , 3 , W-6 , H-6 )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_CreateLineBrushFromRect( 4 , 3 , W-9 , H-7 , "0xFF363C45" , "0xFF2B2C2E" , 1 , 1 )
		Gdip_FillRectangle( G , Brush , 4 , 4 , W-8 , H-8 )
		Gdip_DeleteBrush( Brush )
		Pen := Gdip_CreatePen( "0xFF4D535B" , 1 )
		Gdip_DrawLine( G , Pen , 4 , 4 , W-5 , 4 )
		Gdip_DeletePen( Pen )
		Brush := Gdip_BrushCreateSolid( Font_Color_Bottom )
		Gdip_TextToGraphics( G , Text , "s" Font_Size " Center vCenter c" Brush " x0 y1" , Font , W , H )
		Gdip_DeleteBrush( Brush )
		Brush := Gdip_BrushCreateSolid( Font_Color_Top )
		Gdip_TextToGraphics( G , Text, "s" Font_Size " Center vCenter c" Brush " x1 y0"  , Font , W , H )
		Gdip_DeleteBrush( Brush )
		Gdip_DeleteGraphics( G )
		return pBitmap
	}



HB_BITMAP_MAKER(){
	;Bitmap Created Using: HB Bitmap Maker
	pBitmap:=Gdip_CreateBitmap( 200 , 200 ) 
	G := Gdip_GraphicsFromImage( pBitmap )
	Gdip_SetSmoothingMode( G , 4 )
	Brush := Gdip_CreateLineBrush( 0 , 0 , 100 , 100 , "0x88F0F0F0" , "0xaa000000" , 1 )
	Gdip_FillRoundedRectangle( G , Brush , 10 , 50 , 180 , 140 , 25 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrush( 7 , 184 , 100 , 100 , "0x44F0F0F0" , "0x88000000" , 1 )
	Gdip_FillRoundedRectangle( G , Brush , 10 , 50 , 180 , 140 , 25 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF2D2F33" )
	Gdip_FillRectangle( G , Brush , 40 , 50 , 120 , 110 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 17 , 13 , 165 , 177 , "0xFFF0F0F0" , "0xFF000000" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 3 ) 
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRoundedRectangle( G , Pen , 10 , 50 , 180 , 140 , 25 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrushFromRect( 53 , 10 , 116 , 56 , "0xFF444444" , "0xFF030E0E" , 1 , 1 )
	Gdip_FillRoundedRectangle( G , Brush , 50 , 10 , 100 , 30 , 5 ) 
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrush( 110 , 46 , 113 , -3 , "0xFF102A2A" , "0xFFF0F0F0" , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRoundedRectangle( G , Pen , 50 , 10 , 100 , 30 , 5 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrush( 110 , 46 , 113 , -3 , "0xFF004444" , "0xFFF0F0F0" , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 2 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRoundedRectangle( G , Pen , 50 , 10 , 100 , 30 , 5 ) 
	Gdip_DeletePen( Pen )
	Brush := Gdip_BrushCreateSolid( "0xFF3399FF" )
	Gdip_FillRoundedRectangle( G , Brush , 55 , 15 , 90 , 20 , 5 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 43 , 131 , 56 , 57 , "0xFF444444" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 45 , 135 , 20 , 20 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 133 , 132 , 27 , 31 , "0xFF777777" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 135 , 135 , 20 , 20 )  ;<----------
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 133 , 132 , 27 , 31 , "0xFF777777" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 45 , 135 , 20 , 20 )  ;<---------------------
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF444444" )
	Gdip_FillRectangle( G , Brush , 105 , 135 , 20 , 20 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF444444" )
	Gdip_FillRectangle( G , Brush , 75 , 135 , 20 , 20 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 133 , 132 , 27 , 31 , "0xFF777777" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 75 , 135 , 20 , 20 ) ;<---------------------
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF3399FF" )
	Gdip_FillRectangle( G , Brush , 48 , 139 , 14 , 12 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF3399FF" )
	Gdip_FillRectangle( G , Brush , 78 , 139 , 14 , 12 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 133 , 132 , 27 , 31 , "0xFF777777" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 105 , 135 , 20 , 20 ) ;<---------------------
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF3399FF" )
	Gdip_FillRectangle( G , Brush , 108 , 139 , 14 , 12 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF3399FF" )
	Gdip_FillRectangle( G , Brush , 138 , 139 , 14 , 12 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 66 , 157 , 26 , 25 , "0xFF000000" , "0xFF777777" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRectangle( G , Pen , 45 , 135 , 20 , 20 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrushFromRect( 66 , 157 , 26 , 25 , "0xFF000000" , "0xFF777777" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRectangle( G , Pen , 75 , 135 , 20 , 20 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrushFromRect( 66 , 157 , 26 , 25 , "0xFF000000" , "0xFF777777" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRectangle( G , Pen , 105 , 135 , 20 , 20 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrushFromRect( 66 , 157 , 26 , 25 , "0xFF000000" , "0xFF777777" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRectangle( G , Pen , 48 , 139 , 14 , 12 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrushFromRect( 66 , 157 , 26 , 25 , "0xFF000000" , "0xFF777777" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRectangle( G , Pen , 78 , 139 , 14 , 12 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrushFromRect( 66 , 157 , 26 , 25 , "0xFF000000" , "0xFF777777" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRectangle( G , Pen , 108 , 139 , 14 , 12 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrushFromRect( 66 , 157 , 26 , 25 , "0xFF000000" , "0xFF777777" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRectangle( G , Pen , 138 , 139 , 14 , 12 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_CreateLineBrushFromRect( 133 , 133 , 23 , 22 , "0xFF777777" , "0xFF000000" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 1 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRectangle( G , Pen , 135 , 135 , 20 , 20 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0xFF121315" , 3)
	Gdip_DrawLine( G , Pen , 40 , 160 , 40 , 53 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0xFF121315" , 2)
	Gdip_DrawLine( G , Pen , 40 , 160 , 159 , 160 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0xFF121315" , 3)
	Gdip_DrawLine( G , Pen , 160 , 53 , 160 , 160 )
	Gdip_DeletePen( Pen )
	Gdip_DeleteGraphics( G )
	return pBitmap
}

DisplayWindow(){
	;Bitmap Created Using: HB Bitmap Maker
	pBitmap:=Gdip_CreateBitmap( 970 , 220 ) 
	G := Gdip_GraphicsFromImage( pBitmap )
	Gdip_SetSmoothingMode( G , 2 )
	;~ 
	Brush := Gdip_CreateLineBrushFromRect( 14 , 9 , 947 , 178 , "0x44F0F0F0" , "0x88000000" , 1 , 1 )
	Gdip_FillRoundedRectangle( G , Brush , 10 , 10 , 950 , 200 , 25 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF333333" )
	Gdip_FillRectangle( G , Brush , 40 , 10 , 890 , 190 )
	Gdip_DeleteBrush( Brush )
	;Slot 1
	Brush := Gdip_BrushCreateSolid( "0xFF000000" )
	Gdip_FillRectangle( G , Brush , 70 , 20 , 150 , 150 )
	Gdip_DeleteBrush( Brush )
	;Slot  2
	Brush := Gdip_BrushCreateSolid( "0xFF000000" )
	Gdip_FillRectangle( G , Brush , 240 , 20 , 150 , 150 )
	Gdip_DeleteBrush( Brush )
	;Slot  3
	Brush := Gdip_BrushCreateSolid( "0xFF000000" )
	Gdip_FillRectangle( G , Brush , 410 , 20 , 150 , 150 )
	Gdip_DeleteBrush( Brush )
	;Slot  4
	Brush := Gdip_BrushCreateSolid( "0xFF000000" )
	Gdip_FillRectangle( G , Brush , 580 , 20 , 150 , 150 )
	Gdip_DeleteBrush( Brush )
	;Slot  5
	Brush := Gdip_BrushCreateSolid( "0xFF000000" )
	Gdip_FillRectangle( G , Brush , 750 , 20 , 150 , 150 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 17 , 13 , 165 , 177 , "0xFFF0F0F0" , "0xFF000000" , 1 , 1 )
	Pen := Gdip_CreatePenFromBrush( Brush , 3 )
	Gdip_DeleteBrush( Brush )
	Gdip_DrawRoundedRectangle( G , Pen , 10 , 10 , 950 , 200 , 25 )
	Gdip_DeletePen( Pen )
	Brush := Gdip_BrushCreateSolid( "0xFF000000" )
	Gdip_FillRectangle( G , Brush , 320 , 184 , 350 , 5 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 180 , 0 , 210 , 376 , "0xFF333333" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 181 , 176 , 112 , 19 ) ;<--------------------------------------------------------------
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF444444" )
	Gdip_FillPolygon( G , Brush , "260,180|215,185|260,190|" )
	Gdip_DeleteBrush( Brush )
	;close button
	Brush := Gdip_BrushCreateSolid( "0xFF000000" )
	Gdip_FillRectangle( G , Brush , 904 , 40 , 20 , 110 )
	Gdip_DeleteBrush( Brush )
	;part of close
	Brush := Gdip_CreateLineBrushFromRect( 905 , 42 , 34 , 191 , "0xFF333333" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 906 , 42 , 16 , 106 )
	Gdip_DeleteBrush( Brush )
	;part of close
	Brush := Gdip_BrushCreateSolid( "0x99000000" )
	;part of close
	Gdip_TextToGraphics( G , "Close" , "s10 Center vCenter Bold c" Brush " x907 y32" , "Segoe UI" , 10 , 130 )
	Gdip_DeleteBrush( Brush )
	;part of close
	Brush := Gdip_BrushCreateSolid( "0x99F0F0F0" )
	;part of close
	Gdip_TextToGraphics( G , "CLOSE" , "s10 Center vCenter Bold c" Brush " x909 y33" , "Segoe UI" , 10 , 130 )
	Gdip_DeleteBrush( Brush )
	;part of close
	Brush := Gdip_BrushCreateSolid( "0x993399FF" )
	;part of close
	Gdip_TextToGraphics( G , "CLOSE" , "s10 Center vCenter Bold c" Brush " x909 y33" , "Segoe UI" , 10 , 130 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_CreateLineBrushFromRect( 180 , 0 , 210 , 376 , "0xFF333333" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 691 , 176 , 112 , 19 )
	Gdip_DeleteBrush( Brush )
	Brush := Gdip_BrushCreateSolid( "0xFF444444" )
	Gdip_FillPolygon( G , Brush , "725,180|770,185|725,190|" )
	Gdip_DeleteBrush( Brush )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 905 , 41 , 18 , 108 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 40 , 12 , 889 , 188 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 69 , 19 , 152 , 152 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 239 , 19 , 152 , 152 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 409 , 19 , 152 , 152 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 579 , 19 , 152 , 152 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 749 , 19 , 152 , 152 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 180 , 175 , 114 , 21 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 319 , 183 , 352 , 6 )
	Gdip_DeletePen( Pen )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 690 , 175 , 114 , 21 )
	Gdip_DeletePen( Pen )
	;close button
	Brush := Gdip_BrushCreateSolid( "0xFF000000" )
	Gdip_FillRectangle( G , Brush , 45 , 40 , 20 , 110 )
	Gdip_DeleteBrush( Brush )
	;part of close
	Brush := Gdip_CreateLineBrushFromRect( 905 , 42 , 34 , 191 , "0xFF333333" , "0xFF000000" , 1 , 1 )
	Gdip_FillRectangle( G , Brush , 47 , 42 , 16 , 106 )
	Gdip_DeleteBrush( Brush )
	;part of close
	Brush := Gdip_BrushCreateSolid( "0x99000000" )
	;part of close
	Gdip_TextToGraphics( G , "REFRESH" , "s10 Center vCenter Bold c" Brush " x49 y32" , "Segoe UI" , 10 , 130 )
	Gdip_DeleteBrush( Brush )
	;part of close
	Brush := Gdip_BrushCreateSolid( "0x99F0F0F0" )
	;part of close
	Gdip_TextToGraphics( G , "REFRESH" , "s10 Center vCenter Bold c" Brush " x50 y33" , "Segoe UI" , 10 , 130 )
	Gdip_DeleteBrush( Brush )
	;part of close
	Brush := Gdip_BrushCreateSolid( "0x993399FF" )
	;part of close
	Gdip_TextToGraphics( G , "REFRESH" , "s10 Center vCenter Bold c" Brush " x50 y33" , "Segoe UI" , 10 , 130 )
	Gdip_DeleteBrush( Brush )
	Pen := Gdip_CreatePen( "0x443399FF" , 1 )
	Gdip_DrawRectangle( G , Pen , 46 , 41 , 18 , 108 )
	Gdip_DeletePen( Pen )
	Gdip_DeleteGraphics( G )
	return pBitmap
}

;-------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------
;-------------------------------------------------------------------------------------------------

class MonitorClass	{
	__New(){
		This._SetMonCount()
		This._SetPrimeMonitor()
		This._Set_Bounds()
	}
	_SetMonCount(){
		local MC
		SysGet, MC, MonitorCount 
		This.MonitorCount := MC
	}
	_SetPrimeMonitor(){
		local PM
		SysGet, PM, MonitorPrimary
		This.PrimeMonitor := PM
	}
	_Set_Bounds(){
		local bmon,bmonLeft,bmonRight,bmonTop,bmonBottom
		This.Monitors:=[]
		Loop,% This.MonitorCount	{
			SysGet, bmon, Monitor, % A_Index
			This.Monitor[A_Index]:=	{ Left		: 	bmonLeft
									, Top		: 	bmonTop
									, Right		: 	bmonRight
									, Bottom	: 	bmonBottom 	}
		}
	}
	Get_Current_Monitor(){
		local x,y
		CoordMode,Mouse,Screen
		MouseGetPos,x,y
		Loop,% This.MonitorCount	{
			if(x>=This.Monitor[A_Index].Left&&x<=This.Monitor[A_Index].Right&&y>=This.Monitor[A_Index].Top&&y<=This.Monitor[A_Index].Bottom){
				return A_Index
			}
		}
	}
	Get_New_Window_Position(curMon,xpOff,ypOff,xr,yr){
		local tposa:="",tposa:={}
		if(xr=1) ; 1 xr = relative to the left side ; 2 xr = relative to the right side
			tposa.x:=This.Monitor[curMon].Left+xpOff
		else 
			tposa.x:=This.Monitor[curMon].Right-xpOff
		if(yr=1) ; 1 yr = relative to the top  ; 2 yr = relative to the bottom
			tposa.y:=This.Monitor[curMon].Top+ypOff
		else 
			tposa.y:=This.Monitor[curMon].Bottom-ypOff
		return tposa
	}
	Set_Window_Move_Timer(GUINAME:=1,GUIHWND:="",TCount:=500,xpOff:=0,ypOff:=0,xr:=1,yr:=1,Fill_Screen:=0){
		
		local Window_Timer
		
		This.Window_Move_Obj:=	{ 	Interval		:	TCount
								,	GUINAME			:	GUINAME
								,	FILLSCREEN		:	Fill_Screen
								,	GUIHWND			:	GUIHWND
								,	XPOFF			:	xpOff
								,	YPOFF			:	ypOff
								,	XRelative		:	xr
								,	YRelative		:	yr	
								,	Current_Monitor	:	This.Get_Current_Monitor()
								,	Old_Monitor		:	This.Get_Current_Monitor()	
								,	NEW_GUI_POS		:	This.Get_New_Window_Position(This.Get_Current_Monitor(),xpOff,ypOff,xr,yr)	}
								
		This.Window_Timer := Window_Timer :=  ObjBindMethod(This, "_Window_Move_Timer")
		
		This._Set_TFTime()
		
		SetTimer,%Window_Timer%,%TCount%
		
	}
	_Window_Move_Timer(){
		This.Window_Move_Obj.Current_Monitor := This.Get_Current_Monitor()
		if(This.Window_Move_Obj.Current_Monitor!=This.Window_Move_Obj.Old_Monitor&&!DllCall("IsIconic", "Ptr", This.Window_Move_Obj.GUIHWND, "UInt")){
			This.Window_Move_Obj.NEW_GUI_POS:=This.Get_New_Window_Position(This.Window_Move_Obj.Current_Monitor,This.Window_Move_Obj.XPOFF,This.Window_Move_Obj.YPOFF,This.Window_Move_Obj.XRelative,This.Window_Move_Obj.YRelative)
			This._Move_Window()
			This.Window_Move_Obj.Old_Monitor := This.Window_Move_Obj.Current_Monitor
		}
	}
	_Set_TFTime(){
		This.Window_Move_Obj.Current_Monitor := This.Get_Current_Monitor()
		This.Window_Move_Obj.NEW_GUI_POS:=This.Get_New_Window_Position(This.Window_Move_Obj.Current_Monitor,This.Window_Move_Obj.XPOFF,This.Window_Move_Obj.YPOFF,This.Window_Move_Obj.XRelative,This.Window_Move_Obj.YRelative)
		This.Window_Move_Obj.Old_Monitor := This.Window_Move_Obj.Current_Monitor
		This._Move_Window()
	}
	_Move_Window(){
		if(!This.Window_Move_Obj.FILLSCREEN)
			Gui,% This.Window_Move_Obj.GUINAME ":Show",% "x" This.Window_Move_Obj.NEW_GUI_POS.X " y" This.Window_Move_Obj.NEW_GUI_POS.Y " NA"
		else
			Gui,% This.Window_Move_Obj.GUINAME ":Show",% "x" This.Window_Move_Obj.NEW_GUI_POS.X " y" This.Window_Move_Obj.NEW_GUI_POS.Y " w" This.Monitor[This.Window_Move_Obj.Current_Monitor].Right " h" This.Monitor[This.Window_Move_Obj.Current_Monitor].Bottom " NA"
	}
	Turn_Off_Window_Move_Timer(){
		local Window_Timer
		Window_Timer := This.Window_Timer
		SetTimer,%Window_Timer%,Off
	}
	Turn_On_Window_Move_Timer(){
		local Window_Timer
		Window_Timer := This.Window_Timer
		This._Set_TFTime()
		SetTimer,%Window_Timer%,On
	}
	GetGuiPos(){
		local x,y
		WinGetPos,x,y,,,% "ahk_id " This.Window_Move_Obj.GUIHWND 
		return x
	}
}




;Shit that I (Hellbent) added
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
;&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

Layered_Window_SetUp(Smoothing,Window_X,Window_Y,Window_W,Window_H,Window_Name:=1,Window_Options:=""){
	Layered:={}
	Layered.W:=Window_W
	Layered.H:=Window_H
	Layered.X:=Window_X
	Layered.Y:=Window_Y
	Layered.Name:=Window_Name
	Layered.Options:=Window_Options
	;~ Layered.Token:=Gdip_Startup()
	Create_Layered_GUI(Layered)
	Layered.hwnd:=winExist()
	Layered.hbm := CreateDIBSection(Window_W,Window_H)
	Layered.hdc := CreateCompatibleDC()
	Layered.obm := SelectObject(Layered.hdc,Layered.hbm)
	Layered.G := Gdip_GraphicsFromHDC(Layered.hdc)
	Gdip_SetSmoothingMode(Layered.G,Smoothing)
	return Layered
}

Create_Layered_GUI(Layered){
	Gui,% Layered.Name ": +E0x80000 +LastFound " Layered.Options 
	;~ Gui,% Layered.Name ":Show",% "x" Layered.X " y" Layered.Y " w" Layered.W " h" Layered.H " NA"
}
	
Layered_Window_ShutDown(This){
	SelectObject(This.hdc,This.obm)
	DeleteObject(This.hbm)
	DeleteDC(This.hdc)
	gdip_deleteGraphics(This.g)
	Gdip_Shutdown(This.Token)
}

New_Brush(colour:="000000",Alpha:="FF"){
	new_colour := "0x" Alpha colour 
	return Gdip_BrushCreateSolid(new_colour)
}

New_Pen(colour:="000000",Alpha:="FF",Width:= 5){
	new_colour := "0x" Alpha colour 
	return Gdip_CreatePen(New_Colour,Width)
}	

Fill_Box(pGraphics,pBrush,x,y,w,h)	{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillRectangle", Ptr, pGraphics, Ptr, pBrush, "float", x, "float", y, "float", w, "float", h)
}
;######################################################################################################################################
;#####################################################   					    #######################################################
;#####################################################  	  Gdip LITE		    #######################################################
;#####################################################  					    #######################################################
;######################################################################################################################################
; Gdip standard library v1.45 by tic (Tariq Porter) 07/09/11
; Modifed by Rseding91 using fincs 64 bit compatible Gdip library 5/1/2013
;#####################################################################################
;~ Gdip_DeleteRegion(Region)
;~ {
	;~ return DllCall("gdiplus\GdipDeleteRegion", A_PtrSize ? "UPtr" : "UInt", Region)
;~ }
DestroyIcon(hIcon)
{
	return DllCall("DestroyIcon", A_PtrSize ? "UPtr" : "UInt", hIcon)
}
Gdip_CreateBitmapFromFile(sFile, IconNumber=1, IconSize="")
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	, PtrA := A_PtrSize ? "UPtr*" : "UInt*"
	
	SplitPath, sFile,,, ext
	if ext in exe,dll
	{
		Sizes := IconSize ? IconSize : 256 "|" 128 "|" 64 "|" 48 "|" 32 "|" 16
		BufSize := 16 + (2*(A_PtrSize ? A_PtrSize : 4))
		
		VarSetCapacity(buf, BufSize, 0)
		Loop, Parse, Sizes, |
		{
			DllCall("PrivateExtractIcons", "str", sFile, "int", IconNumber-1, "int", A_LoopField, "int", A_LoopField, PtrA, hIcon, PtrA, 0, "uint", 1, "uint", 0)
			
			if !hIcon
				continue

			if !DllCall("GetIconInfo", Ptr, hIcon, Ptr, &buf)
			{
				DestroyIcon(hIcon)
				continue
			}
			
			hbmMask  := NumGet(buf, 12 + ((A_PtrSize ? A_PtrSize : 4) - 4))
			hbmColor := NumGet(buf, 12 + ((A_PtrSize ? A_PtrSize : 4) - 4) + (A_PtrSize ? A_PtrSize : 4))
			if !(hbmColor && DllCall("GetObject", Ptr, hbmColor, "int", BufSize, Ptr, &buf))
			{
				DestroyIcon(hIcon)
				continue
			}
			break
		}
		if !hIcon
			return -1

		Width := NumGet(buf, 4, "int"), Height := NumGet(buf, 8, "int")
		hbm := CreateDIBSection(Width, -Height), hdc := CreateCompatibleDC(), obm := SelectObject(hdc, hbm)
		if !DllCall("DrawIconEx", Ptr, hdc, "int", 0, "int", 0, Ptr, hIcon, "uint", Width, "uint", Height, "uint", 0, Ptr, 0, "uint", 3)
		{
			DestroyIcon(hIcon)
			return -2
		}
		
		VarSetCapacity(dib, 104)
		DllCall("GetObject", Ptr, hbm, "int", A_PtrSize = 8 ? 104 : 84, Ptr, &dib) ; sizeof(DIBSECTION) = 76+2*(A_PtrSize=8?4:0)+2*A_PtrSize
		Stride := NumGet(dib, 12, "Int"), Bits := NumGet(dib, 20 + (A_PtrSize = 8 ? 4 : 0)) ; padding
		DllCall("gdiplus\GdipCreateBitmapFromScan0", "int", Width, "int", Height, "int", Stride, "int", 0x26200A, Ptr, Bits, PtrA, pBitmapOld)
		pBitmap := Gdip_CreateBitmap(Width, Height)
		G := Gdip_GraphicsFromImage(pBitmap)
		, Gdip_DrawImage(G, pBitmapOld, 0, 0, Width, Height, 0, 0, Width, Height)
		SelectObject(hdc, obm), DeleteObject(hbm), DeleteDC(hdc)
		Gdip_DeleteGraphics(G), Gdip_DisposeImage(pBitmapOld)
		DestroyIcon(hIcon)
	}
	else
	{
		if (!A_IsUnicode)
		{
			VarSetCapacity(wFile, 1024)
			DllCall("kernel32\MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sFile, "int", -1, Ptr, &wFile, "int", 512)
			DllCall("gdiplus\GdipCreateBitmapFromFile", Ptr, &wFile, PtrA, pBitmap)
		}
		else
			DllCall("gdiplus\GdipCreateBitmapFromFile", Ptr, &sFile, PtrA, pBitmap)
	}
	
	return pBitmap
}

Gdip_GetDimensions(pBitmap, ByRef Width, ByRef Height){
	Gdip_GetImageDimensions(pBitmap, Width, Height)
}

Gdip_GraphicsClear(pGraphics, ARGB=0x00ffffff)
{
    return DllCall("gdiplus\GdipGraphicsClear", A_PtrSize ? "UPtr" : "UInt", pGraphics, "int", ARGB)
}

BitBlt(ddc, dx, dy, dw, dh, sdc, sx, sy, Raster=""){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdi32\BitBlt", Ptr, dDC, "int", dx, "int", dy, "int", dw, "int", dh, Ptr, sDC, "int", sx, "int", sy, "uint", Raster ? Raster : 0x00CC0020)
}

Gdip_CreateBitmapFromHBITMAP(hBitmap, Palette=0)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	DllCall("gdiplus\GdipCreateBitmapFromHBITMAP", Ptr, hBitmap, Ptr, Palette, A_PtrSize ? "UPtr*" : "uint*", pBitmap)
	return pBitmap
}

UpdateLayeredWindow(hwnd, hdc, x="", y="", w="", h="", Alpha=255)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	if ((x != "") && (y != ""))
		VarSetCapacity(pt, 8), NumPut(x, pt, 0, "UInt"), NumPut(y, pt, 4, "UInt")

	if (w = "") ||(h = "")
		WinGetPos,,, w, h, ahk_id %hwnd%
   
	return DllCall("UpdateLayeredWindow"
					, Ptr, hwnd
					, Ptr, 0
					, Ptr, ((x = "") && (y = "")) ? 0 : &pt
					, "int64*", w|h<<32
					, Ptr, hdc
					, "int64*", 0
					, "uint", 0
					, "UInt*", Alpha<<16|1<<24
					, "uint", 2)
}

Gdip_BitmapFromScreen(Screen=0, Raster="")
{
	if (Screen = 0)
	{
		Sysget, x, 76
		Sysget, y, 77	
		Sysget, w, 78
		Sysget, h, 79
	}
	else if (SubStr(Screen, 1, 5) = "hwnd:")
	{
		Screen := SubStr(Screen, 6)
		if !WinExist( "ahk_id " Screen)
			return -2
		WinGetPos,,, w, h, ahk_id %Screen%
		x := y := 0
		hhdc := GetDCEx(Screen, 3)
	}
	else if (Screen&1 != "")
	{
		Sysget, M, Monitor, %Screen%
		x := MLeft, y := MTop, w := MRight-MLeft, h := MBottom-MTop
	}
	else
	{
		StringSplit, S, Screen, |
		x := S1, y := S2, w := S3, h := S4
	}

	if (x = "") || (y = "") || (w = "") || (h = "")
		return -1

	chdc := CreateCompatibleDC(), hbm := CreateDIBSection(w, h, chdc), obm := SelectObject(chdc, hbm), hhdc := hhdc ? hhdc : GetDC()
	BitBlt(chdc, 0, 0, w, h, hhdc, x, y, Raster)
	ReleaseDC(hhdc)
	
	pBitmap := Gdip_CreateBitmapFromHBITMAP(hbm)
	SelectObject(chdc, obm), DeleteObject(hbm), DeleteDC(hhdc), DeleteDC(chdc)
	return pBitmap
}

Gdip_SaveBitmapToFile(pBitmap, sOutput, Quality=75)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	SplitPath, sOutput,,, Extension
	if Extension not in BMP,DIB,RLE,JPG,JPEG,JPE,JFIF,GIF,TIF,TIFF,PNG
		return -1
	Extension := "." Extension

	DllCall("gdiplus\GdipGetImageEncodersSize", "uint*", nCount, "uint*", nSize)
	VarSetCapacity(ci, nSize)
	DllCall("gdiplus\GdipGetImageEncoders", "uint", nCount, "uint", nSize, Ptr, &ci)
	if !(nCount && nSize)
		return -2
	
	If (A_IsUnicode){
		StrGet_Name := "StrGet"
		Loop, %nCount%
		{
			sString := %StrGet_Name%(NumGet(ci, (idx := (48+7*A_PtrSize)*(A_Index-1))+32+3*A_PtrSize), "UTF-16")
			if !InStr(sString, "*" Extension)
				continue
			
			pCodec := &ci+idx
			break
		}
	} else {
		Loop, %nCount%
		{
			Location := NumGet(ci, 76*(A_Index-1)+44)
			nSize := DllCall("WideCharToMultiByte", "uint", 0, "uint", 0, "uint", Location, "int", -1, "uint", 0, "int",  0, "uint", 0, "uint", 0)
			VarSetCapacity(sString, nSize)
			DllCall("WideCharToMultiByte", "uint", 0, "uint", 0, "uint", Location, "int", -1, "str", sString, "int", nSize, "uint", 0, "uint", 0)
			if !InStr(sString, "*" Extension)
				continue
			
			pCodec := &ci+76*(A_Index-1)
			break
		}
	}
	
	if !pCodec
		return -3

	if (Quality != 75)
	{
		Quality := (Quality < 0) ? 0 : (Quality > 100) ? 100 : Quality
		if Extension in .JPG,.JPEG,.JPE,.JFIF
		{
			DllCall("gdiplus\GdipGetEncoderParameterListSize", Ptr, pBitmap, Ptr, pCodec, "uint*", nSize)
			VarSetCapacity(EncoderParameters, nSize, 0)
			DllCall("gdiplus\GdipGetEncoderParameterList", Ptr, pBitmap, Ptr, pCodec, "uint", nSize, Ptr, &EncoderParameters)
			Loop, % NumGet(EncoderParameters, "UInt")      ;%
			{
				elem := (24+(A_PtrSize ? A_PtrSize : 4))*(A_Index-1) + 4 + (pad := A_PtrSize = 8 ? 4 : 0)
				if (NumGet(EncoderParameters, elem+16, "UInt") = 1) && (NumGet(EncoderParameters, elem+20, "UInt") = 6)
				{
					p := elem+&EncoderParameters-pad-4
					NumPut(Quality, NumGet(NumPut(4, NumPut(1, p+0)+20, "UInt")), "UInt")
					break
				}
			}      
		}
	}

	if (!A_IsUnicode)
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sOutput, "int", -1, Ptr, 0, "int", 0)
		VarSetCapacity(wOutput, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sOutput, "int", -1, Ptr, &wOutput, "int", nSize)
		VarSetCapacity(wOutput, -1)
		if !VarSetCapacity(wOutput)
			return -4
		E := DllCall("gdiplus\GdipSaveImageToFile", Ptr, pBitmap, Ptr, &wOutput, Ptr, pCodec, "uint", p ? p : 0)
	}
	else
		E := DllCall("gdiplus\GdipSaveImageToFile", Ptr, pBitmap, Ptr, &sOutput, Ptr, pCodec, "uint", p ? p : 0)
	return E ? -5 : 0
}

Gdip_Shutdown(pToken)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	
	DllCall("gdiplus\GdiplusShutdown", Ptr, pToken)
	if hModule := DllCall("GetModuleHandle", "str", "gdiplus", Ptr)
		DllCall("FreeLibrary", Ptr, hModule)
	return 0
}

Gdip_GetImageDimensions(pBitmap, ByRef Width, ByRef Height)
{
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	DllCall("gdiplus\GdipGetImageWidth", Ptr, pBitmap, "uint*", Width)
	DllCall("gdiplus\GdipGetImageHeight", Ptr, pBitmap, "uint*", Height)
}

Gdip_GetRotatedDimensions(Width, Height, Angle, ByRef RWidth, ByRef RHeight)
{
	pi := 3.14159, TAngle := Angle*(pi/180)
	if !(Width && Height)
		return -1
	RWidth := Ceil(Abs(Width*Cos(TAngle))+Abs(Height*Sin(TAngle)))
	RHeight := Ceil(Abs(Width*Sin(TAngle))+Abs(Height*Cos(Tangle)))
}

;#####################################################################################
Gdip_GetRotatedTranslation(Width, Height, Angle, ByRef xTranslation, ByRef yTranslation)
{
	pi := 3.14159, TAngle := Angle*(pi/180)	

	Bound := (Angle >= 0) ? Mod(Angle, 360) : 360-Mod(-Angle, -360)
	if ((Bound >= 0) && (Bound <= 90))
		xTranslation := Height*Sin(TAngle), yTranslation := 0
	else if ((Bound > 90) && (Bound <= 180))
		xTranslation := (Height*Sin(TAngle))-(Width*Cos(TAngle)), yTranslation := -Height*Cos(TAngle)
	else if ((Bound > 180) && (Bound <= 270))
		xTranslation := -(Width*Cos(TAngle)), yTranslation := -(Height*Cos(TAngle))-(Width*Sin(TAngle))
	else if ((Bound > 270) && (Bound <= 360))
		xTranslation := 0, yTranslation := -Width*Sin(TAngle)
}

Gdip_DrawImage(pGraphics, pBitmap, dx="", dy="", dw="", dh="", sx="", sy="", sw="", sh="", Matrix=1){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	if (Matrix&1 = "")
		ImageAttr := Gdip_SetImageAttributesColorMatrix(Matrix)
	else if (Matrix != 1)
		ImageAttr := Gdip_SetImageAttributesColorMatrix("1|0|0|0|0|0|1|0|0|0|0|0|1|0|0|0|0|0|" Matrix "|0|0|0|0|0|1")
	if(sx = "" && sy = "" && sw = "" && sh = ""){
		if(dx = "" && dy = "" && dw = "" && dh = ""){
			sx := dx := 0, sy := dy := 0
			sw := dw := Gdip_GetImageWidth(pBitmap)
			sh := dh := Gdip_GetImageHeight(pBitmap)
		}else	{
			sx := sy := 0,sw := Gdip_GetImageWidth(pBitmap),sh := Gdip_GetImageHeight(pBitmap)
		}
	}
	E := DllCall("gdiplus\GdipDrawImageRectRect", Ptr, pGraphics, Ptr, pBitmap, "float", dx, "float", dy, "float", dw, "float", dh, "float", sx, "float", sy, "float", sw, "float", sh, "int", 2, Ptr, ImageAttr, Ptr, 0, Ptr, 0)
	if ImageAttr
		Gdip_DisposeImageAttributes(ImageAttr)
	return E
}
Gdip_SetImageAttributesColorMatrix(Matrix){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	VarSetCapacity(ColourMatrix, 100, 0)
	Matrix := RegExReplace(RegExReplace(Matrix, "^[^\d-\.]+([\d\.])", "$1", "", 1), "[^\d-\.]+", "|")
	StringSplit, Matrix, Matrix, |
	Loop, 25
	{
		Matrix := (Matrix%A_Index% != "") ? Matrix%A_Index% : Mod(A_Index-1, 6) ? 0 : 1
		NumPut(Matrix, ColourMatrix, (A_Index-1)*4, "float")
	}
	DllCall("gdiplus\GdipCreateImageAttributes", A_PtrSize ? "UPtr*" : "uint*", ImageAttr)
	DllCall("gdiplus\GdipSetImageAttributesColorMatrix", Ptr, ImageAttr, "int", 1, "int", 1, Ptr, &ColourMatrix, Ptr, 0, "int", 0)
	return ImageAttr
}
Gdip_GetImageWidth(pBitmap){
   DllCall("gdiplus\GdipGetImageWidth", A_PtrSize ? "UPtr" : "UInt", pBitmap, "uint*", Width)
   return Width
}
Gdip_GetImageHeight(pBitmap){
   DllCall("gdiplus\GdipGetImageHeight", A_PtrSize ? "UPtr" : "UInt", pBitmap, "uint*", Height)
   return Height
}
Gdip_DeletePen(pPen){
   return DllCall("gdiplus\GdipDeletePen", A_PtrSize ? "UPtr" : "UInt", pPen)
}
Gdip_DeleteBrush(pBrush){
   return DllCall("gdiplus\GdipDeleteBrush", A_PtrSize ? "UPtr" : "UInt", pBrush)
}
Gdip_DisposeImage(pBitmap){
   return DllCall("gdiplus\GdipDisposeImage", A_PtrSize ? "UPtr" : "UInt", pBitmap)
}
Gdip_DeleteGraphics(pGraphics){
   return DllCall("gdiplus\GdipDeleteGraphics", A_PtrSize ? "UPtr" : "UInt", pGraphics)
}
Gdip_DisposeImageAttributes(ImageAttr){
	return DllCall("gdiplus\GdipDisposeImageAttributes", A_PtrSize ? "UPtr" : "UInt", ImageAttr)
}
Gdip_DeleteFont(hFont){
   return DllCall("gdiplus\GdipDeleteFont", A_PtrSize ? "UPtr" : "UInt", hFont)
}
Gdip_DeleteStringFormat(hFormat){
   return DllCall("gdiplus\GdipDeleteStringFormat", A_PtrSize ? "UPtr" : "UInt", hFormat)
}
Gdip_DeleteFontFamily(hFamily){
   return DllCall("gdiplus\GdipDeleteFontFamily", A_PtrSize ? "UPtr" : "UInt", hFamily)
}
CreateCompatibleDC(hdc=0){
   return DllCall("CreateCompatibleDC", A_PtrSize ? "UPtr" : "UInt", hdc)
}
SelectObject(hdc, hgdiobj){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("SelectObject", Ptr, hdc, Ptr, hgdiobj)
}
DeleteObject(hObject){
   return DllCall("DeleteObject", A_PtrSize ? "UPtr" : "UInt", hObject)
}
GetDC(hwnd=0){
	return DllCall("GetDC", A_PtrSize ? "UPtr" : "UInt", hwnd)
}
GetDCEx(hwnd, flags=0, hrgnClip=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
    return DllCall("GetDCEx", Ptr, hwnd, Ptr, hrgnClip, "int", flags)
}
ReleaseDC(hdc, hwnd=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("ReleaseDC", Ptr, hwnd, Ptr, hdc)
}
DeleteDC(hdc){
   return DllCall("DeleteDC", A_PtrSize ? "UPtr" : "UInt", hdc)
}
Gdip_SetClipRegion(pGraphics, Region, CombineMode=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipSetClipRegion", Ptr, pGraphics, Ptr, Region, "int", CombineMode)
}
CreateDIBSection(w, h, hdc="", bpp=32, ByRef ppvBits=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	hdc2 := hdc ? hdc : GetDC()
	VarSetCapacity(bi, 40, 0)
	NumPut(w, bi, 4, "uint"), NumPut(h, bi, 8, "uint"), NumPut(40, bi, 0, "uint"), NumPut(1, bi, 12, "ushort"), NumPut(0, bi, 16, "uInt"), NumPut(bpp, bi, 14, "ushort")
	hbm := DllCall("CreateDIBSection", Ptr, hdc2, Ptr, &bi, "uint", 0, A_PtrSize ? "UPtr*" : "uint*", ppvBits, Ptr, 0, "uint", 0, Ptr)
	if !hdc
		ReleaseDC(hdc2)
	return hbm
}
Gdip_GraphicsFromImage(pBitmap){
	DllCall("gdiplus\GdipGetImageGraphicsContext", A_PtrSize ? "UPtr" : "UInt", pBitmap, A_PtrSize ? "UPtr*" : "UInt*", pGraphics)
	return pGraphics
}
Gdip_GraphicsFromHDC(hdc){
    DllCall("gdiplus\GdipCreateFromHDC", A_PtrSize ? "UPtr" : "UInt", hdc, A_PtrSize ? "UPtr*" : "UInt*", pGraphics)
    return pGraphics
}
Gdip_GetDC(pGraphics){
	DllCall("gdiplus\GdipGetDC", A_PtrSize ? "UPtr" : "UInt", pGraphics, A_PtrSize ? "UPtr*" : "UInt*", hdc)
	return hdc
}


Gdip_Startup(){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	if !DllCall("GetModuleHandle", "str", "gdiplus", Ptr)
		DllCall("LoadLibrary", "str", "gdiplus")
	VarSetCapacity(si, A_PtrSize = 8 ? 24 : 16, 0), si := Chr(1)
	DllCall("gdiplus\GdiplusStartup", A_PtrSize ? "UPtr*" : "uint*", pToken, Ptr, &si, Ptr, 0)
	return pToken
}
Gdip_TextToGraphics(pGraphics, Text, Options, Font="Arial", Width="", Height="", Measure=0){
	IWidth := Width, IHeight:= Height
	RegExMatch(Options, "i)X([\-\d\.]+)(p*)", xpos)
	RegExMatch(Options, "i)Y([\-\d\.]+)(p*)", ypos)
	RegExMatch(Options, "i)W([\-\d\.]+)(p*)", Width)
	RegExMatch(Options, "i)H([\-\d\.]+)(p*)", Height)
	RegExMatch(Options, "i)C(?!(entre|enter))([a-f\d]+)", Colour)
	RegExMatch(Options, "i)Top|Up|Bottom|Down|vCentre|vCenter", vPos)
	RegExMatch(Options, "i)NoWrap", NoWrap)
	RegExMatch(Options, "i)R(\d)", Rendering)
	RegExMatch(Options, "i)S(\d+)(p*)", Size)
	if !Gdip_DeleteBrush(Gdip_CloneBrush(Colour2))
		PassBrush := 1, pBrush := Colour2
	if !(IWidth && IHeight) && (xpos2 || ypos2 || Width2 || Height2 || Size2)
		return -1
	Style := 0, Styles := "Regular|Bold|Italic|BoldItalic|Underline|Strikeout"
	Loop, Parse, Styles, |
	{
		if RegExMatch(Options, "\b" A_loopField)
		Style |= (A_LoopField != "StrikeOut") ? (A_Index-1) : 8
	}
	Align := 0, Alignments := "Near|Left|Centre|Center|Far|Right"
	Loop, Parse, Alignments, |
	{
		if RegExMatch(Options, "\b" A_loopField)
			Align |= A_Index//2.1      ; 0|0|1|1|2|2
	}
	xpos := (xpos1 != "") ? xpos2 ? IWidth*(xpos1/100) : xpos1 : 0
	ypos := (ypos1 != "") ? ypos2 ? IHeight*(ypos1/100) : ypos1 : 0
	Width := Width1 ? Width2 ? IWidth*(Width1/100) : Width1 : IWidth
	Height := Height1 ? Height2 ? IHeight*(Height1/100) : Height1 : IHeight
	if !PassBrush
		Colour := "0x" (Colour2 ? Colour2 : "ff000000")
	Rendering := ((Rendering1 >= 0) && (Rendering1 <= 5)) ? Rendering1 : 4
	Size := (Size1 > 0) ? Size2 ? IHeight*(Size1/100) : Size1 : 12
	hFamily := Gdip_FontFamilyCreate(Font)
	hFont := Gdip_FontCreate(hFamily, Size, Style)
	FormatStyle := NoWrap ? 0x4000 | 0x1000 : 0x4000
	hFormat := Gdip_StringFormatCreate(FormatStyle)
	pBrush := PassBrush ? pBrush : Gdip_BrushCreateSolid(Colour)
	if !(hFamily && hFont && hFormat && pBrush && pGraphics)
		return !pGraphics ? -2 : !hFamily ? -3 : !hFont ? -4 : !hFormat ? -5 : !pBrush ? -6 : 0
	CreateRectF(RC, xpos, ypos, Width, Height)
	Gdip_SetStringFormatAlign(hFormat, Align)
	Gdip_SetTextRenderingHint(pGraphics, Rendering)
	ReturnRC := Gdip_MeasureString(pGraphics, Text, hFont, hFormat, RC)
	if vPos
	{
		StringSplit, ReturnRC, ReturnRC, |
		if (vPos = "vCentre") || (vPos = "vCenter")
			ypos += (Height-ReturnRC4)//2
		else if (vPos = "Top") || (vPos = "Up")
			ypos := 0
		else if (vPos = "Bottom") || (vPos = "Down")
			ypos := Height-ReturnRC4
		CreateRectF(RC, xpos, ypos, Width, ReturnRC4)
		ReturnRC := Gdip_MeasureString(pGraphics, Text, hFont, hFormat, RC)
	}
	if !Measure
		E := Gdip_DrawString(pGraphics, Text, hFont, hFormat, pBrush, RC)
	if !PassBrush
		Gdip_DeleteBrush(pBrush)
	Gdip_DeleteStringFormat(hFormat)
	Gdip_DeleteFont(hFont)
	Gdip_DeleteFontFamily(hFamily)
	return E ? E : ReturnRC
}
Gdip_DrawString(pGraphics, sString, hFont, hFormat, pBrush, ByRef RectF){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	if (!A_IsUnicode)
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sString, "int", -1, Ptr, 0, "int", 0)
		VarSetCapacity(wString, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sString, "int", -1, Ptr, &wString, "int", nSize)
	}
	return DllCall("gdiplus\GdipDrawString", Ptr, pGraphics, Ptr, A_IsUnicode ? &sString : &wString, "int", -1, Ptr, hFont, Ptr, &RectF, Ptr, hFormat, Ptr, pBrush)
}
Gdip_CreateLineBrush(x1, y1, x2, y2, ARGB1, ARGB2, WrapMode=1){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	CreatePointF(PointF1, x1, y1), CreatePointF(PointF2, x2, y2)
	DllCall("gdiplus\GdipCreateLineBrush", Ptr, &PointF1, Ptr, &PointF2, "Uint", ARGB1, "Uint", ARGB2, "int", WrapMode, A_PtrSize ? "UPtr*" : "UInt*", LGpBrush)
	return LGpBrush
}
Gdip_CreateLineBrushFromRect(x, y, w, h, ARGB1, ARGB2, LinearGradientMode=1, WrapMode=1){
	CreateRectF(RectF, x, y, w, h)
	DllCall("gdiplus\GdipCreateLineBrushFromRect", A_PtrSize ? "UPtr" : "UInt", &RectF, "int", ARGB1, "int", ARGB2, "int", LinearGradientMode, "int", WrapMode, A_PtrSize ? "UPtr*" : "UInt*", LGpBrush)
	return LGpBrush
}
Gdip_CloneBrush(pBrush){
	DllCall("gdiplus\GdipCloneBrush", A_PtrSize ? "UPtr" : "UInt", pBrush, A_PtrSize ? "UPtr*" : "UInt*", pBrushClone)
	return pBrushClone
}
Gdip_FontFamilyCreate(Font){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	if (!A_IsUnicode)
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &Font, "int", -1, "uint", 0, "int", 0)
		VarSetCapacity(wFont, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &Font, "int", -1, Ptr, &wFont, "int", nSize)
	}
	DllCall("gdiplus\GdipCreateFontFamilyFromName", Ptr, A_IsUnicode ? &Font : &wFont, "uint", 0, A_PtrSize ? "UPtr*" : "UInt*", hFamily)
	return hFamily
}
Gdip_SetStringFormatAlign(hFormat, Align){
   return DllCall("gdiplus\GdipSetStringFormatAlign", A_PtrSize ? "UPtr" : "UInt", hFormat, "int", Align)
}
Gdip_StringFormatCreate(Format=0, Lang=0){
   DllCall("gdiplus\GdipCreateStringFormat", "int", Format, "int", Lang, A_PtrSize ? "UPtr*" : "UInt*", hFormat)
   return hFormat
}
Gdip_FontCreate(hFamily, Size, Style=0){
   DllCall("gdiplus\GdipCreateFont", A_PtrSize ? "UPtr" : "UInt", hFamily, "float", Size, "int", Style, "int", 0, A_PtrSize ? "UPtr*" : "UInt*", hFont)
   return hFont
}
Gdip_CreatePen(ARGB, w){
   DllCall("gdiplus\GdipCreatePen1", "UInt", ARGB, "float", w, "int", 2, A_PtrSize ? "UPtr*" : "UInt*", pPen)
   return pPen
}
Gdip_CreatePenFromBrush(pBrush, w){
	DllCall("gdiplus\GdipCreatePen2", A_PtrSize ? "UPtr" : "UInt", pBrush, "float", w, "int", 2, A_PtrSize ? "UPtr*" : "UInt*", pPen)
	return pPen
}
Gdip_BrushCreateSolid(ARGB=0xff000000){
	DllCall("gdiplus\GdipCreateSolidFill", "UInt", ARGB, A_PtrSize ? "UPtr*" : "UInt*", pBrush)
	return pBrush
}
Gdip_BrushCreateHatch(ARGBfront, ARGBback, HatchStyle=0){
	DllCall("gdiplus\GdipCreateHatchBrush", "int", HatchStyle, "UInt", ARGBfront, "UInt", ARGBback, A_PtrSize ? "UPtr*" : "UInt*", pBrush)
	return pBrush
}
CreateRectF(ByRef RectF, x, y, w, h){
   VarSetCapacity(RectF, 16)
   NumPut(x, RectF, 0, "float"), NumPut(y, RectF, 4, "float"), NumPut(w, RectF, 8, "float"), NumPut(h, RectF, 12, "float")
}
Gdip_SetTextRenderingHint(pGraphics, RenderingHint){
	return DllCall("gdiplus\GdipSetTextRenderingHint", A_PtrSize ? "UPtr" : "UInt", pGraphics, "int", RenderingHint)
}
Gdip_MeasureString(pGraphics, sString, hFont, hFormat, ByRef RectF){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	VarSetCapacity(RC, 16)
	if !A_IsUnicode
	{
		nSize := DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sString, "int", -1, "uint", 0, "int", 0)
		VarSetCapacity(wString, nSize*2)
		DllCall("MultiByteToWideChar", "uint", 0, "uint", 0, Ptr, &sString, "int", -1, Ptr, &wString, "int", nSize)
	}
	DllCall("gdiplus\GdipMeasureString", Ptr, pGraphics, Ptr, A_IsUnicode ? &sString : &wString, "int", -1, Ptr, hFont, Ptr, &RectF, Ptr, hFormat, Ptr, &RC, "uint*", Chars, "uint*", Lines)
	return &RC ? NumGet(RC, 0, "float") "|" NumGet(RC, 4, "float") "|" NumGet(RC, 8, "float") "|" NumGet(RC, 12, "float") "|" Chars "|" Lines : 0
}
CreateRect(ByRef Rect, x, y, w, h){
	VarSetCapacity(Rect, 16)
	NumPut(x, Rect, 0, "uint"), NumPut(y, Rect, 4, "uint"), NumPut(w, Rect, 8, "uint"), NumPut(h, Rect, 12, "uint")
}
CreateSizeF(ByRef SizeF, w, h){
   VarSetCapacity(SizeF, 8)
   NumPut(w, SizeF, 0, "float"), NumPut(h, SizeF, 4, "float")
}
CreatePointF(ByRef PointF, x, y){
   VarSetCapacity(PointF, 8)
   NumPut(x, PointF, 0, "float"), NumPut(y, PointF, 4, "float")
}
Gdip_DrawArc(pGraphics, pPen, x, y, w, h, StartAngle, SweepAngle){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawArc", Ptr, pGraphics, Ptr, pPen, "float", x, "float", y, "float", w, "float", h, "float", StartAngle, "float", SweepAngle)
}
Gdip_DrawPie(pGraphics, pPen, x, y, w, h, StartAngle, SweepAngle){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawPie", Ptr, pGraphics, Ptr, pPen, "float", x, "float", y, "float", w, "float", h, "float", StartAngle, "float", SweepAngle)
}
Gdip_DrawLine(pGraphics, pPen, x1, y1, x2, y2){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawLine", Ptr, pGraphics, Ptr, pPen, "float", x1, "float", y1, "float", x2, "float", y2)
}
Gdip_DrawLines(pGraphics, pPen, Points){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	StringSplit, Points, Points, |
	VarSetCapacity(PointF, 8*Points0)
	Loop, %Points0%
	{
		StringSplit, Coord, Points%A_Index%, `,
		NumPut(Coord1, PointF, 8*(A_Index-1), "float"), NumPut(Coord2, PointF, (8*(A_Index-1))+4, "float")
	}
	return DllCall("gdiplus\GdipDrawLines", Ptr, pGraphics, Ptr, pPen, Ptr, &PointF, "int", Points0)
}
Gdip_FillRectangle(pGraphics, pBrush, x, y, w, h){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillRectangle", Ptr, pGraphics, Ptr, pBrush, "float", x, "float", y, "float", w, "float", h)
}
Gdip_FillRoundedRectangle(pGraphics, pBrush, x, y, w, h, r){
	Region := Gdip_GetClipRegion(pGraphics)
	Gdip_SetClipRect(pGraphics, x-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x-r, y+h-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y+h-r, 2*r, 2*r, 4)
	E := Gdip_FillRectangle(pGraphics, pBrush, x, y, w, h)
	Gdip_SetClipRegion(pGraphics, Region, 0)
	Gdip_SetClipRect(pGraphics, x-(2*r), y+r, w+(4*r), h-(2*r), 4)
	Gdip_SetClipRect(pGraphics, x+r, y-(2*r), w-(2*r), h+(4*r), 4)
	Gdip_FillEllipse(pGraphics, pBrush, x, y, 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x+w-(2*r), y, 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x, y+h-(2*r), 2*r, 2*r)
	Gdip_FillEllipse(pGraphics, pBrush, x+w-(2*r), y+h-(2*r), 2*r, 2*r)
	Gdip_SetClipRegion(pGraphics, Region, 0)
	Gdip_DeleteRegion(Region)
	return E
}
Gdip_GetClipRegion(pGraphics){
	Region := Gdip_CreateRegion()
	DllCall("gdiplus\GdipGetClip", A_PtrSize ? "UPtr" : "UInt", pGraphics, "UInt*", Region)
	return Region
}
Gdip_SetClipRect(pGraphics, x, y, w, h, CombineMode=0){
   return DllCall("gdiplus\GdipSetClipRect",  A_PtrSize ? "UPtr" : "UInt", pGraphics, "float", x, "float", y, "float", w, "float", h, "int", CombineMode)
}
Gdip_SetClipPath(pGraphics, Path, CombineMode=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipSetClipPath", Ptr, pGraphics, Ptr, Path, "int", CombineMode)
}
Gdip_ResetClip(pGraphics){
   return DllCall("gdiplus\GdipResetClip", A_PtrSize ? "UPtr" : "UInt", pGraphics)
}
Gdip_FillEllipse(pGraphics, pBrush, x, y, w, h){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillEllipse", Ptr, pGraphics, Ptr, pBrush, "float", x, "float", y, "float", w, "float", h)
}
Gdip_FillRegion(pGraphics, pBrush, Region){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillRegion", Ptr, pGraphics, Ptr, pBrush, Ptr, Region)
}
Gdip_FillPath(pGraphics, pBrush, Path){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipFillPath", Ptr, pGraphics, Ptr, pBrush, Ptr, Path)
}
Gdip_CreateRegion(){
	DllCall("gdiplus\GdipCreateRegion", "UInt*", Region)
	return Region
}
Gdip_DeleteRegion(Region){
	return DllCall("gdiplus\GdipDeleteRegion", A_PtrSize ? "UPtr" : "UInt", Region)
}
Gdip_CreateBitmap(Width, Height, Format=0x26200A){
    DllCall("gdiplus\GdipCreateBitmapFromScan0", "int", Width, "int", Height, "int", 0, "int", Format, A_PtrSize ? "UPtr" : "UInt", 0, A_PtrSize ? "UPtr*" : "uint*", pBitmap)
    Return pBitmap
}
Gdip_SetSmoothingMode(pGraphics, SmoothingMode){
   return DllCall("gdiplus\GdipSetSmoothingMode", A_PtrSize ? "UPtr" : "UInt", pGraphics, "int", SmoothingMode)
}
Gdip_DrawRectangle(pGraphics, pPen, x, y, w, h){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawRectangle", Ptr, pGraphics, Ptr, pPen, "float", x, "float", y, "float", w, "float", h)
}
Gdip_DrawRoundedRectangle(pGraphics, pPen, x, y, w, h, r){
	Gdip_SetClipRect(pGraphics, x-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x-r, y+h-r, 2*r, 2*r, 4)
	Gdip_SetClipRect(pGraphics, x+w-r, y+h-r, 2*r, 2*r, 4)
	E := Gdip_DrawRectangle(pGraphics, pPen, x, y, w, h)
	Gdip_ResetClip(pGraphics)
	Gdip_SetClipRect(pGraphics, x-(2*r), y+r, w+(4*r), h-(2*r), 4)
	Gdip_SetClipRect(pGraphics, x+r, y-(2*r), w-(2*r), h+(4*r), 4)
	Gdip_DrawEllipse(pGraphics, pPen, x, y, 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x+w-(2*r), y, 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x, y+h-(2*r), 2*r, 2*r)
	Gdip_DrawEllipse(pGraphics, pPen, x+w-(2*r), y+h-(2*r), 2*r, 2*r)
	Gdip_ResetClip(pGraphics)
	return E
}
Gdip_DrawEllipse(pGraphics, pPen, x, y, w, h){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	return DllCall("gdiplus\GdipDrawEllipse", Ptr, pGraphics, Ptr, pPen, "float", x, "float", y, "float", w, "float", h)
}
Gdip_CreateHBITMAPFromBitmap(pBitmap, Background=0xffffffff){
	DllCall("gdiplus\GdipCreateHBITMAPFromBitmap", A_PtrSize ? "UPtr" : "UInt", pBitmap, A_PtrSize ? "UPtr*" : "uint*", hbm, "int", Background)
	return hbm
}
SetImage(hwnd, hBitmap){
	SendMessage, 0x172, 0x0, hBitmap,, ahk_id %hwnd%
	E := ErrorLevel
	DeleteObject(E)
	return E
}
Gdip_FillPolygon(pGraphics, pBrush, Points, FillMode=0){
	Ptr := A_PtrSize ? "UPtr" : "UInt"
	StringSplit, Points, Points, |
	VarSetCapacity(PointF, 8*Points0)
	Loop, %Points0%
	{
		StringSplit, Coord, Points%A_Index%, `,
		NumPut(Coord1, PointF, 8*(A_Index-1), "float"), NumPut(Coord2, PointF, (8*(A_Index-1))+4, "float")
	}
	return DllCall("gdiplus\GdipFillPolygon", Ptr, pGraphics, Ptr, pBrush, Ptr, &PointF, "int", Points0, "int", FillMode)
}
