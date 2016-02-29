//USEUNIT ToolbarHelper
//USEUNIT ConstraintsHelper

function Values_numericConstraint()
{
  //precondition
  Log.Message("Проверка Values Numeric Constraints на допустимые и недопустимые значения.")
  toolbar_constraints();
  //test body
  constraint_add();
  pick_Constraint("Constraint3");
  
  //test body
  setType("Numeric");
  setMinValue(11);
  setMaxValue(33);
  //postcondition
  
}