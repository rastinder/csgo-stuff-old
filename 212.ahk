#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance Force
;PixelSearch, X, Y, 1317, 461, 2602, 463, ("0x173AD0"), 60, RGB, Fast
;Color1	=	0x011C38 On KeyDown
;Color2	=	0x2D5967 On KeyUp
;AveragedColor = 0x173AD0 On KeyUp

;PixelSearch, X, Y, 8995, 461, 9664, 487, ("0xFFFFFF"), 60, RGB, Fast
;Color1	=	0xFFFFFF On KeyDown
;Color2	=	0xFFFFFF On KeyUp
;AveragedColor = 0xFFFFFF On KeyUp

;PixelSearch, X, Y, 8999, 462, 10329, 467, ("0xFFFFFF"), 60, RGB, Fast
;Color1	=	0xFFFFFF On KeyDown
;Color2	=	0xFFFFFF On KeyUp

PixelSearch, X, Y, 0, 0, 2650, 469, ("0xAAC44"), 60, RGB, Fast
OutputDebug %errorlevel%
Color1	=	0x011C38 On KeyDown
;Color2	=	0x143C50 On KeyUp
;AveragedColor = 0xAAC44 On KeyUp