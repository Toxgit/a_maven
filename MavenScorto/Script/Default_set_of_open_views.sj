﻿//USEUNIT ODTInitt
//USEUNIT restartApp


// создание структуры DDT из файла TestData.xls
//function aaa(){ ODTInitt.initddt("TestData.xls","Default_views");Log.Message("Загружена новая структура ODT");}

function verifyDefaultViews ()
{
//restart();

var aliases = Aliases.Maven.MainForm.BarMainMenu;
/*
var mainForm = Aliases.Maven.MainForm;

if (mainForm.Output.Exists)
{}
else
{}

*/
    for (var i=0; i< ODT.Data.Default_views.VariableCount; i++)
    {
      var item = ODT.Data.Default_views.Variables(i).Value;
      var expetedState = findState(item.view);
      var currentView = item.view;
      if (expetedState == 3)
      {Log.Warning(aqString.Format("View - %s не найдена в приложении", item.view));}
      else if (item.state == expetedState)
            { Log.Checkpoint("Pass - view "+ item.view);}
          else
            {Log.Warning("Fail -  view "+ item.view);}
          
    }
        
    
    
    
  function findState(view){
   for(var i=0; i < aliases.MainMenu.wItems.Item("view").Items.Count; i++)
    {
      var theView = aliases.MainMenu.wItems.Item("view").Items.Item(i).Text;
      var theState = aliases.MainMenu.wItems.Item("view").Items.Item(i).State;
      if(theView == view)
        {return theState;} 
    }
    return 3;
  }
  
  
}


