//USEUNIT ConstraintsHelper
//USEUNIT ToolbarHelper


function sort_constraint_value_numeric()
{
  //precondition
  Log.Message("Проверка сортировки Value Constraint для строкового cinstraint.");
  toolbar_constraints();
  //test body
  pick_Constraint("StringConstraint3");
  sortListByHeader(constraint.constraintValue,"Constraint Values");
  checkItemPosition(constraint.constraintValue, "Constraint Values", "aaa", 0);
  sortListByHeader(constraint.constraintValue,"Constraint Values");
  checkItemPosition(constraint.constraintValue, "Constraint Values", "aaa", 2);
  //postcondition
  constraint_ok();
}