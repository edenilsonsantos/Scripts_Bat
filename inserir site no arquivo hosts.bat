::            By Edenilson Santos (santoeen@gmail.com)

@ECHO off



setLocal EnableDelayedExpansion
cd C:\Windows\system32\drivers\etc
find /i"www.adobe.com.br" < hosts > nul
if errorlevel 1 (echo 127.0.0.1 www.adobe.com.br >> hosts && echo 127.0.0.1 www2.adobe.com.br >> hosts && echo 127.0.0.1 servidor.exemplo.com.br >> hosts)
exit