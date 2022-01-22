@if (@CodeSection == @Batch) @then
@echo off
rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"
START CHROME "https://manager.vip.symantec.com/vipmgr/signin.v"
rem the script only works if the application in question is the active window. Set a
timer to wait for it to load!
timeout /t 3
rem use the tab key to move the cursor to the login and password inputs. Most htmls
interact nicely with the tab key being pressed to access quick links.
rem now you can have it send the actual username/password to input box
%SendKeys% "putyourusernamehere"
%SendKeys% "{TAB}"
%SendKeys% "putyourpasswordhere"
%SendKeys% "{TAB}"
%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"

goto :EOF
@end
// JScript section
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));