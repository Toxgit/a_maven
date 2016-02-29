﻿//USEUNIT OpenStrategyRemoteHelper
//USEUNIT ToolbarHelper
//USEUNIT MainMenuHelper
//USEUNIT WindowSaveAsHelper

function OpenStrategyRemote_saveAll(){
  Log.Message("Проверка save all");
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description != "remote") continue;
    if (item.options != "save all") continue;
    
    openStrRemote_quickly(item.name);
    maven_strategyExists();
  }
   menu_saveAll();
   windowSaveAs_cancel();
   windowSaveAs_cancel();
   Log.Checkpoint("После нажатия на Menu saveAll два диалога Save as закрыты.");
   
   toolbar_saveAll();
   windowSaveAs_cancel();
   windowSaveAs_cancel();
   Log.Checkpoint("После нажатия на Toolbar saveAll два диалога Save as закрыты.");
   
   toolbar_closeAll_withoutSave();
   
}