@echo off

::            By Edenilson Santos (santoeen@gmail.com)

Title: Ativar ou Desativar Placa de Rede
echo.
echo.
:menu

echo.
echo.
echo.    1) Desativa Placa de Internet
echo.    2) Ativa  a Placa de Internet
echo.    3) Sair 
echo.
echo.
set /p op=.    Escolha um comando :
echo.
if %op%==1 (cls&goto desativa)
if %op%==2 (cls&goto ativa)
if %op%==3 (exit)
goto menu


:ativa
netsh interface set interface "ConexÆo Local" enabled

cls
echo.
echo   Placa de Rede Ativada com Sucesso.
echo.
echo   Pressione qualquer tecla para continuar.
pause >nul
goto menu


:desativa

netsh interface set interface "ConexÆo Local" disabled

cls
echo.
echo   Placa de Rede desativada com Sucesso.
echo.
echo   Pressione qualquer tecla para continuar.
pause >nul
goto menu

