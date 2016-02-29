//USEUNIT TestLogging
//USEUNIT NewStrategyHelper
//USEUNIT ToolbarHelper

function newStrategy_unique_name()
{
  //preconditions
  BeginTestTransaction("unique_name_Strategy","тест проверяет уникальность Name открытых стратегии.");
   
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "unique among open strategies") continue; 
    logStep("Iteration "+i);
    toolbar_newStr();
    newStrategy_fillInOk(item);
    toolbar_newStr();
    newStrategy_fillInOk(item);
    newStrategy_verify(item);
  }
  EndTestTransaction();
}