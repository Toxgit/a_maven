//USEUNIT TextBox
//USEUNIT InputPrefix
//USEUNIT XtraInfo
//USEUNIT WindowWarning
//USEUNIT WindowInformation
//USEUNIT WindowError2
//USEUNIT WindowError
//USEUNIT WindowConfirmation
//USEUNIT XtraError


var inPrefix = new InputPrefix.InputPrefix();
var xtraInfo = new XtraInfo.XtraInfo();
var xtraError = new XtraError.XtraError();
var warning = new WindowWarning.WindowWarning();
var info = new WindowInformation.WindowInformation();
var winError = new WindowError.WindowError();
var winError2 = new WindowError2.WindowError2();
var winConfirmation = new WindowConfirmation.WindowConfirmation();


function setPrefix(text){textBoxSetText (inPrefix.alias.Prefix, text)}

function xtraInfo_ok(){xtraInfo.ok()}
function xtraInfo_no(){xtraInfo.no()}

function xtraError_ok(){xtraError.ok()}

function info_ok(){info.ok()}
function info_no(){info.no()}

function warning_ok(){warning.ok()}
function warning_no(){warning.no()}
function warning_exists_ok(){if(warning.alias.Exists)warning.ok()}
function warning_exists(){if(warning.alias.Exists) return true}

function winError_close(){winError.close()}
function winError_text(){return winError.text()}
function winError_exists(){if(winError.alias.Exists) return true}

function winError2_exists_ok(){if (winError2.alias.Exists)winError2.ok()}

function winConfirmation_ok(){winConfirmation.ok()}
function winConfirmation_exists_ok(){if(winConfirmation.alias.Exists)winConfirmation.ok()}
function winConfirmation_no(){winConfirmation.no()}