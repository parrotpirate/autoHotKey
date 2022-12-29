#IfWinExist, ahk_exe Raid.exe
  #NoEnv
  #SingleInstance, Force
  SendMode, Input
  SetBatchLines, -1
  SetWorkingDir, %A_ScriptDir%
  #MaxThreadsPerHotkey, 2
  SetTitleMatchMode, 2

  ^+r::
    Toggle := !Toggle
    loop
    {
      If not Toggle
        Break
      If not WinExist("Raid")
        Break
      WinGetActiveTitle, Title
      WinActivate, Raid
      ControlSend, , r, Raid
      WinActivate, %Title%
      sleep 10000
    }

  ^+q::
    {
      Run, powershell -Command "nircmd killprocess HellHades.ArtifactExtractor.exe", ,hide
      Run, powershell -Command "nircmd killprocess Raid.exe", ,hide
      Run, powershell -Command "nircmd killprocess PlariumPlayClientService.exe", ,hide
      Run, powershell -Command "nircmd killprocess PlariumPlayInfo.exe", ,hide
      sleep 1000
      Run, powershell -Command "nircmd killprocess PlariumPlay.exe", ,hide
    }

#IfWinExist