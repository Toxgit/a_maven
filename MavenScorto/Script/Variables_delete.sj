﻿//USEUNIT VariablesHelper
//USEUNIT OpenStrHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowErrorHelper

function Variables_delete()
{
  //initialization
  var testStrategyPath = "Delete_Variable.strat";
  //precondition
  openStrategy_quickly(testStrategyPath);
  toolbar_variables();
  
  //test bodys
  //1 noLinked noUsed
  clickRowByName("VarBinary");
  variables_delete();
  Log.Message("1. noLinked noUsed");
  Regions.XtraMessageBoxNolinkedNoused.Check(Regions.CreateRegionInfo(xtraInfo.alias, 2, 16, 306, 54, false), false, false, 1652, 25);
  xtraInfo_no();
  checkingExistsVariables("VarBinary");
  //2 Linked noUsed
  clickRowByName("OutputDataLayerName");
  variables_delete();
  Log.Message("2. Linked noUsed");
  Regions.XtraMessageBoxLinked.Check(xtraInfo.alias, false, false, 9579, 25);
  xtraInfo_no();
  checkingExistsVariables("OutputDataLayerName");
  //3 noLinked Used
  clickRowByName("VarInput");
  variables_delete();
  Log.Message("3. noLinked Used");
  Regions.XtraMessageBoxUsed.Check(xtraInfo.alias, false, false, 15089, 34);
  xtraInfo_no();
  checkingExistsVariables("VarInput");
  //4 Linked Used
  clickRowByName("specialVarLinkedUsed");
  variables_delete();
  Log.Message("4. Linked Used");
  Regions.XtraMessageBoxLinkedUsed.Check(xtraInfo.alias, false, false, 6640, 25);
  xtraInfo_no();
  checkingExistsVariables("specialVarLinkedUsed");
    
  //Delete several variables at once
  Log.Message("Delete several variables at once");
  //1 noLinked noUsed
  filterVariables("Name", "var");
  filterVariables("Type", "str");
  clickRowByIndex(variables,0);
  variables_selectAll();
  variables_delete();
  Regions.DeleteSeveralVarNolinkedNoused.Check(xtraInfo.alias, false, false, 4081, 25);
  xtraInfo_no();
  //2 Linked Used
  variables_cancel();
  toolbar_variables();
  variables_selectAll();
  variables_delete();
  Regions.DeleteSeveralAll.Check(xtraInfo.alias, false, false, 7001, 17);
  xtraInfo_no();
  variables_unSelectAll();
 
  //delete -> OK
  clickRowByName("OutputDataLayerName");
  variables_delete();
  xtraInfo_ok();
  checkingNoExistsVariables("OutputDataLayerName");
  //delete several -> OK
  variables_selectAll();
  variables_delete();
  xtraInfo_ok();
  checkEmptyVarList ();

  //postcondition
  variables_cancel();
  toolbar_close();
}

function checkingExistsVariables(variable){
  if (variableExists(variable))Log.Checkpoint("После нажатия delet и в диалоговом окне No, переменная не удалилась.");
  else Log.Warning("Переменная удалилась.");
}
function checkingNoExistsVariables(variable){
  if (!variableExists(variable))Log.Checkpoint("После нажатия delet и в диалоговом окне Ok, переменная удалилась.");
  else Log.Warning("Переменная не удалилась.");
}