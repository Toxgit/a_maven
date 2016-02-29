//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
 

function check_field_constraint()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  
  //precondition
  Log.Message("Проверка полей Constraint.()");
  //openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
   for (var i=0; i< ODT.Data.Constraint.VariableCount; i++)
    {
      var item = ODT.Data.Constraint.Variables(i).Value;
      clickListRowByName(constraint, item.name);
      verifyConstraintWithCustomProperty(constraint,item);
      
    }
 
  //postcondition
   constraint.cancel();
   //closeOneStrWhithWarning();
}
