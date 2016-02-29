//USEUNIT TestLogging
//USEUNIT NewStrategyHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowSaveAsHelper
//USEUNIT WindowErrorHelper

function newStrategy_name()
{
  //preconditions
  BeginTestTransaction("Проверка Save Image","тест проверяет  Save Image.");
   
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "save image") continue; 
    logStep("Iteration "+i);
    toolbar_newStr();
    newStrategy_fillInOk(item);
    toolbar_saveImg();
    windowSaveAs_setName(item.path);
    windowSaveAs_ok();
    winConfirmation_exists_ok();
    info_no();
    Log.Checkpoint("Диалог 'откныть картинку?' - жмем нет.");
    toolbar_close_withoutSave();
  }
  Log.PopLogFolder();
  createNewStrategy();
  toolbar_saveImg();
  Log.Message("Проверка потытки сохранить с пустым именем");
  windowSaveAs_setName("clear");
  windowSaveAs_ok();
  Log.Checkpoint("Image c пустым именем не сохранилась.");
  Log.Message("Проверка cansel на шаге сохранения (окно sase as)");
  windowSaveAs_cancel();
  Log.Checkpoint("Image не сохранилась.");
  toolbar_close_withoutSave();
  //postcondition
  EndTestTransaction();
}