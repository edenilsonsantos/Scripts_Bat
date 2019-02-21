@echo off

::            By Edenilson Santos (santoeen@gmail.com)

set /p palavra= Digite uma palavra :





FINDSTR /o /i /s "%palavra%" C:\*.*

echo.
echo.
echo Aperte qualquer tecla para voltar ao Menu

pause>nul