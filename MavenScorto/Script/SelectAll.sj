//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
 

function selectAll()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  var info = new WindowInformation.WindowInformation();
  
  //precondition
  Log.Message("Проверка кнопок selectAll и unselect");
  //openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
  constraint.unSelectAll();
  checkDisable(constraint.alias.Delete);
  
  filterList(constraint, "Used", "no");
  clickRowByIndex(constraint,0);
  constraint.selectAll();
  constraint.del();
  info.ok();
  info.ok();
  checkEmptyList(constraint);
  //postcondition
   constraint.ok();
   closeOneStrWhithWarning();
}
