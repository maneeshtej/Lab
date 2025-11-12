#!/bin/bash

mvn exec:java -Dexec.mainClass="$APP_MAIN_CLASS"
#!/bin/bash
# ----------------------------------------------------------
# Script Name: run.sh
# Purpose: Launch a local web server for index.html using npx
# Usage:
#   1️⃣ Give permission once:  chmod +x run.sh
#   2️⃣ Run the script:         ./run.sh
# ----------------------------------------------------------

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
  echo "❌ Node.js not found!"
  echo "👉 Please install Node.js first."
  echo "   For Ubuntu/Debian:"
  echo "     sudo apt update && sudo apt install nodejs npm -y"
  echo "   For macOS (Homebrew):"
  echo "     brew install node"
  exit 1
fi

# Check if npx is available
if ! command -v npx &> /dev/null; then
  echo "❌ npx not found! Installing npm..."
  npm install -g npm
fi

# Run the local server on port 3000
echo "🚀 Starting local server..."
npx serve -l 3000

# The app will now be available at:
# http://localhost:3000
