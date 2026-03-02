#!/bin/bash
cd "$(dirname "$0")"

echo "===================================================="
echo "   PulseChain Validator Staking Launchpad"
echo "   Built for ValidatorStore.com customers"
echo "===================================================="
echo ""

echo "Opening PulseChain Staking Launchpad in your browser..."
open http://127.0.0.1:5500/index.html

echo ""
echo "Starting local web server on port 5500..."
echo "(Keep this Terminal window open while using the tool)"
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
    echo "Quick fix (30 seconds):"
    echo "1. Go to https://www.python.org/downloads/"
    echo "2. Download and install the latest Python 3"
    echo "3. Come back and double-click Start.command again."
    echo ""
    read -p "Press Enter to exit..."
    exit 1
fi