#!/bin/bash

LOG_DIR="scripts/logs"
TIME=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="$LOG_DIR/validation_$TIME.log"

mkdir -p $LOG_DIR

echo "Validation started at $TIME" > $LOG_FILE

if [ -f README.md ]; then
  echo "README exists ✅" >> $LOG_FILE
else
  echo "README missing ❌" >> $LOG_FILE
  exit 1
fi

echo "Validation completed successfully" >> $LOG_FILE
exit 1
exit 1
