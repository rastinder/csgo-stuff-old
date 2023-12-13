#SingleInstance, force

#Persistent



; comment the next line if you want to see x,y as window relative coords

CoordMode, mouse, Screen



SetTimer, show, 200

return



show:

  MouseGetPos, x, y

  tooltip, x: %x%`, y: %y%

  return