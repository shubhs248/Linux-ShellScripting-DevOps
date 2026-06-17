#!/usr/bin/env bash
# Solution — Exercise 2.2 File Inspector
set -euo pipefail

path="${1:-}"

# 1. require an argument
if [ -z "$path" ]; then
    echo "Usage: $0 <path>" >&2
    exit 1
fi

# 2. must exist
if [ ! -e "$path" ]; then
    echo "'$path' does not exist." >&2
    exit 1
fi

# 3. if it is a folder
if [ -d "$path" ]; then
    count=$(ls -A "$path" | wc -l | tr -d ' ')
    echo "'$path' is a folder with $count item(s) inside."
    exit 0
fi

# 4. if it is a normal file
if [ -f "$path" ]; then
    echo "'$path' is a normal file."
    [ -r "$path" ] && echo "  can read:  yes" || echo "  can read:  no"
    [ -w "$path" ] && echo "  can write: yes" || echo "  can write: no"
    [ -x "$path" ] && echo "  can run:   yes" || echo "  can run:   no"

    # 5. empty, or how many lines
    if [ -s "$path" ]; then
        lines=$(wc -l < "$path" | tr -d ' ')
        echo "  size:       $lines line(s)"
    else
        echo "  size:       empty"
    fi
    exit 0
fi

echo "'$path' is a special file (not a normal file or folder)."
