//USEUNIT ToolbarHelper
//USEUNIT OpenStrHelper
//USEUNIT MavenHelper

function OpenStrategy_cancel(){
  for (var i=0; i< ODT.Data.OpenStrategy.VariableCount; i++){
    var item = ODT.Data.OpenStrategy.Variables(i).Value;
    if (item.description == "remote") continue;
    if (item.options != "cancel") continue;
    Log.Message("Проверка кнопки Cancel в окне Open");
    toolbar_openStr();
    openStr_setProjPath("clear");
    openStr_ok();
    Log.Message("Do not select strategy, press OK");
    openStr_setProjPath(item.path);
    openStr_cancel();
    if (maven_strategyExists())Log.Warning("Cтратегия открылась, хотя не должна");
      else Log.Checkpoint("После нажатия Cancel Cтратегия не открылась.");
  }
}
