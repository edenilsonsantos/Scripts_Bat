@echo off

::            By Edenilson Santos (santoeen@gmail.com)

for /F "tokens=2 delims=:" %%i in ('"ipconfig | findstr IPv4"') do set LOCAL_IP=%%i
echo %LOCAL_IP%

pause