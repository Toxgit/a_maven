//USEUNIT MainMenuHelper
//USEUNIT NodesNavigatorHelper
//USEUNIT XtraInfo


function update_To_Last_Version()
{
  //initialization
  var xtraInfo = new XtraInfo.XtraInfo();
  //precondition
  Log.Message("Тест обновления узла до последней версии");
  openOnlyNodesCon();
  //aqUtils.Delay(3000);
  //test bodys 
   updateToLastVersion("a_Form");
   xtraInfo.ok();
   Log.Checkpoint("Узел обновлен");
   updateToLastVersion("a_In");
   xtraInfo.ok();
   Log.Checkpoint("Узел обновлен");
   
  //postcondition
}