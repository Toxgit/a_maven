//USEUNIT NodeHelper
//USEUNIT OpenStrHelper

function TabNavigation()
{
  //initialization
  var inputNode = new Node.Node();
  
  //precondition
  Log.Message("Тест навигации на табам");

  //test bodys 
  navTabsWithPinSelect("Pin");
  navTabsWithPinSelect("Mapping");
  navTabsWithPinSelect("Debug");
  navTabsWithPinSelect("Annotation");
  navTabsWithPinSelect("Pin");
  navTabsWithPinSelect("Mapping");
  //postcondition
  inputNode.cancel();
  closeOneStrWhithWarning();
}