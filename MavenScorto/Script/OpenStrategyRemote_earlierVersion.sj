//USEUNIT OpenStrategyRemoteHelper
//USEUNIT Settings
//USEUNIT ToolbarHelper

function OpenStrategyRemote_earlierVersion(){
  Log.Message("Проверка открытия earlierVersion");
  openStrRemote_VersionQuickly(a_Fetch_version);
  maven_strategyExists();
  toolbar_close();  
}