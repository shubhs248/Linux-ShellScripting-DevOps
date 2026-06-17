#!/usr/bin/env bash
#
# Exercise 2.1 — Grade Checker
# ----------------------------------------------------------------------------
# WHAT YOU PRACTISE: if / elif / else  +  comparing numbers  +  checking input
#
# WHAT TO BUILD:
#   Take a score (0 to 100) as the first word you type after the script name,
#   and print a letter grade:
#       90 to 100 -> A
#       80 to 89  -> B
#       70 to 79  -> C
#       60 to 69  -> D
#       0 to 59   -> F
#
#   Also deal with bad input:
#     • nothing typed                 -> show how to use it, then stop with code 1
#     • not a number                  -> show an error, then stop with code 1
#     • smaller than 0 or above 100   -> show an error, then stop with code 1
#
# HOW TO RUN:
#   bash exercise-1-grade-checker.sh 87
#
# HINTS:
#   • The first word you type is "$1". The number of words is "$#".
#   • Compare numbers like this:   if [ "$1" -ge 90 ]; then ...
#   • Check it is a whole number:   [[ "$1" =~ ^[0-9]+$ ]]
# ----------------------------------------------------------------------------
set -euo pipefail

score="${1:-}"

# TODO 1: if nothing was typed, show how to use it and stop with code 1


# TODO 2: if "$score" is not a whole number, show an error and stop with code 1


# TODO 3: if the number is below 0 or above 100, show an error and stop with code 1


# TODO 4: use if / elif / else to print the right letter grade

