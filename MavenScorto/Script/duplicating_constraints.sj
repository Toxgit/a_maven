﻿//USEUNIT ToolbarHelper
//USEUNIT OpenStrHelper
//USEUNIT ConstraintsHelper
//USEUNIT ImportConstraintHelper
//USEUNIT WindowErrorHelper

function Duplicating_constraints()
{
  //initialization
  
  //precondition
  Log.Message("Тест проверяет невозможность импортировать дубликаты constraints");
  openStrByName("Import constraints.strat");
  toolbar_constraints();
  clickListRowByName(constraint, "aaa");
  constraint.del();
  info_ok();
  info_ok();
  constraint_import();
  //test body 
  impConstr_selectRemoteStrategy("Import constraints");
  impConstr_selectAll();
  impConstr_import();
  warning_ok();
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "importDelete")
    {
      clickListRowByName(constraint,item.name);
      constraint.del();
      info_ok();
      info_ok();
    }
  }
  if(listEmpty(constraint))Log.Checkpoint("Constraint 'aaa' импортирован, дубликатов нет.");
  else Log.Warning("Strategy содержит лишние ограничения");
  
  //postcondition
  constraint_ok();
  toolbar_close_withoutSave();
}