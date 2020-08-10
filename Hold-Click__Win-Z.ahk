#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance, Force

#f::
MsgBox, Furiture Research & Development: Other People's Ideas, Our Stealing
return

#z::Send % "{Click " . ( GetKeyState("LButton") ? "Up}" : "Down}" )

; test comment
#!c:: ExitApp
