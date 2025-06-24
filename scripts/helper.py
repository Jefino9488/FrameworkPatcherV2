import os


def clear_method_callback(method_lines):
    """A callback that clears the body of a method."""
    return [method_lines[0], "    return-void\n", ".end method\n"]


def return_true_callback(method_lines):
    """A callback that makes a method return true."""
    return [
        method_lines[0],
        "    const/4 v0, 0x1\n",
        "    return v0\n",
        ".end method\n",
    ]


def return_false_callback(method_lines):
    """A callback that makes a method return false."""
    return [
        method_lines[0],
        "    const/4 v0, 0x0\n",
        "    return v0\n",
        ".end method\n",
    ]


def return_void_callback(method_lines):
    """A callback that makes a method return void."""
    return [
        method_lines[0],
        "    return-void\n",
        ".end method\n",
    ]


def add_line_before_callback(line_to_add, line_to_find):
    """A callback that adds a line before a specific line."""

    def callback(method_lines):
        new_lines = []
        for line in method_lines:
            if line.strip() == line_to_find:
                new_lines.append(f"    {line_to_add}\n")
            new_lines.append(line)
        return new_lines

    return callback


def add_line_after_callback(line_to_add, line_to_find):
    """A callback that adds a line after a specific line."""

    def callback(method_lines):
        new_lines = []
        for line in method_lines:
            new_lines.append(line)
            if line.strip() == line_to_find:
                new_lines.append(f"    {line_to_add}\n")
        return new_lines

    return callback


def replace_line_callback(line_to_find, line_to_replace):
    """A callback that replaces a line with another line."""

    def callback(method_lines):
        new_lines = []
        for line in method_lines:
            if line.strip() == line_to_find:
                new_lines.append(f"    {line_to_replace}\n")
            else:
                new_lines.append(line)
        return new_lines

    return callback


class Helper:
    def __init__(self, base_dir):
        self.base_dir = base_dir
        self.smali_files = self._find_smali_files()

    def _find_smali_files(self):
        smali_map = {}
        for root, _, files in os.walk(self.base_dir):
            for file in files:
                if file.endswith(".smali"):
                    class_name = os.path.join(root, file) \
                        .replace(self.base_dir + os.path.sep, "") \
                        .replace(os.path.sep, ".") \
                        .replace(".smali", "")
                    smali_map[class_name] = os.path.join(root, file)
        return smali_map

    def find_class(self, class_name):
        return self.smali_files.get(class_name)

    def find_and_modify_method(self, class_name, method_name, callback, *parameter_types):
        file_path = self.find_class(class_name)
        if not file_path:
            return

        with open(file_path, "r") as f:
            lines = f.readlines()

        method_signature = f".method public static {method_name}"
        if parameter_types:
            method_signature += "(" + "".join(parameter_types) + ")"

        in_method = False
        method_lines = []
        new_lines = []
        for line in lines:
            if not in_method and method_signature in line:
                in_method = True
                method_lines.append(line)
            elif in_method:
                method_lines.append(line)
                if line.strip() == ".end method":
                    new_lines.extend(callback(method_lines))
                    in_method = False
                    method_lines = []
            else:
                new_lines.append(line)

        with open(file_path, "w") as f:
            f.writelines(new_lines)

    def find_all_and_modify_methods(self, class_name, method_name, callback):
        file_path = self.find_class(class_name)
        if not file_path:
            return

        with open(file_path, "r") as f:
            lines = f.readlines()

        in_method = False
        method_lines = []
        new_lines = []
        for line in lines:
            if not in_method and f" {method_name}(" in line:
                in_method = True
                method_lines.append(line)
            elif in_method:
                method_lines.append(line)
                if line.strip() == ".end method":
                    new_lines.extend(callback(method_lines))
                    in_method = False
                    method_lines = []
            else:
                new_lines.append(line)

        with open(file_path, "w") as f:
            f.writelines(new_lines)

    def modify_method_by_adding_a_line_before_line(self, class_name, method_name, line_to_find, line_to_add):
        self.find_and_modify_method(
            class_name,
            method_name,
            add_line_before_callback(line_to_add, line_to_find)
        )

    def modify_all_method_by_adding_a_line_before_line(self, class_name, line_to_find, line_to_add):
        self.find_all_and_modify_methods(
            class_name,
            "",
            add_line_before_callback(line_to_add, line_to_find)
        )
