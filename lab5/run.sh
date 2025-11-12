#!/bin/bash
# ----------------------------------------------------------
# Script Name: run.sh
# Purpose: Build and run the Java application using Maven
# Author: Your Name
# Usage:
#   1️⃣ Give permission once:   chmod +x run.sh
#   2️⃣ Run the script:          ./run.sh
# ----------------------------------------------------------

# Java class to execute (change if needed)
APP_MAIN_CLASS="lab5.BeanInjection"

# Check if Java is installed
if ! command -v java &> /dev/null; then
  echo "❌ Java not found!"
  echo "👉 Please install Java 17 or newer."
  echo "   For Ubuntu/Debian:"
  echo "     sudo apt update && sudo apt install openjdk-17-jdk -y"
  echo "   For macOS (Homebrew):"
  echo "     brew install openjdk@17"
  exit 1
fi

# Check if Maven is installed
if ! command -v mvn &> /dev/null; then
  echo "❌ Maven not found!"
  echo "👉 Please install Maven."
  echo "   For Ubuntu/Debian:"
  echo "     sudo apt install maven -y"
  echo "   For macOS (Homebrew):"
  echo "     brew install maven"
  exit 1
fi

# Clean and compile the project quietly
echo "🔧 Building the project..."
mvn clean compile -q
if [ $? -ne 0 ]; then
  echo "❌ Build failed! Fix errors and try again."
  exit 1
fi

# Run the application
echo "🚀 Running $APP_MAIN_CLASS ..."
mvn exec:java -Dexec.mainClass="$APP_MAIN_CLASS"

# commadns for execution

# chmod +x run.sh
# mvn clean compile -q
# mvn exec:java -Dexec.mainClass="lab4.DependencyInjectionApplication"
