#!/usr/bin/env bash
#
# Exercise 3.1 — Salary Report
# ----------------------------------------------------------------------------
# WHAT YOU PRACTISE: for/while loop  +  maths  +  continue (skip a round)
#
# WHAT TO BUILD:
#   Read ../data/employees.csv and make a short report:
#     • Print each person's name and salary, but SKIP anyone in "HR"
#       (use `continue` to skip them).
#     • Add a "  <-- top earner" tag next to anyone earning 100000 or more.
#     • At the end, print the TOTAL and the AVERAGE salary of the people you
#       actually printed (so, not counting HR).
#
# HOW TO RUN:
#   bash exercise-1-salary-report.sh
#
# HINTS:
#   • Go through the rows (skip the header) and split each line on the commas:
#       while IFS=',' read -r id name dept salary age; do ... done < <(tail -n +2 file)
#   • Skip a row:        if [ "$dept" = "HR" ]; then continue; fi
#   • Add numbers:       total=$(( total + salary ))
#   • Average:           avg=$(( total / count ))
# ----------------------------------------------------------------------------
set -euo pipefail

CSV="$(dirname "$0")/../data/employees.csv"

total=0
count=0

# TODO 1: go through each employee row (remember to skip the header line)


# TODO 2: skip people in HR using `continue`


# TODO 3: print "name: salary", and tag top earners (salary 100000 or more)


# TODO 4: keep adding to a running total and count, then print TOTAL and AVERAGE

