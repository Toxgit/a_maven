﻿//USEUNIT OpenStrHelper
//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper

function Property_direction(){
  //precondition
  var testStrategyPath = "Main dialog area.strat";//путь к стратегии для теста
  Log.Message("Проверка direction  переменных.");
  openStrategy_quickly(testStrategyPath);
  
  //test body
  toolbar_variables();
  
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "direction") continue;
    
    verifyDirection(item.direction);
  }
  //postcondition
  variables_ok();
  toolbar_close();
}