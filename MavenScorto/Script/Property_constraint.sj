﻿//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT OpenStrHelper

function Property_constraint()
{
  //initialization
  var testStrategyPath = "Constraint.strat";
  //precondition
  Log.Message("Тест проверяет наличие constraint")
  openStrategy_quickly(testStrategyPath);
  toolbar_variables();
  //test bodys
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++){
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options != "constraint") continue;
    clickRowByName(item.name);
    chooseProperty("Constraint name");
    setConstraintName(item.constraintName);
    clickRowByName(item.name);
    checkPropertiForSelectedVariable("Constraint name",item.constraintName);
    checkPropertiForSelectedVariable("Constraint values",item.constraintValue);
  }
  //postcondition
  variables_ok();
  toolbar_close_withoutSave();  
}
