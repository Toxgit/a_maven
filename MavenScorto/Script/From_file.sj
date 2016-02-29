﻿//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT OpenStrHelper
//USEUNIT ImportConstraintHelper
//USEUNIT ConstraintsHelper

function From_file()
{
   //initialization
  
  //precondition
  Log.Message("Тест проверяет импорт constraints из стратегии на локальном компьютере");
  createNewStrToolbar();
  toolbar_constraints();
  constraint_import();
  //test body 
  impConstr_SelectSource(2);
  impConstr_browse();
  enterPathAndOpenStr("Import constraints.strat");
  impConstr_load();
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