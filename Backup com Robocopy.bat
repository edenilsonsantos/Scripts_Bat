
echo off

cls

TITLE:          REALIZANDO BACKUP DE ARQUIVOS PARA F:
::            By Edenilson Santos (santoeen@gmail.com)
ECHO.

echo                       FAZENDO BACKUP DE ARQUIVOS

echo.
ECHO.
ECHO.



ROBOCOPY C:\Users\%username%\Desktop\ F:\Backup-Usuarios\Users\%username%\Desktop\ /E /R:1 /W:0 /V /ETA
ROBOCOPY C:\Users\%username%\Documents\ F:\Backup-Usuarios\Users\%username%\Documents\ /E /R:1 /W:0 /V /ETA 
ROBOCOPY C:\Users\%username%\Downloads\ F:\Backup-Usuarios\Users\%username%\Downloads\ /E /R:1 /W:0 /V /ETA 
ROBOCOPY C:\Users\%username%\Favorites\ F:\Backup-Usuarios\Users\%username%\Favorites\ /E /R:1 /W:0 /V /ETA 
ROBOCOPY C:\Users\%username%\Pictures\ F:\Backup-Usuarios\Users\%username%\Pictures\ /E /R:1 /W:0 /V /ETA 
ROBOCOPY C:\Users\%username%\Music\ F:\Backup-Usuarios\Users\%username%\Music\ /E /R:1 /W:0 /V /ETA 



:: Duvidas???  , consulte CMD, robocopy /?

echo                           FIM DO BACKUP
ECHO.
ECHO.



