//USEUNIT ToolbarHelper
//USEUNIT OpenStrHelper
//USEUNIT VariablesHelper
//USEUNIT WindowErrorHelper


function Bulk_Editing_constraint(){
  //initialization
  var testStrategyPath = "Bulk_editing.strat";
  //precondition
  openStrategy_quickly(testStrategyPath);  
  //test body
  Log.Message("Тест: Bulk Editing constraint");
  
  for(var i=0; i<ODT.Data.BulkEditing.VariableCount; i++){
    var item = ODT.Data.BulkEditing.Variables(i).Value;
    if (item.options != "constraint") continue;
    if (item.filter == "") continue;
    toolbar_variables();
    filterList(variables, "Name", item.filter);
    clickRowByName(item.name);
    variables_selectAll();
      
    chooseProperty("Constraint name");
    setConstraintName(item.constraintName);
    variables_ok();
  }
  toolbar_variables();// проверка 
  for(var i=0; i<ODT.Data.BulkEditing.VariableCount; i++){
    var item = ODT.Data.BulkEditing.Variables(i).Value;
    if (item.options != "constraint") continue;
    clickRowByName(item.name);
    checkPropertiForSelectedVariable("Constraint name", item.constraintName);
    checkPropertiForSelectedVariable("Constraint values",item.constraintValue);
  }
  //postcondition
  variables.cancel();
}