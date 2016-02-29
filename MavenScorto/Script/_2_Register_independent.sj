//USEUNIT TestLogging
//USEUNIT NewStrategyHelper
//USEUNIT ToolbarHelper

function newStrategy_register_independent()
{
  //preconditions
  BeginTestTransaction("Register_independent","Проверка Register_independent.");
   
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "is register independent") continue;
    logStep("Iteration "+i);
    toolbar_newStr();
    newStrategy_fillInOk(item);
    item.name = aqString.ToUpper(item.name);
    toolbar_newStr();
    newStrategy_fillInOk(item);
    newStrategy_verify(item);
  }
  EndTestTransaction();
}