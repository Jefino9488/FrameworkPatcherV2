#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <api_level>"
    exit 1
fi

directory=$1
api_level=$2

if [ -d "classes" ]; then
    java -jar smali.jar a -a "$api_level" classes -o "$directory/classes.dex"
    echo "Recompiled classes/ to $directory/classes.dex"
else
    echo "classes directory not found, skipping recompilation."
fi

for i in {2..5}; do
    if [ -d "classes$i" ]; then
        java -jar smali.jar a -a "$api_level" "classes$i" -o "$directory/classes$i.dex"
        echo "Recompiled classes$i/ to $directory/classes$i.dex"
    else
        echo "classes$i directory not found, skipping recompilation."
    fi
done

if [ -d "$directory" ]; then
    cd "$directory" || exit 1
    7z a -tzip "../${directory}_new.zip" *
    cd .. || exit 1
    echo "Created ${directory}_new.zip"
else
    echo "$directory not found, skipping JAR creation."
fi