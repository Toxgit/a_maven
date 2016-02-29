//USEUNIT NewStrategyHelper
//USEUNIT MainMenuHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowSaveAsHelper

function newStrategy_saveAll()
{
  //preconditions
  Log.Message("Проверка Save All");
  //test body 
  createNewStrategy();
  Log.Checkpoint("Startegy1 создана.");
  createNewStrategy();
  Log.Checkpoint("Startegy2 создана.");
  menu_saveAll();
  Log.Message("Жмем Menu  Save All");
  windowSaveAs_cancel();
  windowSaveAs_cancel();
  Log.Checkpoint("Два диалога Save as закрыты.");
  toolbar_saveAll();
  Log.Message("Жмем toolbar  Save All");
  windowSaveAs_cancel();
  windowSaveAs_cancel();
  Log.Checkpoint("Два диалога Save as закрыты.");
  
  toolbar_closeAll_withoutSave();
}