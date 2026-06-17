# Part 2 — Conditionals (Making Decisions)

## 🎯 Goal
Teach your scripts to **make choices**: do one thing or another based on a value, check user input, and react to the state of files and the system.

## 🧠 What you practise here
- `if` / `elif` / `else` blocks
- The `test` command and its short forms `[ ... ]` and `[[ ... ]]`
- Comparing **numbers**: `-eq -ne -lt -le -gt -ge`
- Comparing **text**: `=  !=  -z` (empty) `-n` (not empty) `==  =~`
- Checking **files**: `-f -d -e -r -w -x -s`
- `case` statements for clean "choose one of many" branching
- The `&&` (and), `||` (or), and `!` (not) operators
- Exit codes (`$?`) and the rule that **0 means success**

---

## 📝 The 3 exercises

| # | File | What it tests |
|---|------|---------------|
| 1 | `exercise-1-grade-checker.sh` | `if/elif/else` + comparing numbers + checking input |
| 2 | `exercise-2-file-inspector.sh` | file checks + `&&`/`\|\|` + text checks |
| 3 | `exercise-3-service-menu.sh` | `case` statement + handling arguments |

Each starter file has the brief, the hints, and `# TODO` lines. Write your code, then run it:

```bash
bash 02-conditionals/exercise-1-grade-checker.sh 87
bash 02-conditionals/exercise-2-file-inspector.sh data/employees.csv
bash 02-conditionals/exercise-3-service-menu.sh status web-01
```

Ready-made answers are in [`solutions/`](solutions). Try first, then check.

➡️ Next: [Part 3 — Loops](../03-loops/README.md).

---

## ⭐ Found this useful?
Please **star** ⭐, **fork** 🍴, and **share** 🔗 this repo on LinkedIn so others can use it too. Want to add an exercise or fix something? See [CONTRIBUTING.md](../CONTRIBUTING.md).

Made by **Shubham Sharma** · [GitHub](https://github.com/shubhs248) · [LinkedIn](https://www.linkedin.com/in/shubhs248)
