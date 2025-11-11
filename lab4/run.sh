#!/bin/bash
# Simple runner script for Spring DI project

APP_MAIN_CLASS="lab4.DependencyInjectionApplication"

echo "=== Spring DI Runner ==="

# Step 1: Check for Java
if ! command -v java &> /dev/null
then
  echo "❌ Java not found. Please install Java 17 or higher."
  exit 1
fi

# Step 2: Check for Maven
if ! command -v mvn &> /dev/null
then
  echo "❌ Maven not found. Please install Maven."
  exit 1
fi

# Step 3: Show versions
echo "Java version:"
java -version | head -n 1
echo ""
echo "Maven version:"
mvn -v | head -n 1
echo ""

# Step 4: Clean and compile
echo "Compiling project..."
mvn clean compile -q

if [ $? -ne 0 ]; then
  echo "❌ Build failed."
  exit 1
fi

# Step 5: Run application
echo ""
echo "Running Spring Dependency Injection Application..."
echo "----------------------------------------------"
mvn exec:java -Dexec.mainClass="$APP_MAIN_CLASS"
echo "----------------------------------------------"
echo "✅ Done!"
