//USEUNIT MainMenuHelper
//USEUNIT OpenStrHelper
//USEUNIT NodesNavigatorHelper
//USEUNIT XtraInfo

function updateCPAndDS()
{
  //initialization
  var testStrategyName = "CreditProduct_DataSource.strat";//name стратегии для теста
  var xtraInfo = new XtraInfo.XtraInfo();
  //precondition
  Log.Message("Тест update кредитного продукта и DS");
  openOnlyNodesNav();
  openStrByName(testStrategyName);
  
  //test bodys 
  updateToLastVersion("TestProduct");
  xtraInfo.ok();

  updateToLastVersion("Sasha_DS");
  xtraInfo.ok();
  
  updateToLastVersion("a_tableApp");
  xtraInfo.ok();
  //postcondition
  //closeOneStr();
  //closeOneStrWhithWarning();  
}