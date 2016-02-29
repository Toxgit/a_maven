//USEUNIT Constraint
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings

 
function FilterConstraint()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  //precondition
  Log.Message("Проверка фильтрации Constraint.");
 //openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
  filterList(constraint, "Name", "num");
  checkListItemPosition(constraint, "NumericConstraint2", 0);
  checkListItemPosition(constraint, "NumericConstraint3", 1);
  filterListClear(constraint);

  filterList(constraint, "Type", "str");
  checkListItemPosition(constraint, "Constraint4", 1);
  checkListItemPosition(constraint, "StringConstraint2", 3);
  filterListClear(constraint);
  
  filterList(constraint, "Values", "aa");
  checkListItemPosition(constraint, "Constraint1", 0);
  checkListItemPosition(constraint, "StringConstraint3", 1);
  filterListClear(constraint);
  
  filterList(constraint, "Used", "yes");
  checkListItemPosition(constraint, "Constraint0", 0);
  checkListItemPosition(constraint, "Constraint1", 1);
  filterListClear(constraint);
  //postcondition
  constraint.cancel();
  //closeOneStrWhithWarning();
}
