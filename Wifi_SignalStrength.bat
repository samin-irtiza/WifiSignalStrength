@ECHO OFF

:loop
netsh wlan show interfaces | for /F "tokens=2* delims=: " %%i in ('findstr /I "signal"') do @echo Strength : %%i
timeout /t 1 /NOBREAK>nul
goto loop