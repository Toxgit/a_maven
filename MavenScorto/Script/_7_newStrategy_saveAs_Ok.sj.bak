//USEUNIT WindowSaveAsHelper
//USEUNIT NewStrategyHelper
//USEUNIT ToolbarHelper

function newStrategy_saveAs_Ok()
{
  //preconditions
  Log.Message("Проверяем сохранение стратегии при закрытии."); 
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "saveAs Ok") continue; 
    toolbar_newStr();
    newStrategy_fillInOk(item);
    toolbar_close_andSave();
    windowSaveAs_fillInOk_replace_ok(item.name);
  }
}
