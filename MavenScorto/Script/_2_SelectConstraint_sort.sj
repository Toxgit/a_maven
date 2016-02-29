﻿//USEUNIT SelectConstraintHelper
//USEUNIT VariablesHelper

function SelectConstraint_sort()
{
  Log.Message("Тест проверяет сортировку constraint")
  sortListByHeader(selectConstraint,"Name");
  checkListItemPosition(selectConstraint, "StringConstraint2", 2);
  checkListItemPosition(selectConstraint, "StringConstraint3", 3);
  sortListByHeader(selectConstraint,"Name");
  checkListItemPosition(selectConstraint, "StringConstraint2", 1);
  checkListItemPosition(selectConstraint, "StringConstraint3", 0);
  
  sortListByHeader(selectConstraint,"Type");
  checkListItemPosition(selectConstraint, "StringConstraint2", 2);
  checkListItemPosition(selectConstraint, "StringConstraint3", 3);
  sortListByHeader(selectConstraint,"Type");
  checkListItemPosition(selectConstraint, "StringConstraint2", 1);
  checkListItemPosition(selectConstraint, "StringConstraint3", 0);
  
  sortListByHeader(selectConstraint,"Values");
  checkListItemPosition(selectConstraint, "StringConstraint2", 3);
  checkListItemPosition(selectConstraint, "StringConstraint3", 1);
  sortListByHeader(selectConstraint,"Values");
  checkListItemPosition(selectConstraint, "StringConstraint2", 0);
  checkListItemPosition(selectConstraint, "StringConstraint3", 2);

  sortListByHeader(selectConstraint,"Used");
  checkListItemPosition(selectConstraint, "StringConstraint2", 1);
  checkListItemPosition(selectConstraint, "StringConstraint3", 2);
  sortListByHeader(selectConstraint,"Used");
  checkListItemPosition(selectConstraint, "Constraint1", 0);
  checkListItemPosition(selectConstraint, "StringConstraint3", 1);
  //postcondition
  selectConstraint_cancel();

}