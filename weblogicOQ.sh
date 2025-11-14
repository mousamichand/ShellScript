#!/bin/bash

SERVICE_USER="weblogic"

printf "\n%-20s | %-10s\n" "Validation Check" "Result"
printf "%-20s-+-%-10s\n" "--------------------" "----------"

if id "$SERVICE_USER" &>/dev/null; then
    printf "%-20s | %-10s\n\n" "User Exists" "YES"
else
    printf "%-20s | %-10s\n" "User Exists" "NO"
    printf "%-20s | %-10s\n\n" "Recommendation" "Create user"
    exit 1
fi
