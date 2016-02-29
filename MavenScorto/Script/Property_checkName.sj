//USEUNIT NewStrategyHelper
//USEUNIT TestLogging
//USEUNIT VariablesHelper
//USEUNIT ToolbarHelper

function Property_checkName(){
  //precondition
  BeginTestTransaction("Проверка Name переменной.");
  
  //test body
  createNewStrategy();
  toolbar_variables();
  
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "check name") continue;
      logStep("Iteration "+i);
      if(item.expectedResult == "Pass"){
        variables_add();
        setVarNameLikeUser(item.name);
        variables_apply();
        if (variableExists(item.name))Log.Checkpoint("Переменная с Name = "+item.name+" создана.");
        else Log.Warning("Переменная с Name = "+item.name+" не создана.");
      }else{//действия для тестов Fail 
        variables_add();
        setVarNameLikeUser(item.name);
        variables_apply();
        if (verifyName_ErrorExists()) propertiesGridKeybord("[Esc]");
      }
  }
  //postcondition
  Log.PopLogFolder();
  variables_ok();
  toolbar_close_withoutSave();
  EndTestTransaction();
}

