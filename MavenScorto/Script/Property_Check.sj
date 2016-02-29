//USEUNIT ToolbarHelper
//USEUNIT OpenStrHelper
//USEUNIT VariablesHelper

function Property_Check(){
  //initialization
  var testStrategyPath = "Check_Properties.strat";
  //precondition
  openStrategy_quickly(testStrategyPath);
  toolbar_variables();
  //test bodys
  Log.Message("Проверка Used In Basic Nodes.");//1
  clickRowByName("VarInput");
  checkPropertiForSelectedVariable("Used in basic nodes", "Yes");
  clickRowByName("VarDate");
  checkPropertiForSelectedVariable("Used in basic nodes", "No");
  Log.Message("Проверка свойств по умолчанию.");//2
  variables_add();
  variables_apply();
  clickRowByName("Variable0");
  checkPropertiForSelectedVariable("Name", "Variable0");
  checkPropertiForSelectedVariable("Used in basic nodes", "No");
  checkPropertiForSelectedVariable("Description", "");
  checkPropertiForSelectedVariable("Type", "Numeric");
  checkPropertiForSelectedVariable("Direction", "Local");
  checkPropertiForSelectedVariable("Initial value", "NULL");
  Log.Message("Проверка свойства Linked для переменной OutputDataLayerName");//3
  checkLinked("OutputDataLayerName", "Yes");
  checkLinked("VarBinary", "No");
  //postcondition
  variables_ok();
  toolbar_close_withoutSave();
}
