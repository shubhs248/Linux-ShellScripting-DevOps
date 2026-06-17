# 🤝 Contributing

Thanks for thinking about helping out! This is a learning project, so contributions of every size are welcome — even fixing a typo.

If this repo helped you, the easiest way to support it is to **star** ⭐ it, **fork** 🍴 it, and **share** 🔗 it on LinkedIn so others can find it too.

## Ways you can help

- **Fix something** — a typo, a broken link, a command that does not work.
- **Add a new exercise** — more practice on conditionals, loops, functions, arrays, etc.
- **Add a new dataset** — another realistic file people can practise on.
- **Improve the wording** — make an explanation clearer or simpler.
- **Add answers in another shell** — `zsh`, `fish`, or POSIX `sh` versions are welcome.

## How to contribute (step by step)

1. **Fork** this repo to your own GitHub account (use the "Fork" button at the top).
2. **Clone** your fork to your computer:
   ```bash
   git clone https://github.com/<your-username>/linux-shell-practice-lab.git
   cd linux-shell-practice-lab
   ```
3. **Create a branch** for your change:
   ```bash
   git checkout -b add-array-exercise
   ```
4. **Make your change** and test it (see the checklist below).
5. **Commit** with a short, clear message:
   ```bash
   git add .
   git commit -m "Add a loop exercise on arrays"
   ```
6. **Push** your branch and open a **Pull Request**:
   ```bash
   git push -u origin add-array-exercise
   ```
   Then open the PR on GitHub and describe what you changed.

## Adding a new exercise

Please keep the same simple style so the repo stays easy to follow:

- Put the **starter** script in the right part folder (for example `03-loops/`).
- Put the matching **answer** in that part's `solutions/` folder, using the same file name.
- At the top of the starter script, include a short comment block with:
  - **WHAT YOU PRACTISE** — the idea in one line.
  - **WHAT TO BUILD** — what the script should do.
  - **HOW TO RUN** — an example command.
  - **HINTS** — a few helpful tips.
- Use `# TODO` lines to show where the learner should write code.

## Checklist before you open a PR

- [ ] Every script starts with `#!/usr/bin/env bash` and `set -euo pipefail`.
- [ ] Your script runs without errors: `bash your-script.sh`.
- [ ] (Nice to have) It passes [ShellCheck](https://www.shellcheck.net/): `shellcheck your-script.sh`.
- [ ] Comments and instructions use plain, simple English.
- [ ] If you added a new part, you linked it from the main `README.md`.

## Code of conduct

Be kind and helpful. This is a place for people to learn, so assume good intent and keep feedback friendly.

---

Made by **Shubham Sharma** · [GitHub](https://github.com/shubhs248) · [LinkedIn](https://www.linkedin.com/in/shubhs248)
