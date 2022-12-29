#IfWinActive, ahk_exe GenshinImpact.exe
  #NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
  ; #Warn  ; Enable warnings to assist with detecting common errors.
  SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
  SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

  Key1 = 1
  Key2 = 2
  Key3 = 3
  Key4 = 4
  Key5 = 5
  tLength = -200 ;Time before key is pressed
  ;----------------------------------------------------------

  Hotkey, $%Key1%, startTimer1
  Hotkey, $%Key2%, startTimer2
  Hotkey, $%Key3%, startTimer3
  Hotkey, $%Key4%, startTimer4
  Hotkey, $%Key5%, startTimer5

  startTimer1:
    if !endTimer1
      SetTimer, endTimer1, %tLength%
    tapCount++
  Return

  startTimer2:
    if !endTimer2
      SetTimer, endTimer2, %tLength%
    tapCount++
  Return

  startTimer3:
    if !endTimer3
      SetTimer, endTimer3, %tLength%
    tapCount++
  Return

  startTimer4:
    if !endTimer4
      SetTimer, endTimer4, %tLength%
    tapCount++
  Return

  startTimer5:
    if !endTimer5
      SetTimer, endTimer5, %tLength%
    tapCount++
  Return

  endTimer1:
    If GetKeyState(Key1, "P") and tapCount < 2
    {
      Send, {%Key1%}
      sleep 300
      Send, {e down}
      KeyWait, %Key1%
      Send, {e up}
    } 
    ; Else If tapCount >= 2
    ; { 
    ;   Send, {Alt down}
    ;   sleep 300
    ;   Send {%Key1%}
    ;   sleep 300
    ;   Send, {Alt up}
    ; }
    Else
    { 
      Send {%Key1%}
    }
    KeyWait, %Key1%
    tapCount = 
  Return

  endTimer2:
    If GetKeyState(Key2, "P") and tapCount < 2
    {
      Send, {%Key2%}
      sleep 300
      Send, {e down}
      KeyWait, %Key2%
      Send, {e up}
    } 
    ; Else If tapCount >= 2
    ; {
    ;   Send, {Alt down}
    ;   sleep 300
    ;   Send {%Key2%}
    ;   sleep 300
    ;   Send, {Alt up}
    ; }
    Else
    {
      Send {%Key2%}
    }
    KeyWait, %Key2%
    tapCount = 
  Return

  endTimer3:
    If GetKeyState(Key3, "P") and tapCount < 2
    {
      Send, {%Key3%}
      sleep 300
      Send, {e down}
      KeyWait, %Key3%
      Send, {e up}
    } 
    ; Else If tapCount >= 2
    ; { 
    ;   Send, {Alt down}
    ;   sleep 300
    ;   Send {%Key3%}
    ;   sleep 300
    ;   Send, {Alt up}
    ; }
    Else
    { 
      Send {%Key3%}
    }
    KeyWait, %Key3%
    tapCount = 
  Return

  endTimer4:
    If GetKeyState(Key4, "P") and tapCount < 2
    {
      Send, {%Key4%}
      sleep 300
      Send, {e down}
      KeyWait, %Key4%
      Send, {e up}
    } 
    ; Else If tapCount >= 2
    ; { 
    ;   Send, {Alt down}
    ;   sleep 300
    ;   Send {%Key4%}
    ;   sleep 300
    ;   Send, {Alt up}
    ; }
    Else
    { 
      Send {%Key4%}
    }
    KeyWait, %Key4%
    tapCount = 
  Return

  endTimer5:
    If GetKeyState(Key5, "P") and tapCount < 2
    {
      Send, {%Key5%}
      sleep 300
      Send, {e down}
      KeyWait, %Key5%
      Send, {e up}
    } 
    ; Else If tapCount >= 2
    ; { 
    ;   Send, {Alt down}
    ;   sleep 300
    ;   Send {%Key5%}
    ;   sleep 300
    ;   Send, {Alt up}
    ; }
    Else
    { 
      Send {%Key5%}
    }
    KeyWait, %Key5%
    tapCount = 
  Return

  GenshinClose(){
    Send !{F12}
    Run, powershell -Command "nircmd win close ititle 'genshin'", ,hide
    Run, powershell -Command "nircmd win close ititle 'amenoma'", ,hide
    Run, powershell -Command "nircmd win close ititle 'inventory kamera'", ,hide
    ; ExitApp
  }

  ; Scroll/change page in inventory
  Right::Click, 1840 540
  Left::Click, 70 540
  Up::Click, 1240 530 WheelUp
  Down::Click, 1240 530 WheelDown

  Enter::Click, 1660 1010

  Numpad1::Send, 1
  Numpad2::Send, 2
  Numpad3::Send, 3
  Numpad4::Send, 4
  Numpad5::Send, 5

  F12::GenshinClose()
