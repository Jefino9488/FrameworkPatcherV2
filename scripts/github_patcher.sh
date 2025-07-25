#!/bin/bash


# Set up environment variables for GitHub workflow
TOOLS_DIR="$(pwd)/tools"
WORK_DIR="$(pwd)"
BACKUP_DIR="$WORK_DIR/backup"

# Create backup directory
mkdir -p "$BACKUP_DIR"

# Create tools directory if it doesn't exist
mkdir -p "$TOOLS_DIR"

# Check if apktool.jar exists
if [ ! -f "$TOOLS_DIR/apktool.jar" ]; then
    echo "ERROR: apktool.jar not found in $TOOLS_DIR"
    echo "Please download apktool.jar and place it in the $TOOLS_DIR directory."
    exit 1
fi

# Function to decompile JAR file
decompile_jar() {
    local jar_file="$1"
    local base_name="$(basename "$jar_file" .jar)"
    local output_dir="$WORK_DIR/${base_name}_decompile"

    echo "Decompiling $jar_file..."

    # Clean previous directories if they exist
    rm -rf "$output_dir" "${base_name}"
    mkdir -p "$output_dir"

    # Backup META-INF and resources if needed
    mkdir -p "$BACKUP_DIR/$base_name"

    # Use apktool.jar to decompile the entire JAR file at once
    # This is similar to the fby() function in dsv_a15.sh
    java -jar "$TOOLS_DIR/apktool.jar" d -q -f "$jar_file" -o "$output_dir"

    # Create unknown directory for META-INF and resources
    mkdir -p "$output_dir/unknown"

    # Extract JAR file to get META-INF and resources for backup
    mkdir -p "${base_name}"
    7z x "$jar_file" -o"${base_name}" > /dev/null

    # Backup META-INF and resources
    cp -r "${base_name}/META-INF" "$BACKUP_DIR/$base_name/" 2>/dev/null
    cp -r "${base_name}/res" "$BACKUP_DIR/$base_name/" 2>/dev/null

    # Copy META-INF and resources to unknown directory
    cp -r "${base_name}/META-INF" "$output_dir/unknown/" 2>/dev/null
    cp -r "${base_name}/res" "$output_dir/unknown/" 2>/dev/null

    echo "Decompilation of $jar_file completed"
}

# Function to recompile JAR file
recompile_jar() {
    local jar_file="$1"
    local base_name="$(basename "$jar_file" .jar)"
    local output_dir="$WORK_DIR/${base_name}_decompile"
    local patched_jar="${base_name}_patched.jar"

    echo "Recompiling $jar_file..."

    # Use apktool.jar to recompile the entire decompiled directory back to a JAR
    # This is similar to the hby() function in dsv_a15.sh
    java -jar "$TOOLS_DIR/apktool.jar" b -q -f "$output_dir" -o "$patched_jar"

    echo "Created patched JAR: $patched_jar"
    return 0
}

# Function to add static return patch
add_static_return_patch() {
    local method="$1"
    local ret_val="$2"
    local decompile_dir="$3"
    local file

    file=$(find "$decompile_dir" -type f -name "*.smali" | xargs grep -l "\.method.* $method" 2>/dev/null | head -n 1)
    [ -z "$file" ] && { echo "[!] Method $method not found"; return; }

    local start
    start=$(grep -n "^[[:space:]]*\.method.* $method" "$file" | cut -d: -f1 | head -n 1)
    [ -z "$start" ] && { echo "[!] Start of method $method not found"; return; }

    local end
    end=$(sed -n "${start},\$p" "$file" | grep -n "^[[:space:]]*\.end method" | head -n 1 | cut -d: -f1)
    end=$((start + end - 1))
    [ "$end" -le "$start" ] && { echo "[!] End of method $method not found"; return; }

    local method_head
    method_head=$(sed -n "${start}p" "$file")

    # Calculate register count based on method signature
    local param_count
    param_count=$(echo "$method" | grep -o -E '\([^\)]*\)' | tr -cd 'LJIZBSCFD' | wc -c)
    local registers=$((param_count + 2))

    # Use heredoc to safely replace method body
    local tmpfile
    tmpfile=$(mktemp)

    cat <<EOF > "$tmpfile"
$method_head
    .registers $registers
    const/4 v0, 0x$ret_val
    return v0
.end method
EOF

    sed -i "${start},${end}r $tmpfile" "$file"
    sed -i "${start},${end}d" "$file"
    rm "$tmpfile"

    echo "[+] Patched $method to return $ret_val"
}

