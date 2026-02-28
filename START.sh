#!/bin/bash

echo "===================================================="
echo "   PulseChain Validator Staking Launchpad"
echo "   Built for ValidatorStore.com customers"
echo "===================================================="
echo ""

echo "Opening PulseChain Staking Launchpad in your browser..."
xdg-open http://127.0.0.1:5500/index.html 2>/dev/null || echo "Browser will open automatically..."

echo ""
echo "Starting local web server on port 5500..."
echo "(Keep this terminal window open while using the tool)"
echo ""

# Try Python commands in order
if command -v python3 >/dev/null 2>&1; then
    echo "Using Python 3..."
    python3 -m http.server 5500 --directory .
elif command -v python >/dev/null 2>&1; then
    echo "Using Python..."
    python -m http.server 5500 --directory .
else
    echo "❌ Python not found."
    echo ""
    echo "Quick fix (on Ubuntu/Debian):"
    echo "   sudo apt update && sudo apt install python3"
    echo ""
    echo "On Fedora: sudo dnf install python3"
    echo "On Arch:   sudo pacman -S python"
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi