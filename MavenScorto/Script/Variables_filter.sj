﻿//USEUNIT OpenStrHelper
//USEUNIT VariablesHelper
//USEUNIT ToolbarHelper

function Variables_filter(){

  var testStrategyPath = "Main dialog area";
  
  Log.Message("Проверка фильтрацию переменных.");
  openStrategy_quickly(testStrategyPath);
  toolbar_variables();

  //фильтр поля Name
  filterVariables("Name", "vard");
  checkVarPosition("VarDate", 0);
  checkVarPosition("VarDateCol", 1);
  filterVariablesClear();
  //фильтр поля Type
  filterVariables("Type", "num");
  checkVarPosition("VarInput", 0);
  checkVarPosition("VarLocal", 2);
  filterVariablesClear();
  //фильтр поля Direction
  filterVariables("Direction", "in");
  checkVarPosition("VarInput", 0);
  checkVarPosition("VarInputOutput", 1);
  filterVariablesClear();
  //фильтр поля Linked
  filterVariables("Linked", "no");
  checkVarPosition("VarInput", 4);
  checkVarPosition("VarInputOutput", 5);
  filterVariablesClear();
  
  //postcondition
  variables_ok();
  toolbar_close();
}

function verifySortOnlyForThisTest(variable,position) //проверка проходит по индексу переменной в конкретной стратегии
{
   if ( listFindVar(variable) == position) Log.Checkpoint("Отсортировано правильно");
   else Log.Warning("Отсортировано неправильно("+variable+" не на "+position+" месте)");
}
