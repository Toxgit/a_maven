//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT WindowErrorHelper

function Bulk_Editing_constraint_linked(){
  //test body
  Log.Message("Тест: Bulk Editing constraint Linked");
  for(var i=0; i<ODT.Data.BulkEditing.VariableCount; i++){
    var item = ODT.Data.BulkEditing.Variables(i).Value;
    if (item.options != "constraintLinked") continue;
    if (item.filter == "") continue;
    toolbar_variables();
    filterList(variables, "Name", item.filter);
    clickRowByName(item.name);
    variables_selectAll();
      
    chooseProperty("Constraint name");
    setConstraintName(item.constraintName);
    chooseProperty("Name");
    xtraError_ok();
    chooseProperty("Name");
  }
  //postcondition
   variables_ok();
}