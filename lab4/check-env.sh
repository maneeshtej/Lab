#!/bin/bash
echo "=== Environment Check ==="

REQUIRED_JAVA=17

if command -v java &> /dev/null; then
  JAVA_VERSION=$(java -version 2>&1 | awk -F[\".] '/version/ {print $2}')
  echo "Java version detected: $JAVA_VERSION"
  if [ "$JAVA_VERSION" -lt "$REQUIRED_JAVA" ]; then
    echo "❌ Java version too low. Please install Java $REQUIRED_JAVA or higher."
    exit 1
  else
    echo "✅ Java version OK"
  fi
else
  echo "❌ Java not installed!"
  exit 1
fi

if command -v mvn &> /dev/null; then
  MAVEN_VERSION=$(mvn -v | awk '/Apache Maven/ {print $3}')
  echo "Maven version detected: $MAVEN_VERSION"
  echo "✅ Maven found"
else
  echo "❌ Maven not installed!"
  exit 1
fi

echo "All checks passed!"
