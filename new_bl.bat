@echo off
cls

:menu
echo.
echo ...............................................
echo PRESS 1, 2, 3, 4, 5, OR 6 to select your task, or 7 to EXIT.
echo ...............................................
echo.
echo 1 - Check BitLocker status 
echo 2 - Turn on BitLocker
echo 3 - Turn off BitLocker
echo 4 - Pause BitLocker
echo 5 - Resume BitLocker
echo 6 - EXIT
echo.

set /p choice=Type 1, 2, 3, 4, 5, or 6 then press ENTER:

if "%choice%" == "1" goto status
if "%choice%" == "2" goto on
if "%choice%" == "3" goto off
if "%choice%" == "4" goto pause
if "%choice%" == "5" goto resume
if "%choice%" == "6" goto eof

:status
echo Enter the name of the computer you want to check the BitLocker status of:
set /p computer=Computer name: 
manage-bde -status C: -cn %computer% 2>nul
if errorlevel 1 (
  echo An error occurred. Make sure the computer name is correct and try again.
) else (
  echo BitLocker status check was successful.
)
pause
goto menu

:on
echo Enter the name of the computer you want to turn on BitLocker on:
set /p computer=Computer name: 
manage-bde -on C: -cn %computer% 2>nul
if errorlevel 1 (
  echo An error occurred. Make sure the computer name is correct and try again.
) else (
  echo BitLocker was turned on successfully.
)
pause
goto menu

:off
echo Enter the name of the computer you want to turn off BitLocker on:
set /p computer=Computer name: 
manage-bde -off C: -cn %computer% 2>nul
if errorlevel 1 (
  echo An error occurred. Make sure the computer name is correct and try again.
) else (
  echo BitLocker was turned off successfully.
)
pause
goto menu

:pause
echo Enter the name of the computer you want to pause BitLocker on:
set /p computer=Computer name: 
manage-bde -pause C: -cn %computer% 2>nul
if errorlevel 1 (
  echo An error occurred. Make sure the computer name is correct and try again.
) else (
  echo BitLocker was paused successfully.
)
pause
goto menu

:resume
echo Enter the name of the computer you want to resume BitLocker on:
set /p computer=Computer name: 
manage-bde -resume C: -cn %computer% 2>nul
if errorlevel 1 (
  echo An error occurred. Make sure the computer name is correct and try again.
) else (
  echo BitLocker was resumed successfully.
)
pause
goto menu
