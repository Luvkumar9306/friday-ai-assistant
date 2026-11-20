@echo off
echo ===================================================
echo               F.R.I.D.A.Y. LAUNCHER
echo ===================================================
echo.

echo [1/3] Starting Local LiveKit Server (Unlimited Minutes)...
start "LiveKit Server" cmd /k "cd livekit && livekit-server.exe --dev"
timeout /t 3 /nobreak >nul

echo [2/3] Starting F.R.I.D.A.Y. Backend (MCP Server)...
start "MCP Server" cmd /k "uv run friday"
timeout /t 3 /nobreak >nul

echo [3/3] Starting Voice Agent...
start "Voice Agent" cmd /k "uv run friday_voice"

echo.
echo ===================================================
echo ALL SYSTEMS GO!
echo ===================================================
echo.
echo To talk to FRIDAY:
echo 1. Open your browser and go to: https://agents-playground.livekit.io
echo 2. Click the Settings/Connect button.
echo 3. Set the LiveKit URL to: ws://127.0.0.1:7880
echo 4. Set the Token (if asked) using devkey / secret
echo.
pause
