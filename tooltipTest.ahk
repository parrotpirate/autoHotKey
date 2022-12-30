#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

F4::
  Toggle := !Toggle
  loop
  {
    If not Toggle
      {
        ToolTip, , 0, 0, 1
        Break
      }
      ToolTip, %A_Index%, 0, 0, 1
      sleep 10000
  }

