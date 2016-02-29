//USEUNIT NewStrategyHelper
//USEUNIT MavenHelper
//USEUNIT MainMenuHelper

function newStrategy_hotkey_menu()
{
  //preconditions
  Log.Message("проверка создания NewStrategy из галвного меню и по hotkey");
  //toolbar_closeAll_withoutSave(); закоментировал, т.к. тест newStrategy_cancel идет перед этим и он уже закрывает все стратегии 
  //test body 
  for (var i=0; i< ODT.Data.NewStrategy.VariableCount; i++)
  {
    var item = ODT.Data.NewStrategy.Variables(i).Value;
    if (item.options !== "hotkey_menu") continue; 
    maven_hotkeys("^n");
    newStrategy_fillInOk(item);
    newStrategy_verify(item);
    menu_newStrategy();
    newStrategy_fillInOk(item);
    newStrategy_verify(item);
  }
}