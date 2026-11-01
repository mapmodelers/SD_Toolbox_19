@echo off
rem Builds SD_Toolbox_19.sbs (current Designer format, no update prompt) from legacy\SD_Toolbox_19_SD2019.sbs
rem with Designer's own sbsupdater. Replaces the root file only if the update succeeded. Log: tools\update_log.txt
setlocal
set "SD=C:\Program Files (x86)\Steam\steamapps\common\Substance 3D Designer 2023"
set "REPO=%~dp0.."
set "OUT=%TEMP%\SD_Toolbox_19\update"
set "L=%~dp0update_log.txt"
> "%L%" echo SD_Toolbox_19 update %date% %time%
if exist "%OUT%" rmdir /s /q "%OUT%"
mkdir "%OUT%"
"%SD%\sbsupdater.exe" --inputs "%REPO%\legacy\SD_Toolbox_19_SD2019.sbs" --presets-path "%SD%\resources\packages" --output-path "%OUT%" --output-name "SD_Toolbox_19" >> "%L%" 2>&1
echo EXIT %errorlevel% >> "%L%"
dir /b "%OUT%" >> "%L%" 2>&1
if exist "%OUT%\SD_Toolbox_19.sbs" (copy /y "%OUT%\SD_Toolbox_19.sbs" "%REPO%\SD_Toolbox_19.sbs" >> "%L%" & echo REPLACED >> "%L%") else (echo NOT REPLACED >> "%L%")
powershell -NoProfile -Command "(Select-String -Path '%REPO%\SD_Toolbox_19.sbs' -Pattern 'formatVersion v=.[0-9.]+').Matches[0].Value" >> "%L%" 2>&1
type "%L%"
endlocal
