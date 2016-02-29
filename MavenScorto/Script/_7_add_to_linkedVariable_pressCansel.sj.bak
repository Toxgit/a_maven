//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT WindowErrorHelper
//USEUNIT SelectConstraintHelper

function add_to_linkedVariable_pressCansel(){
  //test body
  Log.Message("Тест: добавляем constraint для Linked переменной и жмем Cancel");
  
  clickRowByName("String1");
  chooseProperty("Constraint name");
  variables_toSelectConstraint();
  clickListRowByName(selectConstraint, "Constraint1");
  selectConstraint_cancel();
  if (xtraError.alias.Exists){
    Log.warning("Jira SC-192 убрать сообщение о невозможности добавить constraint для Linked переменной при нажатии Cancel");
    xtraError_ok();
  }
  
  clickRowByName("String1");
  checkPropertiForSelectedVariable("Constraint name", "");
  checkPropertiForSelectedVariable("Constraint values","");
}