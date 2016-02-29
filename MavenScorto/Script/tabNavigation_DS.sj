//USEUNIT NodeHelper
//USEUNIT OpenStrHelper

function TabNavigation_DS()
{
  //initialization
  var inputNode = new Node.Node();
  
  //precondition
  Log.Message("Тест навигации на табам");

  //test bodys 
  navTabs2tabs("Annotation");
  navTabs2tabs("Mapping");
  navTabs2tabs("Annotation");
  navTabs2tabs("Mapping");
  //postcondition
  inputNode.cancel();
  closeOneStrWhithWarning();
}