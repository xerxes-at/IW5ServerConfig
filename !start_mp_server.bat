@echo off
::Paste the server key from https://platform.plutonium.pw/serverkeys here
set key=placeServerKeyHere
::Name of the config file the server should use. (default: server.cfg)
set cfg=server.cfg
::Name of the server shown in the title of the cmd window. This will NOT bet shown ingame.
set name=TDM 1
::Port used by the server (default: 27016)
set port=27016
::Mod name (default "")
set mod=""
::Only change this when you don't want to keep the bat files in the game folder. MOST WON'T NEED TO EDIT THIS!
set gamepath=%cd%

title PlutoniumIW5 - %name% - Server restarter
echo Visit plutonium.pw / Join the Discord (a6JM2Tv) for NEWS and Updates!
echo Server "%name%" will load %cfg% and listen on port %port% UDP!
echo To shut down the server close this window first!
echo (%date%)  -  (%time%) %name% server start.

cd /D %LOCALAPPDATA%\Plutonium
:server
start /wait /abovenormal bin\plutonium-bootstrapper-win32.exe iw5mp "%gamepath%" -dedicated +set key %key% +set fs_game %mod% +set sv_config %cfg% +net_port %port% +start_map_rotate
echo (%date%)  -  (%time%) WARNING: %name% server closed or dropped... server restarts.
goto server