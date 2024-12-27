# Uncommented Lines Viewer

A Bash script that displays only non-commented, non-empty lines from a text file. This tool is useful for viewing the active content of configuration files, scripts, or any text files that contain comments.

## Features

- Filters out lines that start with '#' (with or without leading whitespace)
- Removes empty lines
- Preserves all other content exactly as it appears in the source file
- Provides clear error handling for missing files

## Installation

1. Download the script:
```bash
curl -O https:/[/raw.githubusercontent.com/yourusername/uncommented-lines/main/view_uncommented.sh
](https://github.com/csrsc/cat-only-uncommented-lines)
```

2. Make it executable:
```bash
chmod +x view_uncommented.sh
```

## Usage

```bash
./view_uncommented.sh <filename>
```

### Example

```bash
./view_uncommented.sh /etc/ssh/sshd_config
```

This will display all non-commented, non-empty lines from the sshd_config file.

### Exit Codes

- 0: Success
- 1: No filename provided or file not found

## How It Works

The script:
1. Checks if a filename was provided as an argument
2. Verifies that the file exists
3. Uses `grep` to filter out:
   - Lines starting with # (with optional leading whitespace)
   - Empty lines or lines containing only whitespace
4. Displays the remaining content to stdout

## Examples

Input file `config.txt`:
```
# This is a comment
server_name=localhost
# Another comment
   # Indented comment
port=8080

debug=true
```

Running the script:
```bash
./view_uncommented.sh config.txt
```

Output:
```
server_name=localhost
port=8080
debug=true
```

## Contributing

Feel free to open issues or submit pull requests with improvements.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
