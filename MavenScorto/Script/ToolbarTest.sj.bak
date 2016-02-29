//USEUNIT ODTInitt
//USEUNIT restartApp

// создание структуры DDT из файла TestData.xls
function DDTinit(){ ODTInitt.initddt("TestData.xls","BarMainMenu");Log.Message("Загружена новая структура ODT");}

function verifyToolbarFile ()
{

  // создание структуры DDT из файла TestData.xls
  //function aaa(){ ODTInitt.initddt("TestData.xls","BarMainMenu");Log.Message("Загружена новая структура ODT");}
  //restsrt App отключен для теста
  //restart();
  var alias = Aliases.Maven.MainForm.BarMainMenu;
      for (var i=0; i< ODT.Data.BarMainMenu.VariableCount; i++)
      {
        var item = ODT.Data.BarMainMenu.Variables(i).Value;
        if (item.Docker != "File") break;     
        var expetedText = findText(item.Text);
        if (expetedText)
              { Log.Message("Pass - Corresponding button "+ item.Text+" present on toolbar");}
            else
              {Log.Warning("Fail -  Corresponding button "+ item.Text+" absent on toolbar");}     
      } 
    function findText(text){
     for(var i=0; i < alias.File.wItems.Count; i++)
      {
        var theText = alias.File.wItems.Item(i).Text;
        if(theText == text)
          {return true;} 
      }
      return false;
    } 
}

function verifyToolbarViewEdit ()
{
   // создание структуры DDT из файла TestData.xls
  //function aaa(){ ODTInitt.initddt("TestData.xls","BarMainMenu");Log.Message("Загружена новая структура ODT");}
  //restsrt App отключен для теста
  //restart();
  var alias = Aliases.Maven.MainForm.BarMainMenu;
      for (var i=0; i< ODT.Data.BarMainMenu.VariableCount; i++)
      {
        var item = ODT.Data.BarMainMenu.Variables(i).Value;
        if (item.Docker != "ViewEdit") continue;     
        var expetedText = findText(item.Text);
        if (expetedText)
              { Log.Message("Pass - Corresponding button "+ item.Text+" present on toolbar");}
            else
              {Log.Warning("Fail -  Corresponding button "+ item.Text+" absent on toolbar");}     
      } 
    function findText(text){
     for(var i=0; i < alias.ViewEdit.wItems.Count; i++)
      {
        var theText = alias.ViewEdit.wItems.Item(i).Text;
        if(theText == text)
          {return true;} 
      }
      return false;
    } 
}

function verifyToolbarDebug ()
{
   // создание структуры DDT из файла TestData.xls
  //function aaa(){ ODTInitt.initddt("TestData.xls","BarMainMenu");Log.Message("Загружена новая структура ODT");}
  //restsrt App отключен для теста
  //restart();
  var alias = Aliases.Maven.MainForm.BarMainMenu;
      for (var i=0; i< ODT.Data.BarMainMenu.VariableCount; i++)
      {
        var item = ODT.Data.BarMainMenu.Variables(i).Value;
        if (item.Docker != "Debug") continue;     
        var expetedText = findText(item.Text);
        if (expetedText)
              { Log.Message("Pass - Corresponding button "+ item.Text+" present on toolbar");}
            else
              {Log.Warning("Fail -  Corresponding button "+ item.Text+" absent on toolbar");}     
      } 
    function findText(text){
     for(var i=0; i < alias.Debug.wItems.Count; i++)
      {
        var theText = alias.Debug.wItems.Item(i).Text;
        if(theText == text)
          {return true;} 
      }
      return false;
    } 
}

function verifyToolbarStrategy ()
{
    // создание структуры DDT из файла TestData.xls
  //function aaa(){ ODTInitt.initddt("TestData.xls","BarMainMenu");Log.Message("Загружена новая структура ODT");}
  //restsrt App отключен для теста
  //restart();
  var alias = Aliases.Maven.MainForm.BarMainMenu;
      for (var i=0; i< ODT.Data.BarMainMenu.VariableCount; i++)
      {
        var item = ODT.Data.BarMainMenu.Variables(i).Value;
        if (item.Docker != "Strategy") continue;     
        var expetedText = findText(item.Text);
        if (expetedText)
              { Log.Message("Pass - Corresponding button "+ item.Text+" present on toolbar");}
            else
              {Log.Warning("Fail -  Corresponding button "+ item.Text+" absent on toolbar");}     
      } 
    function findText(text){
     for(var i=0; i < alias.Strategy.wItems.Count; i++)
      {
        var theText = alias.Strategy.wItems.Item(i).Text;
        if(theText == text)
          {return true;} 
      }
      return false;
    } 
}