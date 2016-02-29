//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT WindowErrorHelper


function BulkEditingLinked(){
  //test body
  Log.Message("Тест: Bulk Editing Linked");
  for(var i=0; i<ODT.Data.BulkEditing.VariableCount; i++){
    var item = ODT.Data.BulkEditing.Variables(i).Value;
    if (item.options != "linked") continue;
    if (item.filter == "") continue;
    toolbar_variables();
    filterList(variables, "Name", item.filter);
    clickRowByName(item.name);
    variables_selectAll();
      
    chooseProperty("Name");
    setValueToField(item.newName);
    chooseProperty("Type");
    setDropDownType(item.description);
    xtraError_ok();
    chooseProperty("Description");
    setValueToField(item.description);
    chooseProperty("Direction");
    setDropDownList(item.direction);
    chooseProperty("Initial value");
    setDropDownList(item.initialValue);
    variables_apply();
    variables_ok();
  }
  toolbar_variables();// проверка 
  for(var i=0; i<ODT.Data.BulkEditing.VariableCount; i++){
    var item = ODT.Data.BulkEditing.Variables(i).Value;
    if (item.options != "linked") continue;
    verifyVariableWithCostomProperty(item);
  }
  //postcondition
  variables.cancel();
  toolbar_close_withoutSave();
}