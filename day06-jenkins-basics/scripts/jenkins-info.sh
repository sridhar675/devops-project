#!/bin/bash

echo "=================================="
echo "       Jenkins Build Report"
echo "=================================="

echo "Job Name: ${JOB_NAME:-Manual Execution}"
echo "Build Number: ${BUILD_NUMBER:-Not provided}"
echo "Build User Input: ${APP_NAME:-Not provided}"

echo "----------------------------------"
echo "Build Date:"
date

echo "----------------------------------"
echo "Checking required commands..."

if command -v date >/dev/null 2>&1; then
    echo "PASS: date command is available"
else
    echo "FAIL: date command is unavailable"
    exit 1
fi

echo "=================================="
echo "Build validation completed"
