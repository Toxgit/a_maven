﻿//USEUNIT OpenStrHelper
//USEUNIT MavenHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowErrorHelper
//USEUNIT MainMenuHelper

function OpenStrategy_save(){
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description == "remote") continue;
    if (item.options != "save") continue;
    
    Log.Message("Тест проверяет работу save открытой стратегии");
    openStrategy_quickly(item.name);
    
    maven_hotkeys("^s");
    info_ok();
    Log.Checkpoint("HotKey - Открылось окно Saved successfully.");
    toolbar_save();
    info_ok();
    Log.Checkpoint("Toolbar - Открылось окно Saved successfully.");
    menu_saveStrategy();
    info_ok();
    Log.Checkpoint("MainMenu - Открылось окно Saved successfully.");
    
    toolbar_close();
  }
}