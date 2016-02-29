﻿//USEUNIT Settings
//USEUNIT MainMenuHelper
//USEUNIT OpenStrHelper
//USEUNIT NodesNavigatorHelper
//USEUNIT NodesContainerHelper
//USEUNIT WindowError2

function unknown_Nodes_ThreeeSquare()
{
  //initialization
  var testStrategyPath =  strLocation + "InputNode.strat";//путь к стратегии для теста
  var winError2 = new WindowError2.WindowError2();
  
  //precondition
  Log.Message("Тест проверяет иконку(три кубика) для неизвестного Input узла");
  openOnlyNodesNav();//Открываем тлько Nodes Navigator 
  openStrByPath(testStrategyPath);
  winError2.ok();
  
  //test bodys 
  checkThreeSquare("a_FormInput");
  checkThreeSquare("a_Init");
  nodesContainer_refresh();
  //postcondition
  //closeOneStr();
  //closeOneStrWhithWarning();  
}