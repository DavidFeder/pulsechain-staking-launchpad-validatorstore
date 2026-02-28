@echo off
title PulseChain Validator Staking Launchpad - ValidatorStore.com

echo ======================================================
echo   PulseChain Validator Staking Launchpad
echo   Built for ValidatorStore.com customers
echo ======================================================
echo.

echo Opening PulseChain Staking Launchpad in your browser...
start http://127.0.0.1:5500/index.html

echo.
echo Starting local web server on port 5500...
echo (Keep this window open while using the tool)
echo.

REM Try different Python commands - visible output this time
echo Trying Python 3...
python3 -m http.server 5500 --directory . 2>&1 && goto :success

echo Trying Python (py)...
py -m http.server 5500 --directory . 2>&1 && goto :success

echo Trying Python (python)...
python -m http.server 5500 --directory . 2>&1 && goto :success

echo.
echo ❌ Python not found on your computer.
echo.
echo Please install Python 3 (30-second fix):
echo 1. Go to https://www.python.org/downloads/
echo 2. Download the latest Python 3.x installer
echo 3. Run it and **CHECK "Add python.exe to PATH"**
echo 4. Click Install Now
echo 5. Come back and double-click START.bat again.
echo.
pause
exit

:success
echo.
echo ✅ Server is running!
echo.
echo You can now use the staking tool in your browser.
echo When finished, close this window (Ctrl+C or click X).
echo.
pause