F6::map()

map()
{
    firstrun = 0
    if (firstrun = 0)
    {
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, office.png
     if (ErrorLevel = 0)
       thismap = 1
    ImageSearch, FoundX, FoundY, 0, 0, 3200, 960, agency.png
     if (ErrorLevel = 0)
        thismap = 2    
    }
    if (thismap = 1)
    {
        MsgBox office()
      }
    else if (thismap = 2)    
    {
      MsgBox agency()
     }
    else
    {
      ;sleep 30000
      MsgBox sry cant find map n this is problem
    } 
        
        
    
    
}