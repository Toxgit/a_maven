﻿//USEUNIT OpenStrHelper
//USEUNIT VariablesHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowErrorHelper

function Variables_uselectSelectAll (){
 
  //precondition
  var testStrategyPath = "Main dialog area.strat";
  
  Log.Message("Проверка кнопок selectAll, unselect..");
  openStrategy_quickly(testStrategyPath);
  toolbar_variables();
 
  //test body  
  variables_unSelectAll();
  checkDisable(variables.alias.Delete);
  
  variables_selectAll();
  variables_delete();
  
  xtraInfo_ok();
  checkEmptyVarList();
  
//postcondition
  variables_cancel();
  toolbar_close(); 
}