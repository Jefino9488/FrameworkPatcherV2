#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <api_level>"
    exit 1
fi

directory=$1
api_level=$2

directory_decompile="${directory}_decompile"

if [ -d "$directory_decompile/classes" ]; then
    java -jar tools/smali.jar a -a "$api_level" "$directory_decompile/classes" -o "$directory/classes.dex"
    echo "Recompiled $directory_decompile/classes/ to $directory/classes.dex"
else
    echo "$directory_decompile/classes directory not found, skipping recompilation."
fi

for i in {2..5}; do
    if [ -d "$directory_decompile/classes$i" ]; then
        java -jar tools/smali.jar a -a "$api_level" "$directory_decompile/classes$i" -o "$directory/classes$i.dex"
        echo "Recompiled $directory_decompile/classes$i/ to $directory/classes$i.dex"
    else
        echo "$directory_decompile/classes$i directory not. found, skipping recompilation."
    fi
done

if [ -d "$directory" ]; then
    cd "$directory" || exit 1
    7z a -tzip "../${directory}_new.jar" * || echo "Failed to create ${directory}_new.jar, but continuing"
    cd .. || exit 1
    echo "Created ${directory}_new.jar"
else
    echo "$directory not found, skipping JAR creation."
fi
