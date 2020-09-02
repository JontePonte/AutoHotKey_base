#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance, Force

;
; ----------------------------------------------- Hotkeys ----------------------------------------------------------
;

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

; Open all importandt tabs for work
#a::
Run https://hint.hudiksvall.se/
Run https://mail.google.com/mail/u/0/#inbox
OpenSchedule()
Run https://drive.google.com/drive/my-drive

Sleep, 100
Send, ^{TAB}
return


; copy from text frome chrome to excell and go down twice
#b::
CopyToExcel()
return

; copy from text frome chrome to excell and go right
^#x::
Clipboard:=""
Send, ^c
ClipWait,1
WinActivate, ahk_exe EXCEL.EXE
WinWaitActive, ahk_exe EXCEL.EXE
Send, ^v
sleep, 100
Send, {RIGHT}
WinActivate, ahk_exe CHROME.EXE
return

; copy from text frome chrome to excell and go down and left
^#c::
Clipboard:=""
Send, ^c
ClipWait,1
WinActivate, ahk_exe EXCEL.EXE
WinWaitActive, ahk_exe EXCEL.EXE
Send, ^v
sleep, 100
Send, {Enter}
Send, {Left}
WinActivate, ahk_exe CHROME.EXE
return


;
; ----------------------------------------------- functions ----------------------------------------------------------
;

; Open schedule web page, set cursor in name input, write "jn" and press enter
OpenSchedule(){
Run https://web.skola24.se/timetable/timetable-viewer/hudiksvall.skola24.se/Bromangymnasiet/
Sleep, 3000
Loop, 10 ; 10 tabs puts the cursor in name input
{
Send, {TAB}
Sleep, 10
}

Send, j
Send, n
Sleep, 10
Send, {Enter}
}



CopyToExcel(){
Clipboard:=""
Send, ^c
ClipWait,1
WinActivate, ahk_exe EXCEL.EXE
WinWaitActive, ahk_exe EXCEL.EXE
Send, ^v
sleep, 100
Send, {Enter}
Send, {Enter}
WinActivate, ahk_exe CHROME.EXE
}