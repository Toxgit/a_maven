function start()
{
 TestedApps.Maven.Run();
 var welcomeScreenForm = Aliases.Maven.WelcomeScreenForm;
 
 
 //ждем welcomScreen
 while (true){if(welcomeScreenForm.Exists)break;aqUtils.Delay(2000);}
 welcomeScreenForm.ok.ClickButton();
 
 var loginControl = welcomeScreenForm.LoginControl;
 //ждем LoginControl
 while (true){if(loginControl.Exists)break;aqUtils.Delay(2000);}
 
 loginControl.UserName.SetText("MAIN\\alevkovskiy");
 textEdit = loginControl.Password;
 textEdit.TextBoxMaskBox.Click(21, 7);
 textEdit.SetText("Pro100123");
 loginControl.ok.ClickButton();
 //aqUtils.Delay(12000);
 //ждем MainForm
 var MainForm = Aliases.Maven.MainForm;
 while (true)
  {
    if (MainForm.Exists)
    {
      Log.Message("App is started.");
      break;
    }
    aqUtils.Delay(2000);
  }
  var selectStartUpOptionsForm = Aliases.Maven.SelectStartUpOptionsForm;  
  if (selectStartUpOptionsForm.Exists)
    {
      Log.Message("Окно настройки запуска приложения - закрыто"); 
      selectStartUpOptionsForm.simpleButton1.ClickButton();
    }
}