# 🟠 Ubuntu Desktop

> Part of [Linux Terminal Mastery](../README.md). Debian family · `apt` · GUI + terminal.

Ubuntu Desktop is the recommended **starting point** in this repo — it has a full GUI as a safety net while you build terminal fluency.

## 📥 VM Installation Guide

### 1. Download
Get the latest LTS ISO from **https://ubuntu.com/download/desktop** (24.04 LTS recommended — 5 years of support).

### 2. Create the VM
| Setting | Value |
|---|---|
| RAM | 4 GB minimum |
| Disk | 25 GB minimum (dynamically allocated) |
| CPU | 2 cores |
| Network | NAT |

### 3. Install Steps
1. Boot the VM from the ISO.
2. Choose **"Try or Install Ubuntu"** → Install Ubuntu.
3. Select **Normal installation** (includes standard apps).
4. Choose **"Erase disk and install Ubuntu"** — this only affects the *virtual* disk, not your host machine.
5. Set your timezone, create a username/password (remember this — you'll use it with `sudo` constantly).
6. Wait for install to finish → Restart → remove the virtual ISO when prompted.
7. Take a **snapshot** in your hypervisor immediately after first boot.

### 4. First Terminal Setup
Open the terminal with `Ctrl+Alt+T`, then:
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl wget vim tree htop
```

## 🖥️ Desktop-Specific Notes

- The GUI is useful for *verifying* what the terminal is doing (e.g., open Files app after `mkdir` to see the folder appear) — use it as a training wheel, not a crutch.
- File manager path bar accepts `Ctrl+L` to type a path directly, similar to `cd`.
- GNOME's built-in **Settings → About** is the GUI equivalent of `hostnamectl` / `uname -a`.

## ✅ What to Practice Here

- All of [`common/terminal-basics.md`](../common/terminal-basics.md)
- File permissions — compare `ls -l` output to the GUI file properties dialog
- Installing/removing software via `apt` instead of the Software Center

## ➡️ Next Step

Once navigation and file operations feel natural, move to [`ubuntu-server/`](../ubuntu-server/README.md) to practice the same skills with **no GUI at all**.
