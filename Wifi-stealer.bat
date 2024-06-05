@echo off
title WifiStealer - adixon23w
color 4
:menu
cls
type "banner.txt"
set /p input=Show Saved Wifi? (y/n) 
if /I "%input%" EQU "y" goto show
if /I "%input%" EQU "n" goto next


:next
cls
type "banner.txt"
set /p wifi=Enter Wifi Name:
cls
TYPE "banner.txt"
echo. KEY CONTENT IS PASSOWORD
echo. KEY CONTENT IS PASSOWORD
timeout 5 > NUL
netsh wlan show profiles "%wifi%" key=clear
pause
goto menu

:show
cls
type "banner.txt"
netsh wlan show profiles
pause
goto next
