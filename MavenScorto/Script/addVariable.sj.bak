//USEUNIT NewStrategyHelper
//USEUNIT VariablesHelper
//USEUNIT ToolbarHelper

function addVariable()
{
  Log.Message("Проверка добавления новой переменной.");
  createNewStrategy();
  toolbar_variables();
  variables_add();
  setValueToField("newVar");
  variables_ok();
  toolbar_variables();
  if(variableExists("newVar"))Log.Checkpoint("переменная 'newVar' добавлена.");
  deleteAllVariable();
  variables_ok();
  toolbar_close_withoutSave();
}