#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

; Hotkey to Close Window with Double-tap of Shift
Alt::
  If (A_ThisHotkey = A_PriorHotkey AND A_TimeSincePriorHotkey < 200)
    SendInput, #{Space}
  send, {AltUp}
Return