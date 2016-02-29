﻿//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
 

function Delete_No()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  var info = new WindowInformation.WindowInformation();
  var warning = new WindowWarning.WindowWarning();
  
  //precondition
  Log.Message("Проверка проверка не удаления Constraint по кнопке No");
  openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
  clickListRowByName(constraint, "Constraint0");
  constraint.del();
  info.no();
  
  if (listElementExists(constraint, "Constraint0")) Log.Checkpoint("Constraint 'Constraint0' - exists");
  //postcondition
  constraint.ok();
  //closeOneStrWhithWarning();
}
