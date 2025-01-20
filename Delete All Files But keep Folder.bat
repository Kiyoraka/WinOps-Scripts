@echo off
:: Prompt the user to enter the folder path
set /p folderPath=Enter the full path of the folder: 

:: Check if the folder exists
if not exist "%folderPath%" (
    echo The specified folder does not exist.
    pause
    exit /b
)

:: Confirm with the user before deleting files
echo You are about to delete all files in: %folderPath%
set /p confirm=Are you sure? (Y/N): 

if /i "%confirm%" NEQ "Y" (
    echo Operation cancelled.
    pause
    exit /b
)

:: Navigate to the folder
cd "%folderPath%"

:: Remove all files in the folder and subfolders
del /q /s *.*

:: Notify the user of completion
echo All files in "%folderPath%" have been deleted but folders are retained.
pause
