@echo off
rem Cooks SD_Toolbox_19.sbs with Substance Designer's own sbscooker: every graph is compiled, errors are listed.
rem Writes tools\validate_log.txt; the .sbsar goes to %TEMP% so the library never sees a duplicate.
setlocal
set "SD=C:\Program Files (x86)\Steam\steamapps\common\Substance 3D Designer 2023"
set "HERE=%~dp0..\"
set "LOG=%~dp0validate_log.txt"
> "%LOG%" echo SD_Toolbox_19 validate %date% %time%
if not exist "%SD%\sbscooker.exe" (echo ERROR sbscooker.exe not found in "%SD%" >> "%LOG%" & dir /b "%SD%" >> "%LOG%" & goto :end)
set "OUT=%TEMP%\SD_Toolbox_19\validate_out"
if not exist "%OUT%" mkdir "%OUT%"
"%SD%\sbscooker.exe" --inputs "%HERE%SD_Toolbox_19.sbs" --output-path "%OUT%" >> "%LOG%" 2>&1
echo EXITCODE %errorlevel% >> "%LOG%"
dir "%OUT%" >> "%LOG%" 2>&1
:end
type "%LOG%"
endlocal
