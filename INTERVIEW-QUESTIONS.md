# 🎤 Linux & Shell Scripting — Interview Questions

> The questions interviewers actually ask, in plain English, with short answers you can say out loud. Practise the exercises first, then use this to **explain** what you did.

**How to use this file:** cover the answers, read a question, say your answer out loud, then check. If you can teach it simply, you know it.

---

## 🟢 Warm-up (juniors get asked these a lot)

**1. What is the difference between a shell and a terminal?**
The *terminal* is the window (or app) you type into. The *shell* is the program that reads what you type and runs it (e.g. `bash`, `zsh`, `sh`). The terminal is the keyboard; the shell is the brain.

**2. What does the first line `#!/bin/bash` do?**
It's the **shebang**. It tells the system which interpreter should run the script. `#!/bin/bash` means "run this with bash". `#!/usr/bin/env bash` is more portable because it finds bash on the user's `PATH`.

**3. How do you make a script executable and run it?**
```bash
chmod +x script.sh   # give it run permission
./script.sh          # run it
```
You can also run it without `chmod` by passing it to bash: `bash script.sh`.

**4. What is the difference between `$@` and `$*`?**
Both hold all the script arguments. `"$@"` keeps each argument as a **separate** quoted item (almost always what you want in loops). `"$*"` joins them into a **single** string. Rule of thumb: use `"$@"`.

**5. What does `$?` mean?**
The **exit code** of the last command. `0` means success, anything else means failure. You check it to decide what to do next.

**6. Single quotes vs double quotes?**
Single quotes `'...'` are literal — nothing inside is expanded. Double quotes `"..."` allow variable and command expansion (`"$name"`, `"$(date)"`). Use double quotes around variables to avoid word-splitting bugs.

---

## 🔵 Conditionals & logic

**7. Difference between `[ ]` and `[[ ]]`?**
`[ ]` is the old POSIX `test` command. `[[ ]]` is a bash builtin that is safer and more powerful: it handles unquoted variables better, supports `&&`/`||` inside, and allows pattern matching (`[[ $x == a* ]]`) and regex (`=~`). Prefer `[[ ]]` in bash scripts.

**8. How do you check if a file exists / is a directory / is readable?**
```bash
[[ -e path ]]   # exists
[[ -f path ]]   # is a regular file
[[ -d path ]]   # is a directory
[[ -r path ]]   # is readable
[[ -s path ]]   # exists and is not empty
```

**9. What is the difference between `&&` and `||`?**
`A && B` runs `B` only if `A` succeeds. `A || B` runs `B` only if `A` fails. Common pattern: `mkdir build && cd build` or `command || echo "it failed"`.

**10. When would you use `case` instead of `if/elif`?**
When you're matching one value against many fixed options (like a menu, or `start|stop|restart`). `case` is cleaner and supports glob patterns (`*.log`, `[0-9]*`).

**11. How do you compare numbers vs strings?**
Numbers use `-eq -ne -lt -le -gt -ge`. Strings use `= == != <  >`. A classic bug is using `==` to compare numbers as strings — `"10" < "9"` is true as strings but false as numbers.

---

## 🟣 Loops & data processing

**12. What's the difference between `for`, `while`, and `until`?**
`for` loops over a known list of items. `while` loops *as long as* a condition is true. `until` loops *until* a condition becomes true (the opposite of while).

**13. What do `break` and `continue` do?**
`break` exits the loop completely. `continue` skips the rest of the current iteration and jumps to the next one.

**14. How do you read a file line by line safely?**
```bash
while IFS= read -r line; do
  echo "$line"
done < file.txt
```
`IFS=` keeps leading/trailing spaces, and `-r` stops backslashes being eaten.

**15. Why is `for line in $(cat file)` a bad idea?**
It splits on *any* whitespace, not just newlines, so lines with spaces break into multiple items. Use the `while read` pattern above instead.

---

## 🟠 The classic text-processing tools

**16. When do you reach for `grep` vs `awk` vs `sed`?**
- `grep` — **find** lines that match a pattern.
- `awk` — work with **columns/fields** and do calculations (sums, averages, filtering by column).
- `sed` — **edit** a stream: find-and-replace, delete lines.

**17. How do you print the 1st and 3rd column of a CSV?**
```bash
awk -F',' '{print $1, $3}' file.csv
```
`-F','` sets the field separator to a comma.

**18. How do you find the top 5 most frequent IPs in a log?**
```bash
awk '{print $1}' access.log | sort | uniq -c | sort -rn | head -5
```
This is a *very* common interview "live" task: extract field → sort → count uniques → sort by count → take top N.

**19. How do you do a find-and-replace in a file with sed?**
```bash
sed -i 's/old/new/g' file.txt   # -i edits in place, g = all on each line
```

**20. What does `cut` do that `awk` doesn't?**
`cut` is a simpler, faster tool for fixed-delimiter slicing (`cut -d',' -f1,3`). `awk` is more powerful but heavier. For a quick column grab, `cut` is fine.

---

## 🔴 "Senior" / real-world questions

**21. What is `set -euo pipefail` and why use it?**
A safety header for scripts:
- `set -e` — exit immediately if any command fails.
- `set -u` — error on use of an undefined variable (catches typos).
- `set -o pipefail` — a pipeline fails if *any* part fails, not just the last.
Together they make scripts fail loudly instead of silently continuing in a broken state.

**22. How do you handle errors / clean up on exit?**
Use `trap`:
```bash
trap 'echo "cleaning up"; rm -f /tmp/lock' EXIT
```
`trap` runs your cleanup function when the script exits (even on error or Ctrl-C).

**23. What's the difference between `$(command)` and backticks?**
Both run a command and capture its output. `$(...)` is preferred because it nests cleanly and is easier to read. Backticks `` `...` `` are old style.

**24. How do you give a variable a default value?**
```bash
name="${1:-guest}"   # use $1, or "guest" if $1 is empty/unset
```

**25. What is the difference between `>`, `>>`, and `2>&1`?**
`>` overwrites a file with stdout. `>>` appends. `2>&1` redirects stderr to wherever stdout is going (so you capture both). Common: `./run.sh > out.log 2>&1`.

**26. Your script works on your machine but fails in CI/another server. What do you check?**
Different shell (`sh` vs `bash`), missing tools/versions, different `PATH`, line endings (CRLF vs LF), relative paths assuming a working directory, and missing `set -e`. Run with `bash -x script.sh` to trace exactly what happens.

---

## 🧠 Whiteboard / live-coding prompts

These are tasks you might be asked to write on the spot. Try them in this lab first.

1. **Count how many lines in a log contain `ERROR`.** → `grep -c ERROR app.log`
2. **Print the average of a column of numbers.** → `awk '{sum+=$1} END {print sum/NR}' numbers.txt`
3. **Rename all `.txt` files to `.bak`.** → `for f in *.txt; do mv "$f" "${f%.txt}.bak"; done`
4. **Check if a service is up, retry 3 times.** → a `for`/`while` loop with `curl`/`ping`, `break` on success, `sleep` between tries.
5. **Find files larger than 100MB.** → `find . -type f -size +100M`

---

## ⭐ Found this useful?
If this helped you prep, please **star** ⭐, **fork** 🍴, and **share** 🔗 the repo on LinkedIn. Got a question that tripped you up in a real interview? Add it via [CONTRIBUTING.md](CONTRIBUTING.md) — let's help the next person.

Made by **Shubham Sharma** · [GitHub](https://github.com/shubhs248) · [LinkedIn](https://www.linkedin.com/in/shubhs248)
