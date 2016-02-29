//USEUNIT OpenStrategyRemoteHelper
//USEUNIT MavenHelper
//USEUNIT ToolbarHelper
//USEUNIT MainMenuHelper
//USEUNIT WindowSaveAsHelper

function OpenStrategy_save(){
  Log.Message("Тест проверяет работу saveAS открытой remote стратегии");
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description != "remote") continue;
    if (item.options != "save as") continue;
        
    openStrRemote_quickly(item.name);
        
    toolbar_saveAs();
    windowSaveAs_cancel();
    Log.Checkpoint("Toolbar - Открылось окно Save As");
    
    menu_saveStrategyAs();
    windowSaveAs_cancel();
    Log.Checkpoint("Mainmenu - Открылось окно Save As");
    
    toolbar_close();
  }
}