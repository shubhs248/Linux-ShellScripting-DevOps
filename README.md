# 🐧 Linux & Shell Scripting Practice Lab

> A simple **clone-and-go** project to revise the Linux commands you use most, and to get comfortable with the two building blocks of every shell script: **conditionals** (making decisions) and **loops** (doing things again and again).

[![Made with Bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

---

## 🎯 Why this repo?

Most "learn bash" resources are either a tiny cheatsheet or a huge book. This sits in between. You get **real-looking sample data plus small, focused tasks** that you can finish in one sitting and come back to whenever you need a quick refresher — before an interview or a day-to-day DevOps task.

You practise on data that looks like the real world: a list of employees, a web-server log file, a list of servers to check, and a file of numbers.

## 🗂️ What's inside

```
linux-shell-practice-lab/
├── README.md                 ← you are here
├── CHEATSHEET.md             ← 1-page quick reminder of the syntax
├── CONTRIBUTING.md           ← how to add your own exercises
├── setup.sh                  ← creates the sample data & makes scripts runnable
├── data/                     ← sample files used by every exercise
│   ├── employees.csv
│   ├── access.log
│   ├── numbers.txt
│   └── servers.txt
├── 01-essential-commands/    ← warm-up: grep, awk, sort, cut, find, etc.
│   └── README.md
├── 02-conditionals/          ← if / elif / case / test / &&  ||
│   ├── README.md
│   ├── exercise-1-grade-checker.sh
│   ├── exercise-2-file-inspector.sh
│   ├── exercise-3-service-menu.sh
│   └── solutions/
└── 03-loops/                 ← for / while / until / break / continue
    ├── README.md
    ├── exercise-1-salary-report.sh
    ├── exercise-2-log-analyzer.sh
    ├── exercise-3-health-check.sh
    └── solutions/
```

## 🚀 Quick start

```bash
# 1. Get the code
git clone https://github.com/shubhs248/linux-shell-practice-lab.git
cd linux-shell-practice-lab

# 2. Create the sample data and make the scripts runnable
bash setup.sh

# 3. Open the instructions for each part and start practising
cat 01-essential-commands/README.md
cat 02-conditionals/README.md
cat 03-loops/README.md
```

> 💡 On **Windows**, run these inside **WSL** or **Git Bash**. That way the scripts behave just like they would on a real Linux machine.

## 🧭 Suggested path (about 90 minutes)

| # | Part | What you practise | Time |
|---|------|-------------------|------|
| 1 | [Essential Commands](01-essential-commands/README.md) | `grep` `awk` `sed` `cut` `sort` `uniq` `find` `wc` | 30 min |
| 2 | [Conditionals](02-conditionals/README.md) | `if/elif/else`, `case`, `test`, `[[ ]]`, `&&` `\|\|` | 30 min |
| 3 | [Loops](03-loops/README.md) | `for`, `while`, `until`, `break`, `continue` | 30 min |

## ✅ How each exercise works

1. Read the part's `README.md`. It tells you **the goal** and **which idea you are practising**.
2. Open the `exercise-*.sh` file. It has a short brief, some hints, and `# TODO` lines showing where to write your code.
3. Write your answer, then run it, for example: `bash 02-conditionals/exercise-1-grade-checker.sh 87`
4. Stuck? Compare with the ready-made answer in the part's `solutions/` folder.

---

## 🎤 Prepping for an interview?

After you've done the exercises, open **[INTERVIEW-QUESTIONS.md](INTERVIEW-QUESTIONS.md)** — the shell/Linux questions interviewers actually ask, in plain English, with short answers you can say out loud and live-coding prompts to rehearse.

---

## ⭐ Found this useful?

If this lab helped you, here is how you can support it and help others find it:

- **Star** ⭐ the repo so more people discover it.
- **Fork** 🍴 it and practise on your own copy.
- **Share** 🔗 it on LinkedIn and tag me — I would love to see your progress.
- **Contribute** 🤝 a new exercise, dataset, or fix. See [CONTRIBUTING.md](CONTRIBUTING.md).

## 👋 About the author

Made with care by **Shubham Sharma**.

- GitHub: [github.com/shubhs248](https://github.com/shubhs248)
- LinkedIn: [linkedin.com/in/shubhs248](https://www.linkedin.com/in/shubhs248)

## 📜 License

MIT — free to use, fork, teach with, and share. A star ⭐ or a tag on LinkedIn is always appreciated!
