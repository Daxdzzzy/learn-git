# Lab 01 — First-Time Setup
> Pro Git §1.6–1.7 · Est. time: 20 min · Difficulty: ●○○

## Goal
Understand where Git reads its configuration from and which value wins when the same setting exists in several places.

## Warm-up (from memory, no book)
1. What are the three main states a file can be in, according to §1.3?
2. What is the difference between a centralized and a distributed VCS?

**My answers:**

## Concept
Git reads configuration from three levels: **system** (`/etc/gitconfig`), **global** (`~/.gitconfig` or `~/.config/git/config`), and **local** (`.git/config` inside a repo). When the same key is set at several levels, the most specific one wins: local over global over system. Your identity (`user.name`, `user.email`) is recorded in every commit you make. `git config` can both read and write values, and has flags to show where each value comes from. Built-in help is available via `git help <verb>`, `git <verb> --help`, and the short `git <verb> -h`.

## Setup
```sh
./setup.sh
cd /tmp/learn-git/lab-01
```

## Tasks
1. Using only Git's built-in help, find the `git config` flag that prints the **scope** (system/global/local) next to each value, and the one that prints the **file**.
   — ✔ **Check:** listing all settings shows `local`/`global` (or a file path) at the start of each line.
2. `setup.sh` set a `user.email` for this repo only. Before running anything, **predict** which email a commit here would use. Then verify with the flags from task 1.
   — ✔ **Check:** you can name the file where the winning `user.email` lives.
3. Without touching your global config, make this repo use the name `Lab Student`. Then commit `hello.txt`.
   — ✔ **Check:** `git log -1 --format='%an <%ae>'` → `Lab Student <lab-01@example.com>`

**Commands I ran:**
```sh
```
**What I observed:**

## Break it / Fix it
Open `.git/config` in an editor and add a line with just `this is not valid` at the end. Run `git status`. Read the error, then fix the repo **without** re-running `setup.sh`.

**How I fixed it:**

## Explain it
Explain to someone who has never used Git why a repo can commit with a different email than the rest of your projects, in 3–4 sentences.

**My explanation:**

## Takeaways
-

## Review
_Filled after SUBMIT._
