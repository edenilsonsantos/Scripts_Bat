@echo off

:: By Edenilson Santos
:: Ler linhas de um arquivo hostnames.txt
:: Mover um Arquivo.MSI para uma lista de computadores Destino 
:: Realizar a instalação silenciosa remotamente


:: REQUISITOS:
:: crie um arquivo hostnames.txt contendo os nomes dos computadores 
:: coloque na pasta C:\Temp, os seguintes arquivos... ( PsExec.exe, app_instalador.msi, hostnames.txt )
:: em seguida execute como administrador a script "mover_e_instalar_varios_computadores.bat"


FOR /F %%i IN (c:\temp\hostnames.txt) DO (
	echo movendo para %%i 
	copy c:\temp\app_instalador.msi \\%%i\c$\Temp\app_instalador.msi
	timeout 3
	c:\temp\PsExec.exe -s \\%%i -accepteula -h -u adm_user_here -p password_here cmd /c start /wait msiexec.exe /i c:\temp\app_instalador.msi /quiet /norestart
)


echo.
echo Terminou de executar a lista...
echo.
pause