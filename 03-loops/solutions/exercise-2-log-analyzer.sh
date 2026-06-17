#!/usr/bin/env bash
# Solution — Exercise 3.2 Log Analyzer
set -euo pipefail

LOG="$(dirname "$0")/../../data/access.log"

total=0
ok=0
client_err=0
server_err=0

while read -r line; do
    [ -z "$line" ] && continue
    total=$(( total + 1 ))
    status=$(echo "$line" | awk '{print $9}')

    case "$status" in
        2*) ok=$(( ok + 1 )) ;;
        4*) client_err=$(( client_err + 1 )) ;;
        5*) server_err=$(( server_err + 1 )) ;;
    esac
done < "$LOG"

echo "=== access.log summary ==="
echo "Total requests : $total"
echo "2xx success    : $ok"
echo "4xx client err : $client_err"
echo "5xx server err : $server_err"

if [ "$server_err" -gt 0 ]; then
    echo "FAIL: $server_err server error(s) detected." >&2
    exit 1
fi
echo "OK: no server errors."
exit 0
