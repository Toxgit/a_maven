﻿//USEUNIT MainMenuHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowErrorHelper
//USEUNIT DebugVariablesHelper


function passingNode()
{
  //initialization
  
  //precondition
  Log.Message("Тест проверяет значение переменных узла, после после запуска стратегии (фул дебага)");
  openOnlyDebugVariables();
  setDebugOnSrv(1);
  //test bodys 
  toolbar_fullRunDebugMode();
  xtraInfo_ok();
  Log.Checkpoint("Debug has done.");
  for (var i=0; i< ODT.Data.Nodes.VariableCount; i++)
    { 
      var item = ODT.Data.Nodes.Variables(i).Value;
      if(item.options == "credProd")
      {
        debugVariables_clickRow(item.name);
        debugVariables_checkValue( item.name, "Value", item.value);
      }
    } 
  //postcondition
}