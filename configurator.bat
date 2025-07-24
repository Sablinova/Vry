@echo off
"aVT.exe" --config 2>nul
if %ERRORLEVEL% NEQ 0 (
    color 0C
    echo Executable failed, trying Python...
    python main.py --config 2>nul
    if %ERRORLEVEL% NEQ 0 (
        echo Python also failed!
        echo Try reinstalling AVT or Python to fix this issue.
        pause >nul
    )
)
