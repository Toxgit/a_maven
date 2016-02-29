﻿//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT ImportConstraintHelper
//USEUNIT ConstraintsHelper

function Filter()
{
   //initialization
   
  //precondition
  Log.Message("Тест проверяет фильтрацию constraints в диалоговом окне Import Constraint");
  createNewStrToolbar();
  toolbar_constraints();
  constraint_import();
  //test body
  impConstr_selectRemoteStrategy("Import constraints");
  setWidthCulumnSelected();
  selectConstraint("ccc");
  selectConstraint("hhh");
  selectConstraint("ww23");
  selectConstraint("jjj");
  selectConstraint("ccc");
  filterColumnSelected(0);  
  clickListRowByName(importConstraint, "aaa");
  clickListRowByName(importConstraint, "ccc");
  filterColumnSelected(1);  
  clickListRowByName(importConstraint, "jjj");
  clickListRowByName(importConstraint, "hhh");  
  filterColumnSelected(2);  
  clickListRowByName(importConstraint, "aaa");
  clickListRowByName(importConstraint, "hhh"); 
  
  filterList(importConstraint, "Name", "impo"); 
  clickListRowByName(importConstraint, "Import1");
  filterList(importConstraint, "Name", "");
  filterListClear(importConstraint);
  filterList(importConstraint, "Type", "num"); 
  clickListRowByName(importConstraint, "nn");
  filterList(importConstraint, "Type", ""); 
  filterListClear(importConstraint);
  filterList(importConstraint, "Values", "5"); 
  clickListRowByName(importConstraint, "hhh");
  filterList(importConstraint, "Values", ""); 
  filterListClear(importConstraint);
  Log.Checkpoint("Фильтрация проверена")
  //postcondition
  impConstr_import();
}   
   