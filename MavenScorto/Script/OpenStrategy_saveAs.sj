﻿//USEUNIT OpenStrHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowErrorHelper
//USEUNIT MainMenuHelper
//USEUNIT WindowSaveAsHelper

function OpenStrategy_saveAs(){
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description == "remote") continue;
    if (item.options != "save as") continue;
  
    Log.Message("Тест проверяет работу save открытой стратегии");
    openStrategy_quickly(item.name);
    Log.Message("Тест проверяет работу saveAs открытой стратегии");
    toolbar_saveAs();
    windowSaveAs_cancel();
    Log.Checkpoint("Toolbar - Открылось окно Save As");
    menu_saveStrategyAs();
    windowSaveAs_cancel();
    Log.Checkpoint("MainMenu - Открылось окно Save As");
    
    toolbar_close();
  }
}