# Function to patch return-void method
patch_return_void_method() {
    local method="$1"
    local decompile_dir="$2"
    local file

    # More robust file search - try different patterns and extensions
    file=$(find "$decompile_dir" -type f -name "*.smali" -o -name "*.java" | xargs grep -l ".method.* $method" 2>/dev/null | head -n 1)

    # If not found, try a broader search
    if [ -z "$file" ]; then
        echo "Trying broader search for $method..."
        file=$(find "$decompile_dir" -type f | xargs grep -l "$method" 2>/dev/null | head -n 1)
    fi

    [ -z "$file" ] && { echo "Method $method not found"; return; }

    local start
    # Try different patterns to find method start
    start=$(grep -n "^[[:space:]]*\.method.* $method" "$file" | cut -d: -f1 | head -n1)
    if [ -z "$start" ]; then
        start=$(grep -n "^[[:space:]]*method.* $method" "$file" | cut -d: -f1 | head -n1)
    fi
    if [ -z "$start" ]; then
        start=$(grep -n "$method" "$file" | cut -d: -f1 | head -n1)
    fi
    [ -z "$start" ] && { echo "Method $method start not found"; return; }

    local total_lines end=0 i="$start"
    total_lines=$(wc -l < "$file")
    while [ "$i" -le "$total_lines" ]; do
        line=$(sed -n "${i}p" "$file")
        [[ "$line" == *".end method"* || "$line" == *"end method"* || "$line" == *"}"* ]] && { end="$i"; break; }
        i=$((i + 1))
    done

    [ "$end" -eq 0 ] && { echo "Method $method end not found"; return; }

    local method_head
    method_head=$(sed -n "${start}p" "$file")
    method_head_escaped=$(printf "%s\n" "$method_head" | sed 's/\\/\\\\/g')

    sed -i "${start},${end}c\\
$method_head_escaped\\
    # -- DYNAMIC REGISTER PATCH BEGIN --
    # Calculate required register count
    .prologue
    # replaced in runtime by sed
    .registers DYNAMIC_REG_PLACEHOLDER
# -- DYNAMIC REGISTER PATCH END --\\
    return-void\\
.end method" "$file"

    echo "Patched $method → return-void"
}

# Function to modify invoke-custom methods
modify_invoke_custom_methods() {
    local decompile_dir="$1"
    echo "Checking for invoke-custom..."

    local smali_files
    # More robust file search - try different patterns and extensions
    smali_files=$(grep -rl "invoke-custom" "$decompile_dir" --include="*.smali" --include="*.java" 2>/dev/null)

    # If not found, try a broader search
    if [ -z "$smali_files" ]; then
        echo "Trying broader search for invoke-custom..."
        smali_files=$(find "$decompile_dir" -type f -exec grep -l "invoke-custom" {} \; 2>/dev/null)
    fi

    [ -z "$smali_files" ] && { echo "No invoke-custom found"; return; }

    for smali_file in $smali_files; do
    grep -q "^\.method" "$smali_file" || { echo "[!] Skipping non-method file $smali_file"; continue; }
        echo "Modifying: $smali_file"

        sed -i "/.method.*equals(/,/^.end method$/ {
            /^    .registers/c\    .registers 2
            /^    invoke-custom/d
            /^    move-result/d
            /^    return/c\    const/4 v0, 0x0\n\n    return v0
        }" "$smali_file"

        sed -i "/.method.*hashCode(/,/^.end method$/ {
            /^    .registers/c\    .registers 2
            /^    invoke-custom/d
            /^    move-result/d
            /^    return/c\    const/4 v0, 0x0\n\n    return v0
        }" "$smali_file"

        sed -i "/.method.*toString(/,/^.end method$/ {
            /^    .registers/c\    .registers 2
            /^    invoke-custom/d
            /^    move-result/d
            /^    return/c\    const/4 v0, 0x0\n\n    return v0
        }" "$smali_file"
    done

    echo "invoke-custom patch done"
}

