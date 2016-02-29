﻿//USEUNIT Constraint
//USEUNIT ListView
//USEUNIT CheckDisable
//USEUNIT WindowHelper
//USEUNIT WindowErrorHelper
//USEUNIT TextBox

var constraint = new Constraint.Constraint();
//constraint.constraintValue.list =  Aliases.Maven.Constraint.Properties.Values
function constraint_import(){constraint.imp()}
function constraint_ok(){constraint.ok()}
function constraint_add(){constraint.add()}
function constraint_copy(){constraint.copy()}
function constraint_cancel(){constraint.cancel()}

function pick_Constraint(name){clickListRowByName(constraint, name)}

function verifyConstraintWithCustomProperty(object,item)
{
  clickListRowByName(object, item.name);
  checkValueOfField(object, item.name, "Name", item.name);
  checkValueOfField(object, item.name, "Type", item.type);
  checkValueOfField(object, item.name, "Values", item.values);
  checkValueOfField(object, item.name, "Used", item.used); 
}
//********Set Value***********************
function setName(object,value)
{
  textBoxSetText (object.alias.Properties.Common.TextEdit.TextBox, value);
}
//****** CHOOSE Property**************************
function chooseNameOrType(object,property)
{
 object.alias.Properties.Common.wItems(1).ClickValue(property);
}
function setType(value)
{
  chooseNameOrType(constraint,"Type");
  constraint.alias.Properties.Common.ComboBox.Keys(value);
}
function setMinValue(value)
{
  var row = listFinInColumn(constraint.constraintValue, "Constraint values", "Min value");
  constraint.constraintValue.list.ClickCell(row, "Value");
  constraint.constraintValue.list.Keys("^a");
  constraint.constraintValue.list.Keys(value);
  constraint.constraintValue.list.Click();
}
function setMaxValue(value)
{
  var row = listFinInColumn(constraint.constraintValue, "Constraint values", "Max value");
  constraint.constraintValue.list.ClickCell(row, "Value");
  constraint.constraintValue.list.Keys("^a");
  constraint.constraintValue.list.Keys(value);
  constraint.constraintValue.list.Click();
}
function setStrConstraint(value)
{
 constraint.constraintValue.list.DblClickNewRowCell("Constraint values");
 constraint.constraintValue.list.TextEdit.SetText(value);
 constraintValue_plus();
 warning_exists_ok();
 constraintValue_cross();
}
function setStrConstraint_fail(value)
{
 constraint.constraintValue.list.DblClickNewRowCell("Constraint values");
 constraint.constraintValue.list.TextEdit.SetText(value);
 constraintValue_plus();
 winError2_exists_ok();
 constraintValue_cross();
}
function constraintValue_plus(){constraint.gridControlNavigator.Click(6, 8);}
function constraintValue_minus(){constraint.gridControlNavigator.Click(29, 8);}
function constraintValue_cross(){constraint.gridControlNavigator.Click(43, 8);}

//Edit Value constraint****************
function editNumericConWithoutType(item)
{
  //setType("Numeric");если менять тип, то Варнинг окно
  pick_Constraint(item.name);
  setMaxValue(item.max);
  setMinValue(item.min);
}
function deleteAllStrConValues()
{
  var count = constraint.constraintValue.list.wRowCount
  for (var u=0; u<count; u++)
  {
    constraintValue_minus();
  } 
}
function editStrConWithoutType(item)
{
  pick_Constraint(item.name);
  deleteAllStrConValues();
  setStrConstraint(item.values);
  
}
function deleteNotlinkedConstraint()
{
  constraint.del();
  info.ok();
  info.ok();
}