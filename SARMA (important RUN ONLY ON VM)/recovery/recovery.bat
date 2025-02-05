@echo off
taskkill /f /im wscript.exe
del "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\WinWagon.vbs"
echo Prank Removed! Restart your PC.
pause