# Function to patch framework.jar
patch_framework() {
    local framework_path="$WORK_DIR/framework.jar"
    local decompile_dir="$WORK_DIR/framework_decompile"

    echo "Starting framework patch..."

    # Decompile framework.jar
    decompile_jar "$framework_path"

    # Apply patches
    modify_invoke_custom_methods "$decompile_dir"

    # Patch ParsingPackageUtils isError result
    echo "Patching isError() check in ParsingPackageUtils..."
    local file
    file=$(find "$decompile_dir" -type f -path "*/com/android/internal/pm/pkg/parsing/ParsingPackageUtils.smali" | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z"
        local linenos
        linenos=$(grep -nF "$pattern" "$file" | cut -d: -f1)

        if [ -n "$linenos" ]; then
            local patched=0
            for invoke_lineno in $linenos; do
                found=0
                for offset in 1 2 3; do
                    move_lineno=$((invoke_lineno + offset))
                    line_content=$(sed -n "${move_lineno}p" "$file" | sed 's/^[ \t]*//')
                    if [[ "$line_content" == "const/4 v4, 0x0" ]]; then
                        echo "Already patched at line $move_lineno"
                        found=1
                        patched=1
                        break 2
                    fi
                    if [[ "$line_content" == "move-result v4" ]]; then
                        indent=$(sed -n "${move_lineno}p" "$file" | grep -o '^[ \t]*')
                        sed -i "$((move_lineno + 1))i\\
${indent}const/4 v4, 0x0" "$file"
                        echo "Patched const/4 v4, 0x0 after move-result v4 at line $((move_lineno + 1))"
                        found=1
                        patched=1
                        break 2
                    fi
                done
            done
            [ $patched -eq 0 ] && echo "Unable to patch: No matching pattern found where patching makes sense."
        else
            echo "Pattern not found in $file"
        fi
    else
        echo "ParsingPackageUtils.smali not found"
    fi

    # Patch invoke unsafeGetCertsWithoutVerification
    echo "Patching invoke-static call for unsafeGetCertsWithoutVerification..."
    local file
    file=$(find "$decompile_dir" -type f -name "*.smali" | xargs grep -l "ApkSignatureVerifier;->unsafeGetCertsWithoutVerification" | head -n 1)
    if [ -f "$file" ]; then
        local pattern="ApkSignatureVerifier;->unsafeGetCertsWithoutVerification"
        local line_numbers
        line_numbers=$(grep -n "$pattern" "$file" | cut -d: -f1)

        for lineno in $line_numbers; do
            local previous_line
            previous_line=$(sed -n "$((lineno - 1))p" "$file")
            echo "$previous_line" | grep -q "const/4 v1, 0x1" && {
                echo "Already patched above line $lineno"
                continue
            }
            sed -i "${lineno}i\\
    const/4 v1, 0x1" "$file"
            echo "Patched at line $((lineno)) in file: $file"
        done
    else
        echo "Smali file containing the target line not found"
    fi

    # Patch ApkSigningBlockUtils isEqual
    echo "Patching ApkSigningBlockUtils isEqual check..."
    local file
    file=$(find "$decompile_dir" -type f -path "*/android/util/apk/ApkSigningBlockUtils.smali" | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z"
        local linenos
        linenos=$(grep -nF "$pattern" "$file" | cut -d: -f1)

        if [ -n "$linenos" ]; then
            for invoke_lineno in $linenos; do
                found=0
                for offset in 1 2 3; do
                    move_result_lineno=$((invoke_lineno + offset))
                    current_line=$(sed -n "${move_result_lineno}p" "$file" | sed 's/^[ \t]*//')
                    if [[ "$current_line" == "const/4 v7, 0x1" ]]; then
                        echo "Already patched line $move_result_lineno"
                        found=1
                        break
                    fi
                    if [[ "$current_line" == "move-result v7" ]]; then
                        orig_indent=$(sed -n "${move_result_lineno}p" "$file" | grep -o '^[ \t]*')
                        sed -i "${move_result_lineno}s|.*|${orig_indent}const/4 v7, 0x1|" "$file"
                        echo "Patched move-result at line $move_result_lineno"
                        found=1
                        break
                    fi
                done
                [ $found -eq 0 ] && echo "move-result v7 not found within 3 lines after invoke-static at line $invoke_lineno"
            done
        else
            echo "Target invoke-static line not found in $file"
        fi
    else
        echo "ApkSigningBlockUtils.smali not found"
    fi

    # Patch verifyV1Signature
    echo "Patching verifyV1Signature method only..."
    local file
    file=$(find "$decompile_dir" -type f -name "*ApkSignatureVerifier.smali" | head -n 1)
    if [ -f "$file" ]; then
        local method="verifyV1Signature"

        lines=$(grep -n "$method" "$file" | cut -d: -f1)
        if [ -n "$lines" ]; then
            for lineno in $lines; do
                line_text=$(sed -n "${lineno}p" "$file")
                echo "$line_text" | grep -q "invoke-static" || continue
                next_line=$(sed -n "$((lineno + 1))p" "$file" | grep -E "\.method|\.end method")
                [ -n "$next_line" ] && continue
                above=$((lineno - 1))
                sed -n "${above}p" "$file" | grep -q "const/4 p3, 0x0" || {
                    sed -i "${lineno}i\\
    const/4 p3, 0x0" "$file"
                    echo "Patched $method"
                }
            done
        else
            echo "No $method found in $file"
        fi
    else
        echo "File not found"
    fi

    # Patch ApkSignatureSchemeV2Verifier isEqual
    echo "Patching ApkSignatureSchemeV2Verifier isEqual check..."
    local file
    file=$(find "$decompile_dir" -type f -path "*/android/util/apk/ApkSignatureSchemeV2Verifier.smali" | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-static {v8, v7}, Ljava/security/MessageDigest;->isEqual([B[B)Z"
        local linenos
        linenos=$(grep -nF "$pattern" "$file" | cut -d: -f1)

        if [ -n "$linenos" ]; then
            for invoke_lineno in $linenos; do
                found=0
                for offset in 1 2 3; do
                    move_result_lineno=$((invoke_lineno + offset))
                    current_line=$(sed -n "${move_result_lineno}p" "$file" | sed 's/^[ \t]*//')
                    if [[ "$current_line" == "const/4 v0, 0x1" ]]; then
                        echo "Already patched line $move_result_lineno"
                        found=1
                        break
                    fi
                    if [[ "$current_line" == "move-result v0" ]]; then
                        orig_indent=$(sed -n "${move_result_lineno}p" "$file" | grep -o '^[ \t]*')
                        sed -i "${move_result_lineno}s|.*|${orig_indent}const/4 v0, 0x1|" "$file"
                        echo "Patched move-result at line $move_result_lineno"
                        found=1
                        break
                    fi
                done
                [ $found -eq 0 ] && echo "move-result v0 not found within 3 lines after invoke-static at line $invoke_lineno"
            done
        else
            echo "Target invoke-static line not found in $file"
        fi
    else
        echo "ApkSignatureSchemeV2Verifier.smali not found"
    fi

    # Patch ApkSignatureSchemeV3Verifier isEqual
    echo "Patching ApkSignatureSchemeV3Verifier isEqual check..."
    local file
    file=$(find "$decompile_dir" -type f -path "*/android/util/apk/ApkSignatureSchemeV3Verifier.smali" | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-static {v12, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z"
        local linenos
        linenos=$(grep -nF "$pattern" "$file" | cut -d: -f1)

        if [ -n "$linenos" ]; then
            for invoke_lineno in $linenos; do
                found=0
                for offset in 1 2 3; do
                    move_result_lineno=$((invoke_lineno + offset))
                    current_line=$(sed -n "${move_result_lineno}p" "$file" | sed 's/^[ \t]*//')
                    if [[ "$current_line" == "const/4 v0, 0x1" ]]; then
                        echo "Already patched line $move_result_lineno"
                        found=1
                        break
                    fi
                    if [[ "$current_line" == "move-result v0" ]]; then
                        orig_indent=$(sed -n "${move_result_lineno}p" "$file" | grep -o '^[ \t]*')
                        sed -i "${move_result_lineno}s|.*|${orig_indent}const/4 v0, 0x1|" "$file"
                        echo "Patched move-result at line $move_result_lineno"
                        found=1
                        break
                    fi
                done
                [ $found -eq 0 ] && echo "move-result v0 not found within 3 lines after invoke-static at line $invoke_lineno"
            done
        else
            echo "Target invoke-static line not found in $file"
        fi
    else
        echo "ApkSignatureSchemeV3Verifier.smali not found"
    fi

    # Patch PackageParserException error
    echo "Patching PackageParser\$PackageParserException error assignments..."
    local file
    file=$(find "$decompile_dir" -type f -path "*/android/content/pm/PackageParser\$PackageParserException.smali" | head -n 1)
    if [ -f "$file" ]; then
        local pattern="iput p1, p0, Landroid/content/pm/PackageParser\$PackageParserException;->error:I"
        local line_numbers
        line_numbers=$(grep -nF "$pattern" "$file" | cut -d: -f1)

        if [ -n "$line_numbers" ]; then
            for lineno in $line_numbers; do
                local insert_line=$((lineno - 1))
                local prev_line
                prev_line=$(sed -n "${insert_line}p" "$file")

                echo "$prev_line" | grep -q "const/4 p1, 0x0" && {
                    echo "Already patched above line $lineno"
                    continue
                }

                # Insert just above iput line
                sed -i "${lineno}i\\
    const/4 p1, 0x0" "$file"
                echo "Patched const/4 p1, 0x0 above line $lineno"
            done
        else
            echo "Target iput line not found in $file"
        fi
    else
        echo "PackageParser\$PackageParserException.smali not found"
    fi

    # Patch packageParser equals android
    echo "Patching parseBaseApkCommon() in PackageParser..."
    local file
    file=$(find "$decompile_dir" -type f -path "*/android/content/pm/PackageParser.smali" | head -n 1)
    if [ -f "$file" ]; then
        local start_line end_line
        start_line=$(grep -n ".method.*parseBaseApkCommon" "$file" | cut -d: -f1 | head -n 1)

        if [ -n "$start_line" ]; then
            end_line=$(tail -n +"$start_line" "$file" | grep -n ".end method" | head -n 1 | cut -d: -f1)
            end_line=$((start_line + end_line - 1))

            local move_result_line
            move_result_line=$(sed -n "${start_line},${end_line}p" "$file" | grep -n "move-result v5" | head -n 1 | cut -d: -f1)

            if [ -n "$move_result_line" ]; then
                local insert_line=$((start_line + move_result_line))

                # Check if already patched
                local next_line
                next_line=$(sed -n "$((insert_line + 1))p" "$file")
                echo "$next_line" | grep -q "const/4 v5, 0x1" && {
                    echo "Already patched at line $((insert_line + 1))"
                } || {
                    # Insert after move-result v5
                    sed -i "$((insert_line + 1))i\\
    const/4 v5, 0x1" "$file"
                    echo "Correctly patched const/4 v5, 0x1 after move-result v5 at line $((insert_line + 1))"
                }
            else
                echo "move-result v5 not found"
            fi
        else
            echo "Method parseBaseApkCommon not found"
        fi
    else
        echo "PackageParser.smali not found"
    fi

    # Patch strictjar findEntry removal
    echo "Patching StrictJarFile..."
    local file
    file=$(find "$decompile_dir" -type f -name "StrictJarFile.smali" | head -n 1)
    if [ -f "$file" ]; then
        local start_line
        start_line=$(grep -n '\-\>findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;' "$file" | cut -d: -f1 | head -n 1)

        if [ -n "$start_line" ]; then
            local i=$((start_line + 1))
            local if_line=""
            local cond_label=""
            local cond_line=""
            local line=""

            while [ "$i" -le "$((start_line + 20))" ]; do
                line=$(sed -n "${i}p" "$file" | tr -d '\r')

                if [ -z "$if_line" ] && echo "$line" | grep -qE '^[[:space:]]*if-eqz[[:space:]]+v6,[[:space:]]+:cond_'; then
                    if_line=$i
                fi

                if [ -z "$cond_label" ] && echo "$line" | grep -qE '^[[:space:]]*:cond_[0-9a-zA-Z_]+'; then
                    cond_label=$(echo "$line" | grep -oE ':cond_[0-9a-zA-Z_]+')
                    cond_line=$i
                fi

                if [ -n "$if_line" ] && [ -n "$cond_label" ]; then
                    break
                fi

                i=$((i + 1))
            done

            if [ -n "$if_line" ]; then
                sed -i "${if_line}d" "$file"
                echo "Removed if-eqz jump at line $if_line."
            else
                echo "No matching if-eqz line found."
            fi

            if [ -n "$cond_label" ]; then
                # Replace label with label + nop (instead of deleting)
                sed -i "s/^[[:space:]]*${cond_label}[[:space:]]*$/    ${cond_label}\n    nop/" "$file"
                echo "Neutralized label ${cond_label} with nop."
            else
                echo "No matching :cond_ label found."
            fi

            echo "StrictJarFile patch completed."
        else
            echo "Method findEntry not found."
        fi
    else
        echo "StrictJarFile.smali not found."
    fi

    # Add static return patches
    add_static_return_patch "verifyMessageDigest" 1 "$decompile_dir"
    add_static_return_patch "hasAncestorOrSelf" 1 "$decompile_dir"
    add_static_return_patch "getMinimumSignatureSchemeVersionForTargetSdk" 0 "$decompile_dir"

    # Patch checkCapability variants
    echo "Patching checkCapability variants..."
    methods="\
checkCapability(Landroid/content/pm/SigningDetails;I)Z \
checkCapability(Landroid/content/pm/PackageParser\$SigningDetails;I)Z \
checkCapability(Ljava/lang/String;I)Z \
checkCapabilityRecover(Landroid/content/pm/SigningDetails;I)Z \
checkCapabilityRecover(Landroid/content/pm/PackageParser\$SigningDetails;I)Z"
    for method in $methods; do
        add_static_return_patch "$method" 1 "$decompile_dir"
    done

    # Patch checkCapability String in SigningDetails
    echo "Patching checkCapability(Ljava/lang/String;I)Z in SigningDetails..."
    local method="checkCapability(Ljava/lang/String;I)Z"
    local ret_val="1"
    local class_file="SigningDetails.smali"
    local file
    file=$(find "$decompile_dir" -type f -name "$class_file" 2>/dev/null | head -n 1)

    if [ -f "$file" ]; then
        local starts
        starts=$(grep -n "^[[:space:]]*\.method.* $method" "$file" | cut -d: -f1)

        if [ -n "$starts" ]; then
            for start in $starts; do
                local total_lines end=0 i="$start"
                total_lines=$(wc -l < "$file")
                while [ "$i" -le "$total_lines" ]; do
                    line=$(sed -n "${i}p" "$file")
                    [[ "$line" == *".end method"* ]] && { end="$i"; break; }
                    i=$((i + 1))
                done

                if [ "$end" -ne 0 ]; then
                    local method_head method_head_escaped
                    method_head=$(sed -n "${start}p" "$file")
                    method_head_escaped=$(printf "%s\n" "$method_head" | sed 's/\\/\\\\/g')

                    sed -i "${start},${end}c\\
$method_head_escaped\\
    # -- DYNAMIC REGISTER PATCH BEGIN --
    # Calculate required register count
    .prologue
    # replaced in runtime by sed
    .registers DYNAMIC_REG_PLACEHOLDER
# -- DYNAMIC REGISTER PATCH END --\\
    const/4 v0, 0x$ret_val\\
    return v0\\
.end method" "$file"

                    echo "Patched $method to return $ret_val"
                else
                    echo "End method not found for $method"
                fi
            done
        else
            echo "Method $method not found"
        fi
    else
        echo "$class_file not found"
    fi

    # Recompile framework.jar
    recompile_jar "$framework_path"

    # Clean up
    rm -rf "$WORK_DIR/framework" "$decompile_dir"

    echo "Framework patching completed."
}

# Function to patch services.jar
patch_services() {
    local services_path="$WORK_DIR/services.jar"
    local decompile_dir="$WORK_DIR/services_decompile"

    echo "Starting services.jar patch..."

    # Decompile services.jar
    decompile_jar "$services_path"

    # Apply patches
    patch_return_void_method "checkDowngrade" "$decompile_dir"

    # Patch service InstallPackageHelper equals
    echo "Patching equals() result in InstallPackageHelper..."
    local file
    file=$(find "$decompile_dir" -type f -path "*/com/android/server/pm/InstallPackageHelper.smali" | head -n 1)
    if [ -f "$file" ]; then
        local pattern="invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z"
        local linenos
        linenos=$(grep -nF "$pattern" "$file" | cut -d: -f1)

        if [ -n "$linenos" ]; then
            for invoke_lineno in $linenos; do
                found=0
                for offset in 1 2 3; do
                    move_result_lineno=$((invoke_lineno + offset))
                    current_line=$(sed -n "${move_result_lineno}p" "$file" | sed 's/^[ \t]*//')
                    if [[ "$current_line" == "const/4 v12, 0x1" ]]; then
                        echo "Already patched at line $move_result_lineno"
                        found=1
                        break
                    fi
                    if [[ "$current_line" == "move-result v12" ]]; then
                        # Check if next line already is const/4 v12, 0x1
                        next_content=$(sed -n "$((move_result_lineno + 1))p" "$file" | sed 's/^[ \t]*//')
                        if [[ "$next_content" == "const/4 v12, 0x1" ]]; then
                            echo "Already patched just after move-result at line $((move_result_lineno + 1))"
                            found=1
                            break
                        fi
                        indent=$(sed -n "${move_result_lineno}p" "$file" | grep -o '^[ \t]*')
                        sed -i "$((move_result_lineno + 1))i\\
${indent}const/4 v12, 0x1" "$file"
                        echo "Patched const/4 v12, 0x1 after move-result v12 at line $((move_result_lineno + 1))"
                        found=1
                        break
                    fi
                done
                [ $found -eq 0 ] && echo "move-result v12 not found within 3 lines after invoke-virtual at line $invoke_lineno"
            done
        else
            echo "Target invoke-virtual line not found in $file"
        fi
    else
        echo "InstallPackageHelper.smali not found in services jar"
    fi

    # Patch service ReconcilePackageUtils clinit
    echo "Patching <clinit>() in ReconcilePackageUtils..."
    local file
    file=$(find "$decompile_dir" -type f -path "*/com/android/server/pm/ReconcilePackageUtils.smali" | head -n 1)
    if [ -f "$file" ]; then
        local start_line end_line
        # Find the line number of the static constructor start
        start_line=$(grep -nF ".method static constructor <clinit>()V" "$file" | cut -d: -f1 | head -n 1)
        # Find the line number of the end of the method starting from start_line
        end_line=$(awk "NR>$start_line && /\\.end method/ {print NR; exit}" "$file")

        if [ -n "$start_line" ] && [ -n "$end_line" ]; then
            # Search for const/4 v0, 0x0 inside the method and patch if found
            local const_line
            const_line=$(awk "NR>$start_line && NR<$end_line && /const\\/4 v0, 0x0/ {print NR; exit}" "$file")
            if [ -n "$const_line" ]; then
                local content
                content=$(sed -n "${const_line}p" "$file")
                if [[ "$content" == *"0x1"* ]]; then
                    echo "Already patched at line $const_line"
                else
                    sed -i "${const_line}s/const\\/4 v0, 0x0/const\\/4 v0, 0x1/" "$file"
                    echo "Patched const/4 v0, 0x1 at line $const_line"
                fi
            else
                echo "const/4 v0, 0x0 not found inside <clinit> in $file"
            fi
        else
            echo "<clinit> method not found properly in $file"
        fi
    else
        echo "ReconcilePackageUtils.smali not found in services jar"
    fi

    # Add static return patches
    add_static_return_patch "shouldCheckUpgradeKeySetLocked" 0 "$decompile_dir"
    add_static_return_patch "verifySignatures" 0 "$decompile_dir"
    add_static_return_patch "matchSignaturesCompat" 1 "$decompile_dir"
    add_static_return_patch "compareSignatures" 0 "$decompile_dir"

    # Modify invoke-custom methods
    modify_invoke_custom_methods "$decompile_dir"

    # Recompile services.jar
    recompile_jar "$services_path"

    # Clean up
    rm -rf "$WORK_DIR/services" "$decompile_dir"

    echo "Services.jar patching completed."
}

# Function to patch miui-services.jar
patch_miui_services() {
    local miui_services_path="$WORK_DIR/miui-services.jar"
    local decompile_dir="$WORK_DIR/miui-services_decompile"

    echo "Starting miui-services.jar patch..."

    # Decompile miui-services.jar
    decompile_jar "$miui_services_path"

    # Apply patches
    patch_return_void_method "canBeUpdate" "$decompile_dir"
    patch_return_void_method "verifyIsolationViolation" "$decompile_dir"

    # Modify invoke-custom methods
    modify_invoke_custom_methods "$decompile_dir"

    # Recompile miui-services.jar
    recompile_jar "$miui_services_path"

    # Clean up
    rm -rf "$WORK_DIR/miui-services" "$decompile_dir"

    echo "Miui-services.jar patching completed."
}

# Function to create Magisk module
create_magisk_module() {
    local api_level="$1"
    local device_name="$2"
    local version_name="$3"

    echo "Creating Magisk module..."

    local build_dir="build_module"
    if [ -d "$build_dir" ]; then
        rm -rf "$build_dir"
    fi

    # Copy magisk_module template
    cp -r "magisk_module" "$build_dir"

    # Create required directories
    mkdir -p "$build_dir/system/framework"
    mkdir -p "$build_dir/system/system_ext/framework"

    # Move patched files to correct locations
    if [ -f "framework_patched.jar" ]; then
        cp "framework_patched.jar" "$build_dir/system/framework/framework.jar"
    fi
    if [ -f "services_patched.jar" ]; then
        cp "services_patched.jar" "$build_dir/system/framework/services.jar"
    fi
    if [ -f "miui-services_patched.jar" ]; then
        cp "miui-services_patched.jar" "$build_dir/system/system_ext/framework/miui-services.jar"
    fi

    # Update module.prop
    local module_prop="$build_dir/module.prop"
    if [ -f "$module_prop" ]; then
        sed -i "s/^version=.*/version=$version_name/" "$module_prop"
        sed -i "s/^versionCode=.*/versionCode=$version_name/" "$module_prop"
    fi

    # Create module zip with sanitized version name
    local safe_version=$(echo "$version_name" | sed 's/[. ]/-/g')
    local zip_name="Framework-Patcher-$device_name-$safe_version.zip"

    (cd "$build_dir" && 7z a -tzip "../$zip_name" "*" > /dev/null)

    echo "Created Magisk module: $zip_name"
}

# Main function
main() {
    # Check for required arguments
    if [ $# -lt 3 ]; then
        echo "Usage: $0 <api_level> <device_name> <version_name> [--framework] [--services] [--miui-services]"
        exit 1
    fi

    # Parse arguments
    API_LEVEL="$1"
    DEVICE_NAME="$2"
    VERSION_NAME="$3"
    shift 3

    # Check which JARs to patch
    PATCH_FRAMEWORK=0
    PATCH_SERVICES=0
    PATCH_MIUI_SERVICES=0

    while [ $# -gt 0 ]; do
        case "$1" in
            --framework)
                PATCH_FRAMEWORK=1
                ;;
            --services)
                PATCH_SERVICES=1
                ;;
            --miui-services)
                PATCH_MIUI_SERVICES=1
                ;;
            *)
                echo "Unknown option: $1"
                exit 1
                ;;
        esac
        shift
    done

    # Patch requested JARs
    if [ $PATCH_FRAMEWORK -eq 1 ]; then
        patch_framework
    fi

    if [ $PATCH_SERVICES -eq 1 ]; then
        patch_services
    fi

    if [ $PATCH_MIUI_SERVICES -eq 1 ]; then
        patch_miui_services
    fi

    # Create Magisk module
    create_magisk_module "$API_LEVEL" "$DEVICE_NAME" "$VERSION_NAME"

    echo "All patching completed successfully!"
}

# Run main function with all arguments
main "$@"
