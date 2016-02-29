﻿//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
 

function AddNewString()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  
  
  //precondition
  Log.Message("Проверка добавления нового constraint");
  openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
  listElementNotExists(constraint, "Constraint2");
  constraint_add();
  pick_Constraint("Constraint2");
  setStrConstraint("lll");
  pick_Constraint("Constraint2");
 
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "addNew")
    {
      clickListRowByName(constraint, item.name);
      verifyConstraintWithCustomProperty(constraint,item);
    }    
  }
  //postcondition
  closeScreenWithWarning(constraint,"constraint");
  //closeOneStr();
}