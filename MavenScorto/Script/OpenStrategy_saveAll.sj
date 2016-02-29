﻿//USEUNIT OpenStrHelper
//USEUNIT ToolbarHelper
//USEUNIT WindowErrorHelper
//USEUNIT MainMenuHelper

function OpenStrategy_saveAll(){
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description == "remote") continue;
    if (item.options != "save all") continue;
    openStrategy_quickly(item.path);
  }
  toolbar_saveAll();
  info_ok();
  info_ok();
  Log.Checkpoint("После нажатия на toolbar два диалога Saved successfully закрыты.");
  menu_saveAll();
  info_ok();
  info_ok();
  Log.Checkpoint("После нажатия на saveAll в MainMenu два диалога Saved successfully закрыты.");
  
  toolbar_closeAll_withoutSave();
}