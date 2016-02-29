//USEUNIT NewStrategyHelper
//USEUNIT MavenHelper
//USEUNIT MainMenuHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowSaveAsHelper

function newStrategy_differentWay_saveAS()
{
  //preconditions
  Log.Message("Проверяем сохранение стратегии по кнопкам Save As.");
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "save as") continue; 
    maven_hotkeys("^n");
    newStrategy_fillInOk(item);   
    toolbar_saveAs();
    if (windowSaveAs_exists()){
      windowSaveAs_cancel();
      Log.Checkpoint("после нажатия кнопки на Toolbar - Открылось окно Save As.");
    }
    menu_saveStrategyAs();
    if (windowSaveAs_exists()){
      windowSaveAs_cancel();
      Log.Checkpoint("из MainMenu - Открылось окно Save As.");
    }
  toolbar_close_withoutSave();  
  }
}