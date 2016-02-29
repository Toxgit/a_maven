﻿//USEUNIT ToolbarHelper
//USEUNIT ConstraintsHelper

function addNewNumeric()
{
  //initialization
  
  //preconditions
  toolbar_constraints();
  constraint_add();
  pick_Constraint("Constraint2");
  
  //test body
  setType("Numeric");
  setMinValue(11);
  setMaxValue(33);
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "addNewNumeric")
    {
      clickListRowByName(constraint, item.name);
      verifyConstraintWithCustomProperty(constraint,item);
    }    
  }
  //postcondition
  closeScreenWithWarning(constraint,"constraint");
  toolbar_close();
}