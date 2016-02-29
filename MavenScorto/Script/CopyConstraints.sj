//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
 

function CopyConstraints()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  
  //precondition
  Log.Message("Проверка Copy Constraint");
  openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
  filterList(constraint, "Name", "copy");
  clickRowByIndex(constraint,0);
  constraint.selectAll();
  constraint.copy();
  constraint.copy();
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
  // closeOneStrWhithWarning();
}
