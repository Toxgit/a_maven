//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT ImportConstraintHelper
//USEUNIT ConstraintsHelper

function Cance_Import()
{
  //initialization
   
  //precondition
  Log.Message("Отмена импорта по Cancel");
  createNewStrToolbar();
  toolbar_constraints();
  constraint_import();
  //test body
  impConstr_selectRemoteStrategy("Import constraints");
  impConstr_selectAll();
  impConstr_cancel();
  checkEmptyList(constraint);
  
  //postcondition
  constraint.ok();
  closeOneStrToolbar();
}