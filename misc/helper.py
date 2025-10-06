import logging
import os
import re
from typing import Optional, List, Callable

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
DEBUG = True
TAG = "[FrameworkPatcherV2]"


class Helper:
    METHOD_REGEX = re.compile(r'\.method .* (\w+)\(')

    def __init__(self, base_dir):
        self.base_dir = base_dir
        self.class_dirs = [os.path.join(base_dir, f"classes{i}" if i > 1 else "classes") for i in range(1, 6)]
        self.class_cache = {}

        for dir_path in self.class_dirs:
            if os.path.exists(dir_path):
                for root, _, files in os.walk(dir_path):
                    for file in files:
                        if file.endswith('.smali'):
                            class_name = file[:-6].replace(os.sep, '.')
                            self.class_cache[class_name] = os.path.join(root, file)

        logging.info(f"Initialized with base directory: {self.base_dir}")

    def find_class(self, class_name: str) -> Optional[str]:
        normalized = class_name.replace('.', '/').replace('.smali', '')

        if normalized in self.class_cache:
            path = self.class_cache[normalized]
            if os.path.exists(path):
                return path

        for dir_path in self.class_dirs:
            for root, _, files in os.walk(dir_path):
                if f"{os.path.basename(normalized)}.smali" in files:
                    full_path = os.path.join(root, f"{os.path.basename(normalized)}.smali")
                    if os.path.exists(full_path):
                        return full_path

        logging.error(f"Class '{class_name}' not found")
        return None

    # In scripts/helper.py

    def find_and_modify_method(self, class_name: str, method_name: str,
                               callback: Callable[[List[str], int, int], List[str]], *parameter_types) -> bool:
        smali_file = self.find_class(class_name)
        if not smali_file:
            return False

        try:
            with open(smali_file, 'r+', encoding='utf-8') as f:
                lines = f.readlines()

                display_sig = method_name
                # --- New Combined Logic ---
                if parameter_types:
                    # FULL SIGNATURE MODE: Construct a precise pattern with parameters
                    param_sig_str = "".join(parameter_types)
                    method_signature_for_pattern = f"{re.escape(method_name)}\\({re.escape(param_sig_str)}\\)"
                    method_pattern = rf"\.method\s.*?\s{method_signature_for_pattern}"
                    display_sig = f"{method_name}({param_sig_str})"
                else:
                    # HALF SIGNATURE MODE: Construct a general pattern for name only
                    method_pattern = rf"\.method\s.*?\s{re.escape(method_name)}\("
                    logging.info(
                        f"Using half-signature search for '{method_name}'. This will match the first overloaded method found.")
                # --- End New Combined Logic ---

                start_line = None
                for i, line in enumerate(lines):
                    # Use re.search to find the pattern anywhere in the line
                    if re.search(method_pattern, line.strip()):
                        start_line = i
                        break

                if start_line is None:
                    logging.warning(f"Method '{display_sig}' not found in '{class_name}'")
                    return False

                end_line = None
                for j in range(start_line, len(lines)):
                    if ".end method" in lines[j]:
                        end_line = j
                        break

                if end_line is None:
                    logging.error(f"Method '{display_sig}' in '{class_name}' has no .end method")
                    return False

                method_lines = lines[start_line:end_line + 1]
                modified_method = callback(method_lines, start_line, end_line)
                lines[start_line:end_line + 1] = modified_method

                f.seek(0)
                f.writelines(lines)
                f.truncate()

            logging.info(f"Successfully modified method '{display_sig}' in '{class_name}'")
            return True
        except Exception as e:
            if DEBUG:
                logging.error(f"{TAG}: Error modifying method '{display_sig}' in '{class_name}': {str(e)}")
            return False

    def find_all_and_modify_methods(self, class_name: str, method_name: str,
                                    callback: Callable[[List[str], int, int], List[str]]) -> int:
        smali_file = self.find_class(class_name)
        if not smali_file:
            return 0

        try:
            with open(smali_file, 'r', encoding='utf-8') as f:
                lines = f.readlines()

            method_sig = f".method .* {method_name}\\("
            modified_count = 0
            i = 0
            while i < len(lines):
                if re.match(method_sig, lines[i].strip()):
                    start_line = i
                    end_line = -1
                    for j in range(i + 1, len(lines)):
                        if ".end method" in lines[j]:
                            end_line = j
                            break

                    if end_line != -1:
                        original_block = lines[start_line: end_line + 1]
                        modified_block = callback(original_block, start_line, end_line)

                        lines[start_line: end_line + 1] = modified_block
                        modified_count += 1

                        i = start_line + len(modified_block)
                    else:
                        i += 1
                else:
                    i += 1

            if modified_count > 0:
                with open(smali_file, 'w', encoding='utf-8') as f:
                    f.writelines(lines)
                logging.info(f"Modified {modified_count} instances of '{method_name}' in '{class_name}'")
            return modified_count

        except Exception as e:
            if DEBUG:
                logging.error(f"{TAG}: Error modifying methods '{method_name}' in '{class_name}': {str(e)}")
            return 0

    def modify_method_by_adding_a_line_before_line(self, class_name: str, method_name: str,
                                                 unique_line: str, new_line: str) -> bool:
        callback = add_line_before_callback(unique_line, new_line, method_name)
        return self.find_and_modify_method(class_name, method_name, callback)

    def modify_all_method_by_adding_a_line_before_line(self, class_name: str,
                                                       target_line: str, new_line: str) -> int:
        callback = add_line_before_callback(target_line, new_line)
        smali_file = self.find_class(class_name)
        if not smali_file:
            return 0

        try:
            with open(smali_file, 'r+', encoding='utf-8') as f:
                lines = f.readlines()
                modified_count = 0
                i = 0

                while i < len(lines):
                    if lines[i].strip().startswith('.method'):
                        start_line = i
                        end_line = None

                        for j in range(i, len(lines)):
                            if lines[j].strip().startswith('.end method'):
                                end_line = j
                                break

                        if end_line is None:
                            i = j + 1
                            continue

                        has_target = any(target_line in line for line in lines[start_line:end_line + 1])
                        if has_target:
                            modified = callback(lines[start_line:end_line + 1], start_line, end_line)
                            lines[start_line:end_line + 1] = modified
                            modified_count += 1

                        i = end_line + 1
                    else:
                        i += 1

                if modified_count:
                    f.seek(0)
                    f.writelines(lines)
                    f.truncate()
                    logging.info(f"Modified {modified_count} methods in '{class_name}'")

                return modified_count
        except Exception as e:
            if DEBUG:
                logging.error(f"{TAG}: Error modifying methods in '{class_name}': {str(e)}")
            return 0

    def modify_method_by_adding_a_line_after_line(self, class_name: str, method_name: str,
                                                unique_line: str, new_line: str) -> bool:
        callback = add_line_after_callback(unique_line, new_line, method_name)
        return self.find_and_modify_method(class_name, method_name, callback)


