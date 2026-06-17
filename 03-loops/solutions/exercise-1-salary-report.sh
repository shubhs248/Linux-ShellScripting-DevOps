#!/usr/bin/env bash
# Solution — Exercise 3.1 Salary Report
set -euo pipefail

CSV="$(dirname "$0")/../../data/employees.csv"

total=0
count=0

echo "=== Salary Report (excluding HR) ==="

# Loop over rows, skipping the header with `tail -n +2`
while IFS=',' read -r id name dept salary age; do
    # skip HR employees
    if [ "$dept" = "HR" ]; then
        continue
    fi

    if [ "$salary" -ge 100000 ]; then
        echo "$name: $salary  <-- top earner"
    else
        echo "$name: $salary"
    fi

    total=$(( total + salary ))
    count=$(( count + 1 ))
done < <(tail -n +2 "$CSV")

echo "-----------------------------------"
echo "Employees counted: $count"
echo "Total salary:      $total"
if [ "$count" -gt 0 ]; then
    echo "Average salary:    $(( total / count ))"
fi
