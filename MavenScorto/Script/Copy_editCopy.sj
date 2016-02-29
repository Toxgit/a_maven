﻿//USEUNIT OpenStrHelper
//USEUNIT ConstraintsHelper
//USEUNIT ToolbarHelper

function Copy_editCopy()
{  
  //precondition
  Log.Message("Проверка редактирования скопироанных Constraint и это не повлияет на оригинал");
  //openStrByName("Constraint2.strat");
  toolbar_constraints();
  //test bodys 
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "edit Num copy"){editNumericConWithoutType(item); Log.Checkpoint("Constraint is edited.")}
    else if (item.options == "edit Str copy"){editStrConWithoutType(item); Log.Checkpoint("Constraint is edited.")}
  }
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "copy")
    {
      verifyConstraintWithCustomProperty(constraint,item);
    }
  }
  //postcondition
  closeScreenWithWarning(constraint,"constraint");
  //closeOneStrWhithWarning();
}
