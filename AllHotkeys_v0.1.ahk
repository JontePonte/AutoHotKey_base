#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance, Force

; Start Visual Studio Code with Win V
#v::
Run C:\VisualStudio\Microsoft VS Code\Code.exe
return

; Open google translate on Win t
#t::
Run https://translate.google.se/?hl=sv#view=home&op=translate&sl=sv&tl=en
return

; Hold click on Win z
#z::Send % "{Click " . ( GetKeyState("LButton") ? "Up}" : "Down}" )

; Show temp file directory
#b::
MsgBox, %A_Temp%b
return
