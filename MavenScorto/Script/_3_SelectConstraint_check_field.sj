//USEUNIT SelectConstraintHelper
//USEUNIT ToolbarHelper
//USEUNIT OpenStrHelper
//USEUNIT VariablesHelper
//USEUNIT ConstraintsHelper


function Constraint_check_field()
{
  //test bodys
  Log.Message("Тест проверяет поля constraint, что заполнены, согласно тестовым данным");
  
  clickRowByName("String2");
  chooseProperty("Constraint name");
  variables_toSelectConstraint();
  
  for (var i=0; i< ODT.Data.Constraint.VariableCount; i++){
    var item = ODT.Data.Constraint.Variables(i).Value;
    if (item.type == "String"){
      verifyConstraintWithCustomProperty(selectConstraint,item);
    }
  }
  selectConstraint_cancel();
  clickRowByName("Numeric1");
  chooseProperty("Constraint name");
  variables_toSelectConstraint();
  
  for (var i=0; i< ODT.Data.Constraint.VariableCount; i++){
    var item = ODT.Data.Constraint.Variables(i).Value;
    if (item.type == "Numeric"){
      verifyConstraintWithCustomProperty(selectConstraint,item);
    }
  }
  selectConstraint_cancel();
}
