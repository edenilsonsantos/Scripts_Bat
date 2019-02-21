
echo off

::            By Edenilson Santos (santoeen@gmail.com)

cls


title:                       FAZENDO BACKUP DE ARQUIVOS PARA F:
ECHO.

echo                         AGUARDE ENQUANTO REALIZAMOS O BACKUP
ECHO.
ECHO.                        PARA INTERROMPER, FECHE ESTA JANELA.

echo.
ECHO.
ECHO.
:: copia todos arquivos da pasta em C: para \\IP_PC_destino\Pasta  ou \\servidor\pasta

xcopy "C:\Users\%username%\desktop\*.*" "F:\%username%\desktop\" /D /E /Y /C /K /H


:: obs os dois pontos torna a linha comentada.

:: XCOPY C:\Backup_Server\*.* \\servidor\publico\ /D /E /Y /C /K 
:: XCOPY C:\Backup_Server\*.* F:\ /D /E /Y /C /K 
:: XCOPY C:\Backup_Server\*.* \\IP_Servidor\publico\ /D /E /Y /C /K 

echo                                       FIM DO BACKUP
ECHO.
ECHO.

exit