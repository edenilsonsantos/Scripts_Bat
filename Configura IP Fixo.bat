::            By Edenilson Santos (santoeen@gmail.com)
::Script para configurar IP FIXO (Static)

@echo off

set   IP=192.168.1.25
set MASK=255.255.0.0
set  GAT=192.168.1.1

set DNS1=8.8.8.8
set DNS2=8.8.4.4

:: n„o alterar daqui para baixo

netsh interface ip set address "Conex∆o Local" static %IP% %MASK% %GAT%

netsh interface ip set dnsservers "Conex∆o local" static %DNS1% primary

Netsh int ip add dns name="Conex∆o Local" %DNS2%

exit
