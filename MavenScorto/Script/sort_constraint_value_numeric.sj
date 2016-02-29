//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings

 
function sort_constraint_value()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  
  //precondition
  Log.Message("Проверка сортировки Value Constraint.");
  //openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test body 
  clickListRowByName(constraint, "NumericConstraint3");
  sortListByHeader(constraint.constraintValue,"Value");
  checkListItemPosition(constraint.constraintValue, "3", 0);
  checkListItemPosition(constraint.constraintValue, "4", 1);
  sortListByHeader(constraint.constraintValue,"Value");
  checkListItemPosition(constraint.constraintValue, "3", 1);
  checkListItemPosition(constraint.constraintValue, "4", 0);
  sortListByHeader(constraint.constraintValue,"Constraint values");
  checkListItemPosition(constraint.constraintValue, "3", 1);
  checkListItemPosition(constraint.constraintValue, "4", 0);
  sortListByHeader(constraint.constraintValue,"Constraint values");
  checkListItemPosition(constraint.constraintValue, "3", 0);
  checkListItemPosition(constraint.constraintValue, "4", 1);
 
  constraint.ok();
  //postcondition
  //closeOneStr();
}
