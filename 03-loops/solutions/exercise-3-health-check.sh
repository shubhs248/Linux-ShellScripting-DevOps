#!/usr/bin/env bash
# Solution — Exercise 3.3 Retry Health Check
set -euo pipefail

host="${1:-}"
MAX_ATTEMPTS=5

if [ -z "$host" ]; then
    echo "Usage: $0 <hostname>" >&2
    exit 1
fi

probe() {
    local current_attempt="$1"
    [ "$current_attempt" -ge 3 ]
}

attempt=1

# `until` runs the body while probe FAILS, and stops when it SUCCEEDS.
until probe "$attempt"; do
    echo "Attempt $attempt/$MAX_ATTEMPTS: $host not ready yet..."

    if [ "$attempt" -ge "$MAX_ATTEMPTS" ]; then
        echo "FAILED: $host did not come up after $MAX_ATTEMPTS attempts." >&2
        exit 1
    fi

    sleep 1
    attempt=$(( attempt + 1 ))
done

echo "SUCCESS: $host is up (took $attempt attempt(s)). 🟢"
exit 0
