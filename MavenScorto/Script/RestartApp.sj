//USEUNIT startApp
//USEUNIT stopApp

function restart()
{
  var app = Aliases.Maven;
  if (app.Exists)
  {
    stop();
  }
  start()
}