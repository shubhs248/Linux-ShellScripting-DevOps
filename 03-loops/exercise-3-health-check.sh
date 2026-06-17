#!/usr/bin/env bash
#
# Exercise 3.3 — Retry Health Check
# ----------------------------------------------------------------------------
# WHAT YOU PRACTISE: until loop  +  break  (the common "keep retrying" pattern)
#
# WHAT TO BUILD:
#   Pretend you are waiting for a server to come "up". Take a hostname as $1, then:
#     • Try up to 5 times (one try per "second").
#     • On each try, call the `probe` function below. It gives back 0 (success)
#       when the server is up. To keep it simple, it "comes up" on the 3rd try.
#     • Use an `until` loop that keeps going UNTIL the probe succeeds.
#     • Use `break` to leave early once it is up. If all 5 tries fail, stop with code 1.
#
# HOW TO RUN:
#   bash exercise-3-health-check.sh web-03
#
# HINTS:
#   • until <command>; do ... done   keeps running the body while <command> FAILS,
#     and stops as soon as <command> SUCCEEDS (gives back 0).
#   • Keep a counter: attempt=1; ... attempt=$(( attempt + 1 ))
#   • Wait between tries with: sleep 1
#   • Leave the loop early with: break
# ----------------------------------------------------------------------------
set -euo pipefail

host="${1:-}"
MAX_ATTEMPTS=5

if [ -z "$host" ]; then
    echo "Usage: $0 <hostname>" >&2
    exit 1
fi

# A pretend check: it only succeeds (gives back 0) on the 3rd try or later.
# Leave this as it is — your loop should treat it like a real check.
probe() {
    local current_attempt="$1"
    [ "$current_attempt" -ge 3 ]
}

attempt=1

# TODO 1: write an `until probe "$attempt"` loop that tries up to MAX_ATTEMPTS times


# TODO 2: inside the loop, print which try this is, wait 1 second, and add 1 to the counter


# TODO 3: if you run out of tries without success, print a failure message and stop with code 1


# TODO 4: when the check succeeds, print a success message and leave with code 0

