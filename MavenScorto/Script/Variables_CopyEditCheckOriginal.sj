//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT TestLogging
//USEUNIT VariablesHelper

function  Variables_CopyEditCheckOriginal()
{
//
  //precondition
  BeginTestTransaction("User can change the copied variable and it will not affect the original varialbe");
  createNewStrategy();
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
  Log.Message("Копируем переменные");
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "edit") continue;
    clickRowByName(item.name);
    editVariableWithCostomProperty(item);
  }
  //проверка оригинала
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "copy") continue;
    logStep("Iteration "+i);
    verifyVariableWithCostomProperty(item);
  }
  //postcondition
  Log.PopLogFolder();
  variables_ok();
  toolbar_close_withoutSave();
  EndTestTransaction(); 
}