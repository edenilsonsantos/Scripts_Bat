:: Script para configurar IP DHCP ( Dynamic )
::            By Edenilson Santos (santoeen@gmail.com)

@echo off

netsh interface ip set address "Conex∆o Local" DHCP

netsh interface ip set dnsservers "Conex∆o local" DHCP


exit
