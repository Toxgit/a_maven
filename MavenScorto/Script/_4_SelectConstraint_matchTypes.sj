﻿//USEUNIT ToolbarHelper
//USEUNIT VariablesHelper
//USEUNIT SelectConstraintHelper


function SelectConstraint_matchTypes()
{
  //test bodys 
  Log.Message("Тест проверяет соответствее типов переменной и constraint");
    
  for (var i=0;i<variables.list.wRowCount; i++){
    clickRowByIndex(variables,i);
    var type = getPropertyValue("Type");
    var linked = getPropertyLinked("", i)
    if((type == "Numeric")||(type == "NumericColumn")){
      chooseProperty("Constraint name");
      variables_toSelectConstraint();
      filterList(selectConstraint, "Type", "str");
      checkEmptyList(selectConstraint);
      selectConstraint_cancel();
    }
    if( ( (type == "String")||(type == "StringColumn") )&&(linked != "Yes") ){
      chooseProperty("Constraint name");
      variables.toSelectConstraint();
      filterList(selectConstraint, "Type", "num");
      checkEmptyList(selectConstraint);
      selectConstraint.cancel();
    }
  }
}