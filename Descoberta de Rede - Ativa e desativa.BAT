@echo off
::            By Edenilson Santos (santoeen@gmail.com)
cls
:start
ECHO Por Favor Selecione um Comando Abaixo
echo.
echo.
ECHO 1) Habilitar Descoberta de Rede
ECHO 2) Desabilitar Descoberta de Rede
echo.
set choice=
set /p choice=Digite o Numero do Comando : 
IF NOT '%Choice%'=='' SET Choice=%Choice:~0,9%
if '%choice%'=='1' goto enable
if '%choice%'=='2' goto disable

:enable
netsh advfirewall firewall set rule group="descoberta de rede" new enable=yes
netsh advfirewall firewall set rule group="compartilhamento de arquivo e impressora" new enable=yes
cls
Echo Network Discovery Enabled
ping localhost -n 2 >nul
goto pause
exit

:disable
netsh advfirewall firewall set rule group="descoberta de rede" new enable=no
netsh advfirewall firewall set rule group="compartilhamento de arquivo e impressora" new enable=no
cls
Echo Network Discovery Disabled
ping localhost -n 2 >nul
goto pause
exit
