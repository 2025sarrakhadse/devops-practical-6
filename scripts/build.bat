
@echo off

echo ====================================
echo       JENKINS FREESTYLE BUILD
echo ====================================

REM TODO 1: Display welcome message
echo Welcome to Jenkins Freestyle Build

echo Build Started Successfully

REM TODO 2: Display current date and time
echo Current Date: %DATE%
echo Current Time: %TIME%

REM TODO 3: Display logged-in username
echo Logged-in User: %USERNAME%

REM TODO 4: Display operating system information
echo Operating System Information:
ver

REM TODO 5: Display current working directory
echo Current Working Directory:
cd

REM Create output directory
if not exist output mkdir output

echo Output directory created

REM TODO 6: Create build-report.txt
(
echo Project Name: Jenkins Freestyle Build
echo Build Date: %DATE% %TIME%
echo Build Status: SUCCESS
) > output\build-report.txt

REM Create system-info.txt
(
echo System Information
echo =================
echo Username: %USERNAME%
echo Date: %DATE%
echo Time: %TIME%
echo Operating System:
ver
echo Current Directory:
cd
) > output\system-info.txt

REM TODO 7: Display contents of build-report.txt
echo.
echo BUILD REPORT:
type output\build-report.txt

echo.
echo ====================================
echo       BUILD COMPLETED
echo ====================================

exit /b 0