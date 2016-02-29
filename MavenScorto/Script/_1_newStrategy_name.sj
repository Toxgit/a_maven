﻿//USEUNIT TestLogging
//USEUNIT NewStrategyHelper
//USEUNIT ToolbarHelper

function newStrategy_name()
{
  //preconditions
  BeginTestTransaction("Create New Strategy","тест проверяет Name стратегии.");
   
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "name") continue; 
    logStep("Iteration "+i);
    toolbar_newStr();
    newStrategy_fillInOk(item);
    newStrategy_verify(item);
  }
  EndTestTransaction();
}