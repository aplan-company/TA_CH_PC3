@echo off
setlocal enabledelayedexpansion
rem === PC3 : screen 3 (wall 4400x1200) - game files come from PC1 relay ===
set SCREEN=3
set MASTER=192.168.5.20
echo waiting for PC1 (%MASTER%:8090) ...
:wait
curl -s -m 2 http://%MASTER%:8090/status >nul 2>nul
if errorlevel 1 (timeout /t 2 /nobreak >nul & goto wait)
set "URL=http://%MASTER%:8090/santa_split.html?screen=%SCREEN%&ws=ws://%MASTER%:8090&hud=0"
start "" chrome --new-window --start-fullscreen --autoplay-policy=no-user-gesture-required --disable-background-timer-throttling --disable-renderer-backgrounding --disable-backgrounding-occluded-windows "!URL!"
