﻿//USEUNIT ConstraintsHelper
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings
//USEUNIT TestLogging
//USEUNIT WindowError2


function name_constraint()
{
   //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  var warning2 = new WindowError2.WindowError2();
  var warning = new WindowWarning.WindowWarning();
 
  
  //precondition
  BeginTestTransaction("Проверка Name constraint.");
  openStrByPath(testStrategyPath);
  toolbar.constraint();
  Log.Warning("в проверке 16 и 18 Варнинги из-за того, что используется тестовые данные из проверки переменных. Для этих проверок написан отдельный тест.");
  
  //test body
  constraint.add();
  sortListByHeader(constraint,"Values");
  
  
  for(var i=0; i<ODT.Data.Variables.VariableCount; i++)
  {
    var item = ODT.Data.Variables.Variables(i).Value;
    if (item.options == "check name")
    {
      clickRowByIndex(constraint,0);
      logStep("Iteration "+i);
      if(item.expectedResult == "Pass")
      {
        chooseNameOrType(constraint,"Name");
        setName(constraint,item.name);
        chooseNameOrType(constraint,"Type");
        //Проверка...для тестов pass
        if (listElementExists(constraint, item.name))Log.Checkpoint("Constraint с Name = "+item.name+" создана.");
        else Log.Warning("Constraint с Name = "+item.name+" не создана.");
      }      
      else
      {
        chooseNameOrType(constraint,"Name");
        setName(constraint,item.name);
        chooseNameOrType(constraint,"Type");
        
        if (!warning2.alias.Exists) 
        {
          Log.Warning("окно с ошибкой не появилось.");
          continue;
        }else 
        {
          warning2.ok();
          if (!listElementExists(constraint, item.name))Log.Checkpoint("Constraint с Name = "+item.name+" не создана.");
          else Log.Warning("Constraint с Name = "+item.name+" создана.");
        }
      }
    }
  }
  //postcondition
  Log.PopLogFolder();
  clickRowByIndex(constraint,0);
  closeScreenWithWarning(constraint,"constraint");
  closeOneStr();
  //closeOneStrWhithWarning();
  EndTestTransaction();
}
