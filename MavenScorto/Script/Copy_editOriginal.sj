﻿//USEUNIT OpenStrHelper
//USEUNIT ConstraintsHelper
//USEUNIT ToolbarHelper

function Copy_editOriginal()
{
 //precondition
  Log.Message("Проверка редактирования Constraint и это не повлияет на Копии");
  //openStrByName("Constraint2.strat");
  toolbar_constraints();
  //test bodys 
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "edit Num original")
    {
      editNumericConWithoutType(item);
      pick_Constraint(item.name);
      constraint_copy();
      Log.Checkpoint("Constraint is edited and copy.");
    }
    else if (item.options == "edit Str original")
          {
          editStrConWithoutType(item);
          pick_Constraint(item.name);
          constraint_copy();
          Log.Checkpoint("Constraint is edited and copy.")
          }
  }
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "checking copy" || item.options == "checking copy2")
    {
      verifyConstraintWithCustomProperty(constraint,item);
    }
  } 
 //postcondition
  constraint_ok();
  toolbar_close_withoutSave();
}