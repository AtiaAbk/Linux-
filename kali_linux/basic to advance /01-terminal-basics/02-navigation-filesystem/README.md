# 02 — Navigation & Filesystem

> Level: 🟢 Beginner

This module teaches you how to move around the Linux filesystem and understand what you're looking at — every command shown with a real demo and real output.

---

## `cd`

**What it does:** Changes your current working directory.

**Syntax:**
```bash
cd [directory]
```

### 🖥️ Demo
```bash
$ pwd
/home/kali
$ cd /etc
$ pwd
/etc
```

### 📤 Output Explained
You started in `/home/kali`, moved into `/etc` with `cd /etc`, and `pwd` confirms the move worked.

### ⚙️ Important Shortcuts
| Command | Meaning |
|---|---|
| `cd` (no argument) | Go to your home directory |
| `cd ~` | Go to your home directory |
| `cd ..` | Move up one directory |
| `cd -` | Go back to the previous directory |
| `cd /` | Go to the filesystem root |

### 🖥️ Demo — shortcuts
```bash
$ cd /etc
$ cd ..
$ pwd
/
$ cd -
/etc
```

### ⚠️ Common Mistake
Typing a path with a typo and getting `bash: cd: no such file or directory` — always double-check spelling, and use **Tab** to auto-complete directory names instead of typing them fully.

---

## `ls`

**What it does:** Lists the contents (files and folders) of a directory.

**Syntax:**
```bash
ls [options] [path]
```

### 🖥️ Demo
```bash
$ ls /home/kali
Desktop  Documents  Downloads  Music  Pictures  Videos
```

### 📤 Output Explained
These are the default folders created for a new user in their home directory.

### ⚙️ Important Options
| Option | Meaning |
|---|---|
| `ls -l` | Long format — permissions, owner, size, date |
| `ls -a` | Show hidden files too (files starting with `.`) |
| `ls -la` | Combine both above |
| `ls -h` | Human-readable file sizes (with `-l`) |
| `ls -R` | List recursively (subfolders too) |

### 🖥️ Demo — `ls -la`
```bash
$ ls -la /home/kali
drwxr-xr-x  15 kali kali 4096 Aug 24 10:02 .
drwxr-xr-x   3 root root 4096 Jan 10 09:11 ..
-rw-r--r--   1 kali kali  220 Jan 10 09:11 .bash_logout
-rw-r--r--   1 kali kali 3526 Jan 10 09:11 .bashrc
drwxr-xr-x   2 kali kali 4096 Jan 10 09:12 Desktop
```

### 📤 Output Explained
| Column | Meaning |
|---|---|
| `drwxr-xr-x` | File type + permissions (`d` = directory) |
| `15` | Number of hard links |
| `kali kali` | Owner and group |
| `4096` | Size in bytes |
| `Aug 24 10:02` | Last modified date |
| `.` / `..` | Current directory / parent directory |

Files starting with `.` (like `.bashrc`) are **hidden** and only show up with `-a`.

---

## `tree`

**What it does:** Shows the folder structure visually as a tree, including subfolders.

**Syntax:**
```bash
tree [options] [path]
```

*(If not installed: `sudo apt install tree`)*

### 🖥️ Demo
```bash
$ tree Documents
Documents
├── notes.txt
├── projects
│   ├── script1.sh
│   └── script2.sh
└── reports
    └── weekly.md

2 directories, 4 files
```

### 📤 Output Explained
The tree shows `Documents` contains one file (`notes.txt`) and two subfolders (`projects`, `reports`), each with their own files — much easier to read at a glance than plain `ls`.

### ⚙️ Important Options
| Option | Meaning |
|---|---|
| `tree -L 2` | Limit depth to 2 levels |
| `tree -a` | Include hidden files |
| `tree -d` | Show only directories, no files |

---

## Absolute vs Relative Paths

**Concept:** Every location in Linux can be described two ways.

| Type | Example | Meaning |
|---|---|---|
| Absolute | `/home/kali/Documents` | Full path starting from root `/` — always the same regardless of where you are |
| Relative | `Documents` or `../Downloads` | Path relative to your **current** directory |

### 🖥️ Demo
```bash
$ pwd
/home/kali
$ cd Documents          # relative — works because Documents is inside /home/kali
$ pwd
/home/kali/Documents
$ cd /home/kali/Desktop # absolute — works from anywhere
$ pwd
/home/kali/Desktop
```

### ⚠️ Common Mistake
Using a relative path when you're not in the directory you think you're in — always run `pwd` first if you're unsure.

---

## 🧪 Practice

```bash
pwd
cd /etc
ls -la
cd ~
tree -L 2 .
```

## 📝 Quiz

**Q: Which command takes you back to your home directory from anywhere?**
A. `cd /`
B. `cd ~`
C. `cd ..`
D. `pwd`

*(Answer: B)*

---

[⬅ Previous: Terminal Basics](../01-terminal-basics/README.md)
[🏠 Home](../README.md)
[🔑 Command Reference](../command-reference/00-master-command-index.md)
[Next: File Operations ➡](../03-file-operations/README.md)
