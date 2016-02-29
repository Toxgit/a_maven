//USEUNIT OpenStrHelper
//USEUNIT VariablesHelper
//USEUNIT WindowHelper
//USEUNIT ToolbarHelper

function Variables_sort(){
  var testStrategyPath = "Main dialog area.strat";
  
  Log.Message("Проверка сортировки переменных.");
  openStrategy_quickly(testStrategyPath);
  toolbar_variables();
  maximizeWin(variables);//maximizeWin
  restoreWin(variables);//restoreWin
  sortListByHeader(variables,"Name");
  verifySortOnlyForThisTest("VarDateCol",3);
  sortListByHeader(variables,"Name");
  verifySortOnlyForThisTest("VarDateCol",7);
  sortListByHeader(variables,"Type");
  verifySortOnlyForThisTest("VarDateCol",9);
  sortListByHeader(variables,"Type");
  verifySortOnlyForThisTest("VarDateCol",1);
  sortListByHeader(variables,"Direction");
  verifySortOnlyForThisTest("VarDateCol",6);
  sortListByHeader(variables,"Direction");
  verifySortOnlyForThisTest("VarDateCol",4);
  sortListByHeader(variables,"Linked");
  verifySortOnlyForThisTest("VarDateCol",3);
  sortListByHeader(variables,"Linked");
  verifySortOnlyForThisTest("VarDateCol",7);
  variables_ok();
  toolbar_close();
}

function verifySortOnlyForThisTest(variable,position) //проверка проходит по индексу переменной в конкретной стратегии
{
   if ( listFindVar(variable) == position) Log.Checkpoint("Отсортировано правильно");
   else Log.Warning("Отсортировано неправильно("+variable+" не на "+position+" месте)");
}
