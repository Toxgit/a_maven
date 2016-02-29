﻿//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT OpenStrHelper

function Property_InitialValue()
{
  //initialization
  var testStrategyPath = "Check_InitialValue.strat";
  //precondition
  Log.Message("Тест проверки intial значения переменных.")
  openStrategy_quickly(testStrategyPath);
  toolbar_variables();
  //test bodys
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "checking initial value") continue;
    if (item.expectedResult == "Fail"){
      clickRowByName(item.name);
      chooseProperty("Initial value");
      setDropDownList(item.initialValue);
      clickRowByName(item.name);
      checkPropertiForSelectedVariable("Initial value","NULL");
    }else{//для Pass
      clickRowByName(item.name);
      chooseProperty("Initial value");
      setDropDownList(item.initialValue);
      clickRowByName(item.name);
      checkPropertiForSelectedVariable("Initial value",item.initialValue);
    }
  }
  //postcondition
  variables_ok();
  toolbar_close_withoutSave();
}