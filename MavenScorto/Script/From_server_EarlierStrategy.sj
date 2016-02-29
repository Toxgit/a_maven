//USEUNIT ToolbarHelper
//USEUNIT NewStrategyHelper
//USEUNIT ImportConstraintHelper
//USEUNIT ConstraintsHelper

function From_server_EarlierStrategy()
{
   //initialization
   
  //precondition
  Log.Message("Тест проверяет импорт constraints из нанней версии стратегии, загруженной на сервер");
  createNewStrToolbar();
  toolbar_constraints();
  constraint_import();
  //test bodys
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++)
  {
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.options == "import constraints")
    {
      impConstr_selectEarlierRemoteStrategy(item);
      impConstr_selectAll();
      for (var j=0; j< ODT.Data.Constraint_copy.VariableCount; j++)
      {
        var item = ODT.Data.Constraint_copy.Variables(j).Value;
        if (item.options == "importEarlierStr")
        {
          verifyConstraintFromStrategy(item);
        }
      }
    }
  }
  //postcondition
  impConstr_cancel();
  constraint.ok();
  closeOneStrToolbar();
} 