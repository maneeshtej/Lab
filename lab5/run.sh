#!/bin/bash
APP_MAIN_CLASS="lab5.BeanInjection"

if ! command -v java &> /dev/null; then
  echo "❌ Java not found! Install Java 17+."; exit 1
fi
if ! command -v mvn &> /dev/null; then
  echo "❌ Maven not found! Install Maven."; exit 1
fi

mvn clean compile -q
if [ $? -ne 0 ]; then echo "❌ Build failed"; exit 1; fi

mvn exec:java -Dexec.mainClass="$APP_MAIN_CLASS"
