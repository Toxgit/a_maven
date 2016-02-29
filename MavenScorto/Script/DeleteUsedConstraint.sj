//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
//USEUNIT WindowErrorHelper
 

function DeleteUsedConstraint()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  var info = new WindowInformation.WindowInformation();
  var warning = new WindowWarning.WindowWarning();
  
  //precondition
  Log.Message("Проверка проверка удаления used Constraint");
  //openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
  clickListRowByName(constraint, "Constraint0");
  constraint.del();
  info.ok();
  warning.ok();
  if (listElementExists(constraint, "Constraint0")) Log.Checkpoint("Constraint 'Constraint0' - exists");
  //postcondition
  constraint.ok();
  closeOneStrWhithWarning();
}
