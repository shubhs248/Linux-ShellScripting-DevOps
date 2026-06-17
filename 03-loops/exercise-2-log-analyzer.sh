#!/usr/bin/env bash
#
# Exercise 3.2 — Log Analyzer
# ----------------------------------------------------------------------------
# WHAT YOU PRACTISE: while read  — going through a file one line at a time
#
# WHAT TO BUILD:
#   Read ../data/access.log one line at a time with a `while read` loop and report:
#     • the total number of requests (lines)
#     • how many worked fine        (status code starts with 2)
#     • how many were user errors    (status code starts with 4)
#     • how many were server errors  (status code starts with 5)
#   At the end, print a short summary. Stop with code 1 if there were ANY server
#   errors (so this could be used in an automated health check).
#
# HOW TO RUN:
#   bash exercise-2-log-analyzer.sh
#
# HINTS:
#   • The status code is the 9th word on each line:
#       while read -r line; do
#           status=$(echo "$line" | awk '{print $9}')
#           ...
#       done < "$LOG"
#   • Sort each line into a group with a case statement:
#       case "$status" in 2*) ...;; 4*) ...;; 5*) ...;; esac
#   • Add one to a counter:   ok=$(( ok + 1 ))
# ----------------------------------------------------------------------------
set -euo pipefail

LOG="$(dirname "$0")/../data/access.log"

total=0
ok=0
client_err=0
server_err=0

# TODO 1: go through each line of the log with `while read`


# TODO 2: pull out the status code (word 9) and put it in a group (2xx / 4xx / 5xx)


# TODO 3: print the summary


# TODO 4: stop with code 1 if there were any server (5xx) errors, otherwise code 0

