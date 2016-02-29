﻿//USEUNIT WindowSaveAsHelper
//USEUNIT NewStrategyHelper
//USEUNIT ToolbarHelper

function newStrategy_saveAs_cancel()
{
  //preconditions
  Log.Message("Проверка отмены на окне Сохранить как."); 
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "saveAs cancel") continue; 
    toolbar_newStr();
    newStrategy_fillInOk(item);
    toolbar_close_andSave();
    windowSaveAs_cancel();
    newStrategy_verify(item);
  }
}