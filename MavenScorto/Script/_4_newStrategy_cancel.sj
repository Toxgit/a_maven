﻿//USEUNIT TestLogging
//USEUNIT NewStrategyHelper
//USEUNIT ToolbarHelper

function newStrategy_cancel()
{
  //preconditions
  BeginTestTransaction("newStrategy_cancel","тест проверяет newStrategy_cancel.");
  toolbar_closeAll_withoutSave();
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "cancel") continue; 
    logStep("Iteration "+i);
    toolbar_newStr();
    newStrategy_fillInCancel(item);
    newStrategy_verify(item);
  }
  EndTestTransaction();
}