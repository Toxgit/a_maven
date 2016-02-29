//USEUNIT ToolbarHelper
//USEUNIT OpenStrHelper
//USEUNIT MavenHelper
//USEUNIT MainMenuHelper

function OpenStrategy_differentWayOpen(){
 for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description == "remote") continue;
    if (item.options != "differentWayOpen") continue;
    Log.Message("Тест проверяет открытие стратегии.");
    
    maven_hotkeys("^o");
    openStr_setProjPath(item.path);
    openStr_ok();
    Log.Checkpoint("Стратегия открыта по Hotkey");
    toolbar_close();
    
    menu_openStr();
    openStr_setProjPath(item.path);
    openStr_ok();
    Log.Checkpoint("Стратегия открыта из главного меню");
    toolbar_close();
    
    Log.Checkpoint("Открываем Strategy из toolbar");
    openStrategy_quickly(item.path);
    toolbar_close();
 }
}