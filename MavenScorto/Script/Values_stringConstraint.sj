//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT ConstraintsHelper

function  Values_stringConstraint()
{
  //precondition
  Log.Message("Проверка Values Constraints на допустимые и недопустимые значения.");
  createNewStrToolbar();
  //test body
  toolbar_constraints();
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "value_string")
    {
      constraint_add();
      pick_Constraint(item.name);
      setStrConstraint(item.values);
      pick_Constraint(item.name);
      verifyConstraintWithCustomProperty(constraint,item);
    } 
  } 
  constraint_add();
  pick_Constraint("Constraint2");
  setStrConstraint("unique");
  setStrConstraint_fail("unique");
  Log.Checkpoint("value must be unique within constraint");
  
  constraint_add();
  pick_Constraint("Constraint3");
  constraintValue_plus();
  constraintValue_plus();
  winError2_exists_ok();
  constraintValue_cross();
  deleteNotlinkedConstraint();
  
  Log.Checkpoint("value must not be empty");
  //postcondition
  constraint_ok();
  //toolbar_close_withoutSave();
}  
  