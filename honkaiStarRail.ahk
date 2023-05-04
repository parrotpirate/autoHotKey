#IfWinActive, ahk_exe StarRail.exe
  #NoEnv
  #SingleInstance, Force
  SendMode, Input
  SetBatchLines, -1
  SetWorkingDir, %A_ScriptDir%

  StarRailClose() {
    WinClose, ahk_exe StarRail.exe
  }

  F12::StarRailClose()