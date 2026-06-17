#!/usr/bin/env bash
#
# Exercise 2.2 — File Inspector
# ----------------------------------------------------------------------------
# WHAT YOU PRACTISE: checking files  +  &&  ||  +  checking text
#
# WHAT TO BUILD:
#   Take a path (a file or folder) as the first word after the script name and
#   report on it:
#     • If it does not exist     -> say so and stop with code 1
#     • If it is a folder        -> print how many items are inside it
#     • If it is a normal file   -> print:
#           - whether you can read / write / run it
#           - whether it is empty, or how many lines it has
#
# HOW TO RUN:
#   bash exercise-2-file-inspector.sh data/employees.csv
#   bash exercise-2-file-inspector.sh data
#   bash exercise-2-file-inspector.sh /nope
#
# HINTS:
#   • Does it exist?  [ -e "$path" ]
#   • Is it a folder? [ -d "$path" ]      Is it a normal file? [ -f "$path" ]
#   • Can you...      [ -r "$path" ] read   [ -w "$path" ] write   [ -x "$path" ] run
#   • Is it not empty?  [ -s "$path" ] is true when the file has something in it
#   • Short form:     [ -r "$path" ] && echo "can read" || echo "cannot read"
#   • Count items in a folder:  ls -A "$path" | wc -l
#   • Count lines in a file:    wc -l < "$path"
# ----------------------------------------------------------------------------
set -euo pipefail

path="${1:-}"

# TODO 1: if nothing was typed, show how to use it and stop with code 1


# TODO 2: if the path does not exist, say so and stop with code 1


# TODO 3: if it is a folder, print how many items are inside, then stop


# TODO 4: if it is a normal file, say whether you can read/write/run it (use && / ||)


# TODO 5: say whether the file is empty, or how many lines it has

