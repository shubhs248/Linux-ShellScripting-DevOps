#!/usr/bin/env bash
# Solution — Exercise 2.1 Grade Checker
set -euo pipefail

score="${1:-}"

# 1. require an argument
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <score 0-100>" >&2
    exit 1
fi

# 2. must be a whole number
if ! [[ "$score" =~ ^[0-9]+$ ]]; then
    echo "Error: '$score' is not a valid whole number." >&2
    exit 1
fi

# 3. must be within range
if [ "$score" -lt 0 ] || [ "$score" -gt 100 ]; then
    echo "Error: score must be between 0 and 100." >&2
    exit 1
fi

# 4. branch to a letter grade
if [ "$score" -ge 90 ]; then
    grade="A"
elif [ "$score" -ge 80 ]; then
    grade="B"
elif [ "$score" -ge 70 ]; then
    grade="C"
elif [ "$score" -ge 60 ]; then
    grade="D"
else
    grade="F"
fi

echo "Score $score -> Grade $grade"
