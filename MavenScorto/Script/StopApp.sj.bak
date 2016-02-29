//USEUNIT Logging
function stop()
{
 var app = Aliases.Maven;
 app.close();
 
 var WindowWarning = app.dlgWarning;
 while (true)
 {
   if (WindowWarning.Exists)
    {
      WindowWarning.Cansel.ClickButton();
    } else break;
 }
 logMessage("App is stoped.")
}