﻿function textBoxSet (theTextBox, text)
{
  theTextBox.setFocus();
  theTextBox.Text = text;
}

function textBoxSet_Keys (theTextBox, text)
{
  theTextBox.setFocus();
  theTextBox.Keys(text);
}
function textBoxSetText (theTextBox, text)
{
  theTextBox.SetFocus();
  if(text == "clear") {theTextBox.Keys("^a");theTextBox.Keys("[BS]");}
  else theTextBox.SetText(text);
}
