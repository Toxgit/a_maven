﻿//USEUNIT Maven
var maven = new Maven.Maven();

function maven_hotkeys(key){
   maven.hotkeys(key);       
}
function maven_strategyExists(){return maven.strategyExists()}