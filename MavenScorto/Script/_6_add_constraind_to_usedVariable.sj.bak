//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT WindowErrorHelper
//USEUNIT SelectConstraintHelper

function add_constraind_to_usedVariable(){
  //test body
  Log.Message("Тест проверяет добавление constraint USED переменной");
  
  clickRowByName("String1");
  chooseProperty("Constraint name");
  variables_toSelectConstraint();
  clickListRowByName(selectConstraint, "Constraint1");
  selectConstraint_ok();
  xtraError_ok();
  
  clickRowByName("String1");
  checkPropertiForSelectedVariable("Constraint name", "");
  checkPropertiForSelectedVariable("Constraint values","");
}
