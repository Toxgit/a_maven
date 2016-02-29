﻿//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT TestLogging
//USEUNIT VariablesHelper

function  Variables_CopyEditOriginalCopy()
{
  //precondition
  BeginTestTransaction("User can change the original varialbe and it will not affect the already made copy, but all new copies made afterwards will contain changes");
  createNewStrategy();
  toolbar_variables();
  //test body
  Log.Message("Создаем две переменные");
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "copy") continue;
    createVariableWithCostomProperty(item);
  }
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "edit original") continue;
    clickRowByName(item.name);
    variables_copy();
    clickRowByName(item.name);
    editVariableWithCostomProperty(item);
  }
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "checking copy") continue;
    logStep("Iteration "+i);
    verifyVariableWithCostomProperty(item);
  }
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options == "edit original"){
      clickRowByName(item.newName);
      variables.copy();
    }
    if (item.options == "checking edit original"){
      logStep("Iteration "+i);
      verifyVariableWithCostomProperty(item);
    }
  }
  //postcondition
  Log.PopLogFolder()
  variables_ok();
  toolbar_close_withoutSave();
  EndTestTransaction(); 
}