@echo off
set "LNK=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\TA_CH_PC3.lnk"
if exist "%LNK%" (del "%LNK%" & echo [OK] autostart removed) else (echo autostart was not installed)
pause
