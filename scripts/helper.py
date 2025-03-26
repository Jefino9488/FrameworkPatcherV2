import logging
import os
import re
from typing import Optional, List, Callable

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
DEBUG = True
TAG = "[FrameworkPatcherV2]"

class Helper:
    def __init__(self, base_dir):
        """Initialize with the base directory containing framework_decompile/."""
        self.base_dir = base_dir
        self.class_dirs = [os.path.join(base_dir, f"classes{i}" if i > 1 else "classes") for i in range(1, 6)]
        for dir_path in self.class_dirs:
            if not os.path.exists(dir_path):
                logging.warning(f"Directory '{dir_path}' not found; some classes may be missing")
        logging.info(f"Initialized with base directory: {self.base_dir}")

    def find_class(self, class_name: str) -> Optional[str]:
        """
        Find a class by name across framework_decompile/classes{1-5}/ directories.
        Accepts class_name in formats like 'StrictJarVerifier', 'android.util.jar.StrictJarVerifier',
        or 'android/util/jar/StrictJarVerifier'. Returns the full Smali file path or None if not found.
        """
        normalized_name = class_name.replace('.', '/')
        if not normalized_name.endswith('.smali'):
            normalized_name += '.smali'

        if '/' in normalized_name:
            smali_file = normalized_name
        else:
            smali_file = None

        for class_dir in self.class_dirs:
            if smali_file:
                full_path = os.path.join(class_dir, smali_file)
            else:
                for root, _, files in os.walk(class_dir):
                    if f"{class_name}.smali" in files:
                        full_path = os.path.join(root, f"{class_name}.smali")
                        break
                else:
                    continue
                break
            if os.path.exists(full_path):
                if DEBUG:
                    abs_path = os.path.abspath(full_path)
                    logging.debug(f"Found class '{class_name}' at '{abs_path}'")
                return full_path

        logging.error(f"Class '{class_name}' not found in '{self.base_dir}'")
        return None

    def find_and_modify_method(self, class_name: str, method_name: str,
                               callback: Callable[[List[str], int, int], List[str]], *parameter_types) -> bool:
        """Find a specific method in a class and apply a modification callback."""
        smali_file = self.find_class(class_name)
        if not smali_file:
            return False

        try:
            with open(smali_file, 'r', encoding='utf-8') as f:
                lines = f.readlines()

            method_sig = f".method .* {method_name}\\("
            if parameter_types:
                param_sig = ''.join(parameter_types)
                method_sig += re.escape(param_sig)

            start_line = None
            end_line = None
            for i, line in enumerate(lines):
                if re.match(method_sig, line.strip()):
                    start_line = i
                    break
            if start_line is None:
                logging.warning(f"Method '{method_name}' not found in '{class_name}'")
                return False

            for j in range(start_line + 1, len(lines)):
                if ".end method" in lines[j]:
                    end_line = j
                    break
            if end_line is None:
                logging.error(f"Method '{method_name}' in '{class_name}' has no .end method")
                return False

            modified_lines = callback(lines[start_line:end_line + 1], start_line, end_line)
            lines[start_line:end_line + 1] = modified_lines

            with open(smali_file, 'w', encoding='utf-8') as f:
                f.writelines(lines)
            logging.info(f"Modified method '{method_name}' in '{class_name}'")
            return True

        except Exception as e:
            if DEBUG:
                logging.error(f"{TAG}: Error modifying method '{method_name}' in '{class_name}': {str(e)}")
            return False

    def find_all_and_modify_methods(self, class_name: str, method_name: str,
                                    callback: Callable[[List[str], int, int], List[str]]) -> int:
        """Find and modify all methods with a given name in a class."""
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
                    for j in range(i + 1, len(lines)):
                        if ".end method" in lines[j]:
                            end_line = j
                            modified_lines = callback(lines[start_line:end_line + 1], start_line, end_line)
                            lines[start_line:end_line + 1] = modified_lines
                            modified_count += 1
                            i = end_line
                            break
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
        """
        Find a method in a class and insert a new line before a specific existing line.
        """
        callback = add_line_before_callback(unique_line, new_line, method_name)
        return self.find_and_modify_method(class_name, method_name, callback)

    def modify_all_method_by_adding_a_line_before_line(self, class_name: str,
                                                       target_line: str, new_line: str) -> int:
        """
        Modify ALL methods in a class by adding a new line before a specific target line.
        """
        callback = add_line_before_callback(target_line, new_line)
        smali_file = self.find_class(class_name)
        if not smali_file:
            return 0

        try:
            with open(smali_file, 'r', encoding='utf-8') as f:
                lines = f.readlines()

            modified_count = 0
            i = 0
            while i < len(lines):
                if lines[i].strip().startswith('.method'):
                    start_line = i
                    for j in range(i + 1, len(lines)):
                        if lines[j].strip().startswith('.end method'):
                            end_line = j
                            if any(target_line in line for line in lines[start_line:end_line + 1]):
                                modified_lines = callback(lines[start_line:end_line + 1], start_line, end_line)
                                lines[start_line:end_line + 1] = modified_lines
                                modified_count += 1
                            i = end_line
                            break
                    i += 1
                else:
                    i += 1

            if modified_count > 0:
                with open(smali_file, 'w', encoding='utf-8') as f:
                    f.writelines(lines)
                logging.info(f"Modified {modified_count} methods in '{class_name}'")

            return modified_count

        except Exception as e:
            if DEBUG:
                logging.error(f"{TAG}: Error modifying methods in '{class_name}': {str(e)}")
            return 0

    def modify_method_by_adding_a_line_after_line(self, class_name: str, method_name: str,
                                                unique_line: str, new_line: str) -> bool:
        """
        Find a method in a class and insert a new line after a specific existing line.
        """
        callback = add_line_after_callback(unique_line, new_line, method_name)
        return self.find_and_modify_method(class_name, method_name, callback)


