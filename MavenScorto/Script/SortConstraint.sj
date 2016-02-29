﻿//USEUNIT Constraint
//USEUNIT MainMenu
//USEUNIT OpenStrHelper
//USEUNIT Settings

 
function SortConstraint()
{
  //initialization
  var testStrategyPath =  strLocation + "Constraint2.strat";//путь к стратегии для теста
  var constraint = new Constraint.Constraint();
  var toolbar = new Toolbar.Toolbar();
  //precondition
  Log.Message("Проверка сортировки Constraint.");
  openStrByPath(testStrategyPath);
  toolbar.constraint();
  
  //test bodys 
  sortListByHeader(constraint,"Name");
  checkListItemPosition(constraint, "NumericConstraint3", 2);
  sortListByHeader(constraint,"Name");
  checkListItemPosition(constraint, "NumericConstraint3", 4);
  
  sortListByHeader(constraint,"Type");
  checkListItemPosition(constraint, "StringConstraint2", 5);
  checkListItemPosition(constraint, "Constraint4", 4);
  sortListByHeader(constraint,"Type");
  checkListItemPosition(constraint, "Constraint1", 3);
  checkListItemPosition(constraint, "Constraint0", 6);
  
  sortListByHeader(constraint,"Values");
  checkListItemPosition(constraint, "StringConstraint3", 4);
  checkListItemPosition(constraint, "Constraint0", 1);
  sortListByHeader(constraint,"Values");
  checkListItemPosition(constraint, "StringConstraint3", 2);
  checkListItemPosition(constraint, "Constraint0", 5);
  
  sortListByHeader(constraint,"Used");
  checkListItemPosition(constraint, "Constraint4", 0);
  checkListItemPosition(constraint, "Constraint0", 5);
  sortListByHeader(constraint,"Used");
  checkListItemPosition(constraint, "Constraint4", 6);
  checkListItemPosition(constraint, "Constraint0", 1);
  constraint.ok();
  //postcondition
  //closeOneStr();
}
