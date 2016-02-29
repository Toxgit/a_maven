//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
//USEUNIT WindowError2


function Name__unique_register_s()
{
   //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  var warning = new WindowWarning.WindowWarning();
 
  
  //precondition
  Log.Message("Проверка Name constraint (unique,register,$)");
  openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  
  //test body
  constraint.add();
  sortListByHeader(constraint,"Values");
  clickRowByIndex(constraint,0);
  chooseNameOrType(constraint,"Name");
  setName(constraint,"Constraint0");
  chooseNameOrType(constraint,"Type");
  if (!warning.alias.Exists) Log.Warning("окно с ошибкой не появилось.");
  else 
    {
      warning.ok();
      Log.Checkpoint("Constraint  не создан."); 
    }
  clickRowByIndex(constraint,0);
  chooseNameOrType(constraint,"Name");
  setName(constraint,"CoNsTrAint0");
  chooseNameOrType(constraint,"Type");
  if (!warning.alias.Exists) Log.Warning("окно с ошибкой не появилось.");
  else 
    {
      warning.ok();
      Log.Checkpoint("Constraint  не создан."); 
    }
  clickRowByIndex(constraint,0);
  chooseNameOrType(constraint,"Name");
  setName(constraint,"$constraint22");
  chooseNameOrType(constraint,"Type");
  
  if (listElementExists(constraint, "$constraint22"))Log.Checkpoint("Constraint создан.");
        else Log.Warning("Constraint не создан.");
  //postcondition
  clickRowByIndex(constraint,0);
  closeScreenWithWarning(constraint,"constraint");
  closeOneStr();
  //closeOneStrWhithWarning();
}
