//USEUNIT ToolbarHelper
//USEUNIT OpenStrategyRemoteHelper

function OpenStrategyRemote_cancel(){
  Log.Message("Тест проверяет работу cancel в окне открытия remoteStrategy.");
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description != "remote") continue;
    if (item.options != "cancel") continue;
    
    toolbar_openStrategyRemote();
    openStrRemote_SelectItem(item.name);
    openStrRemote_cancel();
    if(maven_strategyExists()){
      Log.Warning("Стратегия открыта, хотя не должна");
      toolbar_close();
      continue;
    }
    Log.Checkpoint("Стратегия не открылась")
  }
}