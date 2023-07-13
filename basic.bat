@echo off
echo Windows Error Solver
echo.

:Menu
echo Please select an option:
echo 1. Check Disk for Errors
echo 2. Run System File Checker (SFC)
echo 3. Run Deployment Image Servicing and Management (DISM)
echo 4. Exit

set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" goto CheckDisk
if "%choice%"=="2" goto RunSFC
if "%choice%"=="3" goto RunDISM
if "%choice%"=="4" goto :EOF

:CheckDisk
echo Checking Disk for Errors...
chkdsk /f /r
echo.
goto Menu

:RunSFC
echo Running System File Checker (SFC)...
sfc /scannow
echo.
goto Menu

:RunDISM
echo Running Deployment Image Servicing and Management (DISM)...
DISM /Online /Cleanup-Image /RestoreHealth
echo.
goto Menu
