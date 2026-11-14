@echo off
title DocKendra Backend

cd /d "%~dp0"

echo.
echo =================================
echo       DOCKENDRA BACKEND
echo =================================
echo.

if not exist "venv\Scripts\python.exe" (
    echo ERROR: Virtual environment not found!
    pause
    exit /b
)

echo Starting server...
echo.

"venv\Scripts\python.exe" -m uvicorn backend.main:app --reload

echo.
echo Backend stopped.
pause