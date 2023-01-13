#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
SetTitleMatchMode, 1

Run, powershell -Command "schtasks /RUN /TN 'launchRaid'", ,hide
Run, powershell -Command "schtasks /RUN /TN 'launchHellHades'", ,hide
Run, powershell -Command "schtasks /RUN /TN 'launchRaidHelper'", ,hide

WinWait, Raid: Shadow Legends
Sleep, 1000
WinActivate, Raid: Shadow Legends
WinMaximize, Raid: Shadow Legends
Run, powershell -Command "nircmd win max process 'Raid.exe'"

WinWaitClose, Raid: Shadow Legends

Run, powershell -Command "nircmd killprocess HellHades.ArtifactExtractor.exe", ,hide
Run, powershell -Command "nircmd win close ititle 'Hell Hades'", ,hide
Run, powershell -Command "nircmd win close ititle 'HellHades'", ,hide
Run, powershell -Command "nircmd killprocess PlariumPlayClientService.exe", ,hide
Run, powershell -Command "nircmd killprocess PlariumPlayInfo.exe", ,hide
sleep 1000
Run, powershell -Command "nircmd killprocess PlariumPlay.exe", ,hide

ExitApp, 0