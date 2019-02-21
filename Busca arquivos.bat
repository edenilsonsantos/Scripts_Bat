@echo off

::            By Edenilson Santos (santoeen@gmail.com)

set /p file= Digite o nome do arquivo, ou inicio do nome :

echo.
echo.
echo Aguarde, buscando arquivos...
echo.
echo.

c:
cd/
findstr /s /i /m "\ <C\>" %file%*.*
d:
cd/
findstr /s /i /m "\ <D\>" %file%*.* | more



echo.
echo.
echo Aperte qualquer tecla para voltar ao Menu

pause>nul