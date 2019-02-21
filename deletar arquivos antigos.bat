@echo off

::            By Edenilson Santos (santoeen@gmail.com)

::Procura e exclui, arquivos e pastas de mais de 10 dias, no caminho informado.
::baseado na data de modificação.


forfiles -p "c:\Scanner" -s -d -10 -m * -c "cmd /c del /s /f /q @path"


cd..
cd c:\Scanner


::A linha abaixo exclui pastas vazias

for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d"


pause