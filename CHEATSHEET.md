# 📋 Shell Scripting Quick-Revision Cheatsheet

A one-page reminder of the syntax. Use it alongside the exercises in this repo.

## Script skeleton
```bash
#!/usr/bin/env bash
set -euo pipefail          # -e exit on error, -u error on unset var, -o pipefail
# "$1" first arg | "$#" arg count | "$@" all args | "$0" script name | "$?" last exit code
```

## Variables & arithmetic
```bash
name="Lab"                 # no spaces around =
echo "Hello ${name}"
count=$(( 2 + 3 ))         # integer math
files=$(ls | wc -l)        # command substitution
default="${VAR:-fallback}" # use fallback if VAR unset
```

## Conditionals
```bash
# numeric: -eq -ne -lt -le -gt -ge      string: =  !=  -z(empty)  -n(non-empty)
if [ "$x" -gt 10 ]; then
    echo "big"
elif [ "$x" -eq 10 ]; then
    echo "ten"
else
    echo "small"
fi

# file tests:  -e exists  -f file  -d dir  -r/-w/-x perms  -s non-empty
[ -f "$f" ] && echo "exists" || echo "missing"

# modern [[ ]] allows && || and regex =~
[[ "$s" =~ ^[0-9]+$ ]] && echo "is a number"

# case
case "$action" in
    start)        echo "starting" ;;
    stop|restart) echo "stop/restart" ;;
    *)            echo "unknown" ;;
esac
```

## Loops
```bash
for i in 1 2 3; do echo "$i"; done          # list
for f in *.sh; do echo "$f"; done           # glob
for (( i=0; i<5; i++ )); do echo "$i"; done # C-style

while [ "$n" -lt 5 ]; do n=$(( n+1 )); done # while (loop while TRUE)
while IFS=',' read -r a b c; do             # read file line by line
    echo "$a $b"
done < file.csv

until [ "$n" -ge 5 ]; do n=$(( n+1 )); done # until (loop until TRUE)

# control:  break (exit loop)   continue (skip to next iteration)
```

## Functions
```bash
greet() {
    local who="$1"          # local keeps scope clean
    echo "Hi $who"
    return 0                # 0 = success
}
greet "world"
```

## Most-used commands (text crunching)
```bash
grep "pat" f        # lines matching pattern   (-i ignore case, -v invert, -c count, -r recursive)
cut -d',' -f2,4 f   # columns 2 & 4 by delimiter
sort f              # -n numeric, -r reverse, -k field, -u unique
uniq -c             # count adjacent duplicates (sort first!)
wc -l f             # count lines (-w words, -c bytes)
head -n 5 f         # first 5 lines       tail -n 5 f (last 5, -f to follow)
awk -F',' '{print $2}' f                  # field-aware print
awk -F',' 'NR>1{s+=$4} END{print s}' f    # sum a column (skip header)
sed 's/old/new/g' f                       # substitute (g = all on line)
find . -name "*.sh" -type f               # locate files
tr 'a-z' 'A-Z'                            # translate chars
xargs                                      # turn stdin into args
```

## Exit codes & chaining
```bash
cmd && echo "ok"     # run echo only if cmd succeeded (exit 0)
cmd || echo "fail"   # run echo only if cmd failed   (exit != 0)
cmd1; cmd2           # run both regardless
echo $?              # exit code of last command
```

## Debugging
```bash
bash -x script.sh    # show every line as it runs
set -x ... set +x    # show just one section as it runs
```

---

## ⭐ Found this useful?
Please **star** ⭐, **fork** 🍴, and **share** 🔗 this repo on LinkedIn so others can use it too. Want to improve it? See [CONTRIBUTING.md](CONTRIBUTING.md).

Made by **Shubham Sharma** · [GitHub](https://github.com/shubhs248) · [LinkedIn](https://www.linkedin.com/in/shubhs248)