def return_false_callback(lines: List[str], start: int, end: int) -> List[str]:
    """Modify a method to return zero (or false) while preserving the .registers directive."""
    modified_lines = [lines[0]]

    registers_line = None
    for line in lines[1:]:
        if line.strip().startswith('.registers'):
            registers_line = line
            break

    if registers_line:
        modified_lines.append(registers_line)

    return_type = 'return v0' if '()I' in lines[0] or '()Z' in lines[0] else 'return-object v0'
    modified_lines.extend([
        "    const/4 v0, 0x0\n",
        f"    {return_type}\n",
        ".end method\n"
    ])

    return modified_lines

def return_true_callback(lines: List[str], start: int, end: int) -> List[str]:
    """Modify a method to return true while preserving the .registers directive."""
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

def pre_patch(base_dir: str):
    """Pre-patch all .smali files under base_dir containing 'invoke-custom' more efficiently."""
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

            with open(filepath, 'r', encoding='utf-8') as f:
                if 'invoke-custom' not in f.read():
                    continue

            with open(filepath, 'r', encoding='utf-8') as f:
                lines = f.readlines()

            modified_lines = []
            in_method = False
            method_type = None
            method_start_line = None

            for i, line in enumerate(lines):
                if in_method:
                    if line.strip() == '.end method':
                        if method_type in method_patterns:
                            logging.info(f"Patching '{method_type}' in '{filepath}' to return zero")
                            modified_lines.extend(return_false_callback(
                                lines[method_start_line:i + 1], 0, 0))
                        in_method = False
                        method_type = None
                        method_start_line = None
                        continue
                    continue

                for key, pattern in method_patterns.items():
                    if pattern.search(line):
                        logging.info(f"Found method '{key}' in '{filepath}' with invoke-custom")
                        in_method = True
                        method_type = key
                        method_start_line = i
                        break

                if not in_method:
                    modified_lines.append(line)

            if modified_lines != lines:
                with open(filepath, 'w', encoding='utf-8') as f:
                    f.writelines(modified_lines)
                logging.info(f"Completed pre-patch for '{filepath}'")

def add_line_before_callback(unique_line: str, new_line: str, method_name: str = "") -> Callable[[List[str], int, int], List[str]]:
    """callback that adds a line before specific line"""
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
    """callback that adds a line after specific line"""
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