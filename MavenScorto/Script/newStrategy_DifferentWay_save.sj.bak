//USEUNIT NewStrategyHelper
//USEUNIT MavenHelper
//USEUNIT MainMenuHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowSaveAsHelper

function newStrategy_save()
{
  //preconditions
  Log.Message("Проверяем сохранение стратегии по кнопкам Save (разные варианты хаткей, тулбар, меню).");
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "save") continue; 
    maven_hotkeys("^n");
    newStrategy_fillInOk(item);   
    maven_hotkeys("^s");
    if (windowSaveAs_exists()){
      windowSaveAs_cancel();
      Log.Checkpoint("после нажатия HotKey - Открылось окно Save As.");
    }
    toolbar_save();
    if (windowSaveAs_exists()){
      windowSaveAs_cancel();
      Log.Checkpoint("после нажатия кнопки на Toolbar - Открылось окно Save As.");
    }
    menu_saveStrategy();
    if (windowSaveAs_exists()){
      Log.Checkpoint("из MainMenu - Открылось окно Save As.");
       windowSaveAs_fillInOk_replace_ok(item.name);      
    }
  toolbar_close();  
  }
}