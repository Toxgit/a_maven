﻿//USEUNIT SelectConstraintHelper
//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT ConstraintsHelper


function to_ManageConstraints(){
  //test body
  Log.Message("Тест: Opens Strategy Constraint dialog");
  
  clickRowByName("String2");
  chooseProperty("Constraint name");
  variables_toSelectConstraint();
  selectConstraint_toManageConstraints();
  
  if (constraint.alias.Exists){
    Log.Checkpoint("Strategy Constraint dialog has opened")
    constraint_cancel();
  }
  //postcondition
  selectConstraint_cancel();
  variables_ok();
  toolbar_close_withoutSave()
}