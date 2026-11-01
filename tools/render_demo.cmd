@echo off
rem Renders every tool's demo inputs/outputs (graph SD_Toolbox_19_Renders) to %TEMP%\SD_Toolbox_19\render\png with Designer's sbsrender.
rem Writes tools\render_log.txt and %USERPROFILE%\Downloads\SD19_renders.zip (PNGs + logs) to send back.
setlocal
set "SD=C:\Program Files (x86)\Steam\steamapps\common\Substance 3D Designer 2023"
set "T=%~dp0"
set "R=%TEMP%\SD_Toolbox_19\render"
set "LOG=%T%render_log.txt"
if exist "%R%" rmdir /s /q "%R%"
mkdir "%R%\png"
rem render package kept as .sbs.xml in the repo so the Designer library does not list it twice
copy /y "%T%render_package.sbs.xml" "%R%\SD_Toolbox_19_Renders.sbs" >nul
> "%LOG%" echo SD_Toolbox_19 render %date% %time%
echo == COOK >> "%LOG%"
"%SD%\sbscooker.exe" --inputs "%R%\SD_Toolbox_19_Renders.sbs" --output-path "%R%" >> "%LOG%" 2>&1
echo EXITCODE %errorlevel% >> "%LOG%"
dir /b "%R%" >> "%LOG%"
echo == RENDER pass 1 >> "%LOG%"
"%SD%\sbsrender.exe" render --input "%R%\SD_Toolbox_19_Renders.sbsar" --input-graph "SD_Toolbox_19_Renders" --output-path "%R%\png" --output-name "{outputNodeName}" --output-format png --set-value "$outputsize@11,11" >> "%LOG%" 2>&1
echo EXITCODE %errorlevel% >> "%LOG%"
dir /b "%R%\png\*.png" >nul 2>&1 || (
  echo == RENDER pass 2 pkg url >> "%LOG%"
  "%SD%\sbsrender.exe" render --input "%R%\SD_Toolbox_19_Renders.sbsar" --input-graph "pkg://SD_Toolbox_19_Renders" --output-path "%R%\png" --output-name "{outputNodeName}" --output-format png --set-value "$outputsize@11,11" >> "%LOG%" 2>&1
  echo EXITCODE %errorlevel% >> "%LOG%"
)
echo == PNG FILES >> "%LOG%"
dir /b "%R%\png" >> "%LOG%" 2>&1
copy /y "%T%render_log.txt" "%R%\png\" >nul
if exist "%T%validate_log.txt" copy /y "%T%validate_log.txt" "%R%\png\" >nul
powershell -NoProfile -Command "Compress-Archive -Force -Path '%R%\png\*' -DestinationPath '%USERPROFILE%\Downloads\SD19_renders.zip'"
type "%LOG%"
echo.
echo Send back: %USERPROFILE%\Downloads\SD19_renders.zip
endlocal
