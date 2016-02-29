﻿//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT TestLogging
//USEUNIT VariablesHelper

function Property_checkDescription(){
  //precondition
  BeginTestTransaction("Проверка Description переменной.");
  //test body
  createNewStrategy();
  toolbar_variables();
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "check description") continue;
    logStep("Iteration "+i);
    if(item.expectedResult == "Pass"){
      variables_add();
      setValueToField(item.name);
      chooseProperty("Description");
      setValueToField(item.description);
      //сохранить...
      variables_apply();
      //Проверка...для тестов pass
      if (variableExists(item.name))Log.Checkpoint("Переменная с description = "+item.description+" создана.");
        else Log.Warning("Переменная с description = "+item.description+" не создана.");
      }else{//для тестов Fail
        variables_add();
        setValueToField(item.name);
        chooseProperty("Description");
        setValueToField(item.description);
        setValueToField(item.description);
        variables_apply();
        verifyErrorMessageInWinError2(item.error);
      }
  }
  //postcondition
  Log.PopLogFolder();
  variables_ok();
  toolbar_close_withoutSave();
  EndTestTransaction();
}