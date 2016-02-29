﻿//USEUNIT OpenStrategyRemoteHelper
//USEUNIT MavenHelper
//USEUNIT ToolbarHelper
//USEUNIT MainMenuHelper
//USEUNIT WindowSaveAsHelper

function OpenStrategy_save(){
  Log.Message("Тест проверяет работу save открытой remote стратегии");
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description != "remote") continue;
    if (item.options != "save") continue;
        
    openStrRemote_quickly(item.name);
        
    maven_hotkeys("^s");
    windowSaveAs_cancel();
    Log.Checkpoint("Hotkey - Открылось окно Save As");
    
    toolbar_save();
    windowSaveAs_cancel();
    Log.Checkpoint("Toolbar - Открылось окно Save As");
    
    menu_saveStrategy()
    windowSaveAs_cancel();
    Log.Checkpoint("Mainmenu - Открылось окно Save As");
    
    toolbar_close();
  }
}