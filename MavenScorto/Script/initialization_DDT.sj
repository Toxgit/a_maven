﻿//USEUNIT ODTInitt
function runAllDDTinit(){DDTinit1();DDTinit2();DDTinit3();DDTinit4();DDTinit5();DDTinit6();DDTinit7();DDTinit8();DDTinit9();}

// Default views
function DDTinit1(){ ODTInitt.initddt("TestData.xls","Default_views");Log.Message("Загружена новая структура ODT");}
// Toolbars
function DDTinit2(){ ODTInitt.initddt("TestData.xls","BarMainMenu");Log.Message("Загружена новая структура ODT");}
// New Strategy
function DDTinit3(){ ODTInitt.initddt("TestData.xls","NewStrategy");Log.Message("Загружена новая структура ODT для теста по созданию новых стратегий.");}
//OpenStrategy
function DDTinit4(){ ODTInitt.initddt("TestData.xls","OpenStrategy");Log.Message("Загружена новая структура ODT для теста по Open Strategy.");}
//Variables
function DDTinit5(){ODTInitt.initddt("TestData.xls","Variables");Log.Message("Загружена новая структура ODT для теста по Variables.");}
//Constraint
function DDTinit6(){ODTInitt.initddt("TestData.xls","Constraint");Log.Message("Загружена новая структура ODT для теста по Constraint.");}
//Bulk Editing
function DDTinit7(){ODTInitt.initddt("TestData.xls","BulkEditing");Log.Message("Загружена новая структура ODT для теста по Bulk Editing.");}
//constraint copy
function DDTinit8(){ODTInitt.initddt("TestData.xls","Constraint_copy");Log.Message("Загружена новая структура ODT для теста по constraint_copy.");}
//Nodes
function DDTinit9(){ODTInitt.initddt("TestData.xls","Nodes");Log.Message("Загружена новая структура ODT для теста Nodes");}