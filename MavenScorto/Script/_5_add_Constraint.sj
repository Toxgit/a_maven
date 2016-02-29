﻿//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT SelectConstraintHelper


function add_Constraint()
{
  //test bodys
  Log.Message("Тест проверяет добавление constraint переменной");
  
  clickRowByName("StringColumn1");
  chooseProperty("Constraint name");
  variables_toSelectConstraint();
  clickListRowByName(selectConstraint, "Constraint1");
  selectConstraint_ok();
  
  clickRowByName("StringColumn1");
  checkPropertiForSelectedVariable("Constraint name", "Constraint1");
  checkPropertiForSelectedVariable("Constraint values","aaa;bbb;ccc");
}
