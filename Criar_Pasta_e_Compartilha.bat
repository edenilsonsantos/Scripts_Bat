::            By Edenilson Santos (santoeen@gmail.com)
@echo off

:: Cria a pasta Scanner em C: , e compartilha com permissao para todos.
:: Altere o nome do local "C:\Scanner" como desejar.

::Altere abaixo o caminho e nome da pasta que deseja criar

	set caminho=c:\
	set pasta=Scanner

::Altere abaixo o nome do compartilhamento

	set nome_na_rede=Scanner


:: Não alterar daqui para baixo
MD %caminho%%pasta%

net share %nome_na_rede%=%caminho%%pasta% /GRANT:Todos,FULL
Cacls %caminho%%pasta% /T /e /G Todos:F

pause