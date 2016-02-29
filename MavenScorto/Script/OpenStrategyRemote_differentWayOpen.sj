﻿//USEUNIT ToolbarHelper
//USEUNIT OpenStrategyRemoteHelper
//USEUNIT MavenHelper
//USEUNIT MainMenuHelper

function OpenStrategyRemote_differentWayOpen(){
  Log.Message("Тест проверяет открытие стратигии, загруженную на сервер.");
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description != "remote") continue;
    if (item.options != "differentWayOpen") continue;
        
    maven_hotkeys("^j");
    openStrRemote_SelectItem(item.name);
    openStrRemote_ok();
    if(maven_strategyExists()){
      Log.Checkpoint("Стратегия открыта по Hotkey");
      toolbar_close();
    }
    
    menu_openStrategyRemote();
    openStrRemote_SelectItem(item.name);
    openStrRemote_ok();
    if(maven_strategyExists()){
      Log.Checkpoint("Стратегия открыта из главного меню");
      toolbar_close();
    }
    
    openStrRemote_quickly(item.name);
    if(maven_strategyExists()){
      Log.Checkpoint("Стратегия открыта из toolbar");
      toolbar_close();
    }
  }
}