#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <api_level>"
    exit 1
fi

directory=$1
api_level=$2

jar_file="${directory}.jar"
if [ -f "$jar_file" ]; then
    7z x "$jar_file" -o"$directory"
else
    echo "$jar_file not found, skipping extraction."
    exit 0
fi

if [ -f "$directory/classes.dex" ]; then
    java -jar tools/baksmali.jar d -a "$api_level" "$directory/classes.dex" -o "classes"
    echo "Decompiled $directory/classes.dex to classes/"
else
    echo "$directory/classes.dex not found, skipping decompilation."
fi

for i in {2..5}; do
    if [ -f "$directory/classes${i}.dex" ]; then
        java -jar tools/baksmali.jar d -a "$api_level" "$directory/classes${i}.dex" -o "classes${i}"
        echo "Decompiled $directory/classes${i}.dex to classes${i}/"
    else
        echo "$directory/classes${i}.dex not found, skipping decompilation."
    fi
done