def return_false_callback(lines: List[str], start: int, end: int) -> List[str]:
    modified_lines = [lines[0]]
    registers_line = None
    for line in lines[1:]:
        if line.strip().startswith('.registers'):
            registers_line = line
            break
    if registers_line:
        modified_lines.append(registers_line)
    return_type = 'return v0' if '()I' in lines[0] or '()Z' in lines[0] else 'return v0'
    modified_lines.extend([
        "    const/4 v0, 0x0\n",
        f"    {return_type}\n",
        ".end method\n"
    ])
    return modified_lines

def return_true_callback(lines: List[str], start: int, end: int) -> List[str]:
    modified_lines = [lines[0]]
    registers_line = None
    for line in lines[1:]:
        if line.strip().startswith('.registers'):
            registers_line = line
            break
    if registers_line:
        modified_lines.append(registers_line)
    modified_lines.extend([
        "    const/4 v0, 0x1\n",
        "    return v0\n",
        ".end method\n"
    ])
    return modified_lines


def return_void_callback(lines: List[str], start: int, end: int) -> List[str]:
    modified_lines = [lines[0]]
    registers_line = None
    for line in lines[1:]:
        if line.strip().startswith('.registers'):
            registers_line = line
            break
    if registers_line:
        modified_lines.append(registers_line)
    modified_lines.extend([
        "    return-void\n",
        ".end method\n"
    ])
    return modified_lines

def pre_patch(base_dir: str):
    if not os.path.exists(base_dir):
        logging.error(f"Base directory '{base_dir}' does not exist")
        return

    method_patterns = {
        "equals": re.compile(r'\.method.*equals\(Ljava/lang/Object;\)Z'),
        "hashCode": re.compile(r'\.method.*hashCode\(\)I'),
        "toString": re.compile(r'\.method.*toString\(\)Ljava/lang/String;')
    }

    for root, _, files in os.walk(base_dir):
        for file in files:
            if not file.endswith('.smali'):
                continue

            filepath = os.path.join(root, file)
            with open(filepath, 'r+', encoding='utf-8') as f:
                lines = f.readlines()
                if not any('invoke-custom' in line for line in lines):
                    continue

                modified_lines = []
                i = 0
                while i < len(lines):
                    line = lines[i]
                    stripped = line.strip()
                    
                    match_found = False
                    for key, pattern in method_patterns.items():
                        if pattern.match(stripped):
                            method_start = i
                            # Find end of method
                            for j in range(i + 1, len(lines)):
                                if lines[j].strip() == '.end method':
                                    end_method_index = j
                                    original_method_block = lines[method_start : end_method_index + 1]
                                    replacement_block = return_false_callback(original_method_block, 0, 0)
                                    modified_lines.extend(replacement_block)
                                    i = end_method_index
                                    match_found = True
                                    break
                            break

                    if not match_found:
                        modified_lines.append(line)
                    
                    i += 1

                if modified_lines != lines:
                    f.seek(0)
                    f.writelines(modified_lines)
                    f.truncate()
                    logging.info(f"Completed pre-patch for '{filepath}'")


