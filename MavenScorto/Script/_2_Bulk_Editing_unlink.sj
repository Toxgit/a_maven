//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper


function bulkEditing()
{
  //test body
  Log.Message("Тест: Bulk Editing");
  
  for(var i=0; i<ODT.Data.BulkEditing.VariableCount; i++){
    var item = ODT.Data.BulkEditing.Variables(i).Value;
    if (item.options != "unlink") continue;
    if (item.filter == "") continue;
    toolbar_variables();
    filterList(variables, "Name", item.filter);
    clickRowByName(item.name);
    variables_selectAll();
    editVariableWithCostomProperty(item);
    variables_ok();
  }
  toolbar_variables();// проверка 
  for(var i=0; i<ODT.Data.BulkEditing.VariableCount; i++){
    var item = ODT.Data.BulkEditing.Variables(i).Value;
    if (item.options != "unlink") continue;
    verifyVariableWithCostomProperty(item);
  }
  //postcondition
  variables.cancel();
}