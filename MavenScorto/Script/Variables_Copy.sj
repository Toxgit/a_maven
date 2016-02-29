﻿//USEUNIT NewStrategyHelper
//USEUNIT TestLogging
//USEUNIT VariablesHelper
//USEUNIT ToolbarHelper

function  Variables_Copy(){

  //precondition
  BeginTestTransaction("Проверка имени переменной при копировании.");
  createNewStrategy()
  toolbar_variables();
  //test body
  Log.Message("Создаем две переменные");
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "copy") continue;
    createVariableWithCostomProperty(item);
  }
  variables_selectAll();
  variables_copy();
  variables_copy();
   
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if ((item.options == "checking copy")||(item.options == "checking copy2")){
      logStep("Iteration "+i);
      verifyVariableWithCostomProperty(item);
    }
  }
  
//postcondition 
  variables_ok();
  toolbar_close_withoutSave();
  EndTestTransaction();
}