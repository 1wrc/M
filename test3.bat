@echo off
chcp 65001 >nul
color 3
cls

:menu
cls
title Zellogi Tool
echo 	███████╗███████╗██╗     ██╗      ██████╗  ██████╗ ██╗
echo 	╚══███╔╝██╔════╝██║     ██║     ██╔═══██╗██╔════╝ ██║
echo 	 ███╔╝  ██╔══╝  ██║     ██║     ██║   ██║██║   ██║██║
echo 	███████╗███████╗███████╗███████╗╚██████╔╝╚██████╔╝██║
echo 	╚══════╝╚══════╝╚══════╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝v1.0.0
echo 	                                                     
echo.
echo Made by Akuma
echo.
set /p user=Username: 
echo.
set /p pass=Password: 
echo.

if "%user%"=="root" if "%pass%"=="root" goto success

echo [!] Invalid Login. Please try again... [!]
pause
goto menu

:success
title Zellogi Tool - Currently Logged in as [%user%]
cls
echo.
echo 	                           ███████╗███████╗██╗     ██╗      ██████╗  ██████╗ ██╗
echo 	                           ╚══███╔╝██╔════╝██║     ██║     ██╔═══██╗██╔════╝ ██║
echo 	                            ███╔╝  ██╔══╝  ██║     ██║     ██║   ██║██║   ██║██║
echo 	                           ███████╗███████╗███████╗███████╗╚██████╔╝╚██████╔╝██║
echo 	                           ╚══════╝╚══════╝╚══════╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝v1.0.0
echo 	                                                     
echo  	                            ╔═══════════════════════════════════════════════╗
echo  	                            ║                                               ║
echo   	                            ║        1 - Discord Token                      ║
echo 	                            ║        2 - Credits                            ║
echo 	                            ║        3 - Credits                            ║
echo  	                            ╚═══════════════════════════════════════════════╝
echo.

set /p a=Select an option [%user%]: 
if "%a%"=="1" goto one
if "%a%"=="2" goto two

echo [!] Invalid Choice. Please try again... [!]
pause
goto success

:one
start https://discord.gg/rujrrSeQup
goto success

:two
cls
echo Made by Akuma
timeout 2 >nul
pause
goto success
