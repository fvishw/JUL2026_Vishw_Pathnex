#!/bin/bash
FILE="./temp.txt"

if [ -f "$FILE" ]; then
    echo "file exists"
else
    touch "$FILE"
    echo "$FILE created"
fi