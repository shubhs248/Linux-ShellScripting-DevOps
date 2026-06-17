# Part 1 — Essential Linux Commands (Warm-up)

*How a pipeline works — each command is a filter, data flows left to right:*

<picture><source media="(prefers-color-scheme: dark)" srcset="../docs/01-pipeline-dark.png"><img alt="How a shell pipeline works" src="../docs/01-pipeline.png"></picture>

## 🎯 Goal
Refresh the commands you use **every single day** on a Linux machine to read and process text, using real-looking data instead of toy examples.

## 🧠 What you practise here
| Command | What it is for |
|---------|----------------|
| `cat` / `head` / `tail` | Look at a file quickly |
| `wc` | Count lines, words, or characters |
| `grep` | Find lines that match some text |
| `cut` | Pick out certain columns from a line |
| `sort` / `uniq` | Put data in order and remove repeats |
| `awk` | Work with columns and do quick maths |
| `sed` | Find and replace text as it flows past |
| `find` | Look for files by name or type |

All tasks use the files in [`../data/`](../data).

---

## 📝 Tasks
Try each one in your terminal. Have a go **before** you look at the answer. The answers are at the bottom.

> Run `bash ../setup.sh` first if the `data/` folder is missing.

1. **Count records.** How many employees are in `employees.csv` (not counting the header line)?
2. **Quick look.** Show only the first 5 lines and the last 3 lines of `access.log`.
3. **Filter.** Print every employee in the `Engineering` department.
4. **Pick columns.** Show only the `name` and `salary` columns from `employees.csv`.
5. **Sort.** Show the 3 highest-paid employees.
6. **Count uniques.** How many different IP addresses appear in `access.log`?
7. **Maths with awk.** What is the **average salary** of all employees?
8. **Busiest visitor.** Which IP made the most requests in `access.log`, and how many?
9. **Error count.** How many requests returned a `5xx` server error?
10. **Find and replace (sed).** Print `servers.txt` with `up` shown as `🟢` and `down` as `🔴` (do not change the actual file).

---

## ✅ Answers

```bash
# 1. Count records (skip the header line)
tail -n +2 data/employees.csv | wc -l

# 2. Quick look
head -n 5 data/access.log
tail -n 3 data/access.log

# 3. Filter Engineering
grep "Engineering" data/employees.csv

# 4. name + salary columns (columns 2 and 4)
cut -d',' -f2,4 data/employees.csv

# 5. Top 3 salaries (sort by column 4, as numbers, biggest first)
tail -n +2 data/employees.csv | sort -t',' -k4 -nr | head -n 3

# 6. Different IPs
awk '{print $1}' data/access.log | sort -u | wc -l

# 7. Average salary
awk -F',' 'NR>1 {sum+=$4; n++} END {printf "Average: %.2f\n", sum/n}' data/employees.csv

# 8. Busiest IP
awk '{print $1}' data/access.log | sort | uniq -c | sort -nr | head -n 1

# 9. 5xx errors (the status code is column 9)
awk '$9 ~ /^5/ {count++} END {print count}' data/access.log

# 10. Pretty status (sed, only changes the output, not the file)
sed -e 's/ up / 🟢 /' -e 's/ down / 🔴 /' data/servers.txt
```

➡️ When you are comfortable, move on to [Part 2 — Conditionals](../02-conditionals/README.md).

---

## ⭐ Found this useful?
Please **star** ⭐, **fork** 🍴, and **share** 🔗 this repo on LinkedIn so others can use it too. Want to add a task or fix something? See [CONTRIBUTING.md](../CONTRIBUTING.md).

Made by **Shubham Sharma** · [GitHub](https://github.com/shubhs248) · [LinkedIn](https://www.linkedin.com/in/shubhs248)
