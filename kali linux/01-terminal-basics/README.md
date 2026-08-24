# 01 — Terminal Basics

> Level: 🟢 Absolute Beginner

This module covers the most basic — but most frequently used — terminal commands, each with a real demo.

---

## `pwd`

**What it does:** Shows the full path of the directory you're currently in. (Print Working Directory)

**Syntax:**
```bash
pwd
```

### 🖥️ Demo
```bash
$ pwd
/home/kali
```

### 📤 Output Explained
`/home/kali` means you're currently in the `kali` user's home directory. Starting with `/` means it's an **absolute path** — the full path starting from root (`/`).

### ⚙️ Important Options
- `pwd -P` → shows the real (physical) path if you're inside a symbolic link

### ⚠️ Common Mistake
None — this is a completely safe, read-only command.

---

## `whoami`

**What it does:** Shows which username you're currently active as in the terminal.

**Syntax:**
```bash
whoami
```

### 🖥️ Demo
```bash
$ whoami
kali
```

### 📤 Output Explained
You're working as the non-root user `kali`, not root. You'll need `sudo` for privileged commands.

---

## `hostname`

**What it does:** Shows the machine's network name.

**Syntax:**
```bash
hostname
```

### 🖥️ Demo
```bash
$ hostname
kali
```

### 📤 Output Explained
This machine is identified as `kali` on the network — e.g. `ping kali` would reach this machine (if it resolves on your local network).

---

## `uname -a`

**What it does:** Shows kernel version, architecture, and system information all at once.

**Syntax:**
```bash
uname [options]
```

### 🖥️ Demo
```bash
$ uname -a
Linux kali 6.6.9-amd64 #1 SMP PREEMPT_DYNAMIC Debian 6.6.9-1kali1 x86_64 GNU/Linux
```
*(Exact version numbers will differ on your system — this is an example output)*

### 📤 Output Explained
| Part | Meaning |
|---|---|
| `Linux` | Kernel name |
| `kali` | Hostname |
| `6.6.9-amd64` | Kernel version |
| `x86_64` | Processor architecture (64-bit) |
| `GNU/Linux` | System type |

### ⚙️ Important Options
- `uname -r` → kernel version only
- `uname -m` → architecture only

---

## `date`

**What it does:** Shows the system's current date and time.

**Syntax:**
```bash
date
```

### 🖥️ Demo
```bash
$ date
Mon Aug 24 14:32:07 +06 2026
```

### 📤 Output Explained
Shows the current day, date, and time based on your timezone. Matters a lot when correlating log timestamps during troubleshooting.

---

## `clear`

**What it does:** Clears the terminal screen (removes previous commands/output from view — doesn't erase actual history).

**Syntax:**
```bash
clear
```

### 🖥️ Demo
```bash
$ clear
```
*(The screen empties, a fresh prompt appears at the top)*

### ⚙️ Shortcut
You don't need to type `clear` — pressing **Ctrl + L** does the same thing.

---

## `history`

**What it does:** Shows a list of previously run commands in this session (and saved from earlier sessions).

**Syntax:**
```bash
history
```

### 🖥️ Demo
```bash
$ history
  1  pwd
  2  whoami
  3  hostname
  4  uname -a
  5  date
```

### 📤 Output Explained
Each line has a number + the earlier command. You can re-run any of them using `!<number>` — e.g. `!5` reruns `date`.

### ⚙️ Important Uses
- `history | grep ssh` → finds any past commands related to `ssh`
- `Ctrl + R` → reverse-search through history (type and it finds matches as you go)

---

## `man`

**What it does:** Shows the full official **manual** (documentation) for any command, right in the terminal.

**Syntax:**
```bash
man <command>
```

### 🖥️ Demo
```bash
$ man ls
```

### 📤 Output Explained
This opens a scrollable page with all the options, syntax, and details for the `ls` command. Press **`q`** to exit.

### ⚙️ Important Navigation
| Key | Action |
|---|---|
| `Space` | Next page |
| `b` | Previous page |
| `/word` | Search inside the manual |
| `q` | Quit |

### ⚠️ Common Mistake
Not knowing how to exit `man` and closing the whole terminal instead — remember, just press **`q`**.

---

## 🧪 Practice

Type and run each of these yourself, and note the output:

```bash
pwd
whoami
hostname
uname -a
date
history
man pwd
```

---

## 📝 Quiz

**Q: Which command shows the path of your current directory?**
A. `ls`
B. `pwd`
C. `cd`
D. `whoami`

*(Answer: B)*

---

[🏠 Home](../README.md)
[🔑 Command Reference](../command-reference/00-master-command-index.md)
[Next: Navigation & Filesystem ➡](../02-navigation-filesystem/README.md)
