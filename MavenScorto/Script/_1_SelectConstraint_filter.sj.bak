//USEUNIT ToolbarHelper
//USEUNIT OpenStrHelper
//USEUNIT VariablesHelper
//USEUNIT SelectConstraintHelper


function SelectConstraint_filter(){
  var testStrategyPath = "Constraint.strat";
  Log.Message("Проверка фильтрацию Constraint.");
  openStrategy_quickly(testStrategyPath);
  toolbar_variables();
  clickRowByName("String2");
  chooseProperty("Constraint name");
  variables_toSelectConstraint();
  
  filterList(selectConstraint, "Name", "str");
  checkListItemPosition(selectConstraint, "StringConstraint2", 0);
  checkListItemPosition(selectConstraint, "StringConstraint3", 1);
  filterListClear(selectConstraint);
  
  filterList(selectConstraint, "Type", "string");
  checkListItemPosition(selectConstraint, "StringConstraint2", 2);
  checkListItemPosition(selectConstraint, "StringConstraint3", 3);
  filterListClear(selectConstraint);
  
  filterList(selectConstraint, "Values", "aaa");
  checkListItemPosition(selectConstraint, "Constraint1", 0);
  checkListItemPosition(selectConstraint, "StringConstraint3", 1);
  filterListClear(selectConstraint);
  
  filterList(selectConstraint, "Used", "Yes");
  checkListItemPosition(selectConstraint, "Constraint1", 0);
  filterListClear(selectConstraint);
  //Next test... SelectConstraint_sort()
}  
