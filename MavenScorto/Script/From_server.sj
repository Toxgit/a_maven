﻿//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT ImportConstraintHelper
//USEUNIT ConstraintsHelper

function From_server()
{
  //initialization
  
  //precondition
  Log.Message("Тест проверяет импорт constraints из стратегии, загруженной на сервер");
  createNewStrToolbar();
  toolbar_constraints();
  constraint_import();
  //test bodys 
  //impConstr_SelectSource(1);
  impConstr_selectRemoteStrategy("Import constraints");
  impConstr_selectAll();
  impConstr_unselectAll();
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "import")
    {
      verifyConstraintFromStrategy(item);
    }
  }
  impConstr_selectAll();
  impConstr_import();
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "import")
    {
      verifyConstraintWithCustomProperty(constraint,item);
    }
  }
  constraint.ok(); 
  toolbar_constraints();
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "import")
    {
      verifyConstraintWithCustomProperty(constraint,item);
    }
  }
  //postcondition
  constraint.ok();
  closeOneStrToolbar();
}