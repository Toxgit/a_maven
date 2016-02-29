//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
 

function OkAndCancelButtons()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  
  //precondition
  Log.Message("Проверка ok and cancel buttons Constraint");
  openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
  filterList(constraint, "Name", "copy");
  clickRowByIndex(constraint,0);
  constraint.selectAll();
  constraint.copy();
  constraint.copy();
  closeScreenWithWarning(constraint,"constraint");//закрываем по cancel
  toolbar.constraint();
  
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "checking copy")
    {
      listElementNotExists(constraint, item.name);
    }
  }
  filterList(constraint, "Name", "copy");
  clickRowByIndex(constraint,0);
  constraint.selectAll();
  constraint.copy();
  constraint.copy();
  constraint.ok();//закрываем по ok
  toolbar.constraint();
  
  for (var i=0; i< ODT.Data.Constraint_copy.VariableCount; i++)
  {
    var item = ODT.Data.Constraint_copy.Variables(i).Value;
    if (item.options == "checking copy")
    {
      verifyConstraintWithCustomProperty(constraint,item);
    }
  }
  //postcondition
   constraint.ok();
   closeOneStrWhithWarning();
}
