//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT ImportConstraintHelper
//USEUNIT ConstraintsHelper

function Sort()
{
   //initialization
   
  //precondition
  Log.Message("Тест проверяет сортировку constraints в диалоговом окне Import Constraint");
  /*createNewStrToolbar();
  toolbar_constraints();*/
  constraint_import();
  //test body
  impConstr_selectRemoteStrategy("Import constraints");
  sortListByHeader(importConstraint,"Selected");
  checkListItemPosition(importConstraint, "aaa", 0);
  sortListByHeader(importConstraint,"Selected");
  checkListItemPosition(importConstraint, "aaa", 0);
  
  sortListByHeader(importConstraint,"Name");
  checkListItemPosition(importConstraint, "aaa", 0);
  sortListByHeader(importConstraint,"Name");
  checkListItemPosition(importConstraint, "aaa", 8);
  
  sortListByHeader(importConstraint,"Type");
  checkListItemPosition(importConstraint, "Import1", 7);
  sortListByHeader(importConstraint,"Type");
  checkListItemPosition(importConstraint, "Import1", 1);
  
  sortListByHeader(importConstraint,"Values");
  checkListItemPosition(importConstraint, "hhh", 2);
  sortListByHeader(importConstraint,"Values");
  checkListItemPosition(importConstraint, "hhh", 6);
  
  //postcondition
  impConstr_import();
  constraint.ok();
  closeOneStrToolbar();
}   
   