def add_line_before_callback(unique_line: str, new_line: str, method_name: str = "") -> Callable[[List[str], int, int], List[str]]:
    def callback(lines: List[str], start: int, end: int) -> List[str]:
        modified_lines = []
        found = False
        for line in lines:
            if unique_line in line and not found:
                modified_lines.append(new_line + '\n')
                found = True
            modified_lines.append(line)
        if not found and method_name:
            logging.warning(f"Unique line '{unique_line.strip()}' not found in method '{method_name}'")
        return modified_lines
    return callback

def add_line_after_callback(unique_line: str, new_line: str, method_name: str = "") -> Callable[[List[str], int, int], List[str]]:
    def callback(lines: List[str], start: int, end: int) -> List[str]:
        modified_lines = []
        found = False
        for line in lines:
            modified_lines.append(line)
            if unique_line in line and not found:
                modified_lines.append(new_line + '\n')
                found = True
        if not found and method_name:
            logging.warning(f"Unique line '{unique_line.strip()}' not found in method '{method_name}'")
        return modified_lines
    return callback


def add_line_before_if_with_string_callback(unique_string: str, new_line: str, if_pattern: str) -> Callable[
    [List[str], int, int], List[str]]:
    def callback(lines: List[str], start: int, end: int) -> List[str]:
        modified_lines = lines[:]
        string_found_index = None
        logging.debug(f"Method lines:\n{''.join(lines)}")
        for i in range(len(modified_lines)):
            if unique_string in modified_lines[i]:
                string_found_index = i
                logging.debug(f"Found string at line {i}: {modified_lines[i].strip()}")
                break
        if string_found_index is None:
            logging.warning(f"String '{unique_string}' not found in method")
            return lines
        for i in range(string_found_index - 1, -1, -1):
            if re.match(rf"^\s*{if_pattern}\s+v\d+, :cond_\w+", modified_lines[i].strip()):
                logging.debug(f"Inserting '{new_line}' before line {i}: {modified_lines[i].strip()}")
                modified_lines.insert(i, new_line + "\n")
                return modified_lines
        logging.warning(f"Pattern '{if_pattern}' not found before string '{unique_string}' in method")
        return lines
    return callback


def replace_result_after_invoke_callback(invoke_line: str, new_result: str) -> Callable[
    [List[str], int, int], List[str]]:
    def callback(lines: List[str], start: int, end: int) -> List[str]:
        modified_lines = []
        i = 0
        while i < len(lines):
            line = lines[i]
            modified_lines.append(line)
            if invoke_line in line.strip():
                i += 1
                while i < len(lines):
                    next_line = lines[i].strip()
                    if next_line.startswith("move-result"):
                        modified_lines.append(f"{new_result}\n")
                        i += 1
                        break
                    elif next_line and not next_line.startswith("#"):
                        modified_lines.append(lines[i])
                        i += 1
                        break
                    else:
                        modified_lines.append(lines[i])
                        i += 1
                else:
                    logging.warning(f"move-result not found after '{invoke_line}'")
            i += 1
        if len(modified_lines) == len(lines):
            logging.warning(f"Invoke line '{invoke_line}' or subsequent move-result not found")
        return modified_lines

    return callback


def remove_if_and_label_after_invoke_callback(invoke_line: str, if_pattern: str) -> Callable[
    [List[str], int, int], List[str]]:
    def callback(lines: List[str], start: int, end: int) -> List[str]:
        modified_lines = []
        labels_to_remove = set()
        i = 0
        while i < len(lines):
            line = lines[i]
            stripped = line.strip()
            if invoke_line in stripped:
                modified_lines.append(line)
                i += 1
                while i < len(lines):
                    next_line = lines[i].strip()
                    match = re.match(rf"^\s*{if_pattern}\s+\S+,\s*:cond_(\w+)", next_line)
                    if match:
                        label_name = match.group(1)
                        full_label = f":cond_{label_name}"
                        labels_to_remove.add(full_label)
                        i += 1
                        break
                    else:
                        modified_lines.append(lines[i])
                        i += 1
                continue
            if stripped in labels_to_remove:
                i += 1
                continue
            modified_lines.append(line)
            i += 1
        return modified_lines
    return callback
