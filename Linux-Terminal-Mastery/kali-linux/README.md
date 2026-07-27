# ⚫ Kali Linux

> Part of [Linux Terminal Mastery](../README.md). Debian family · `apt` · security/pentest-focused.

Kali Linux is a Debian-based distribution purpose-built for **security research and penetration testing**, pre-loaded with hundreds of terminal-driven security tools.

> ⚠️ **Legal & Ethical Notice:** Only use Kali's tools against systems you own or have explicit written authorization to test (e.g., your own lab VMs). Unauthorized access to systems is illegal in most jurisdictions. This repository documents installation and terminal fundamentals only — it does not cover offensive tool usage or exploitation techniques.

## 📥 VM Installation Guide

### 1. Download
Get the official pre-built VM image (recommended, saves install steps) or ISO from **https://www.kali.org/get-kali/** → choose **"Virtual Machines"** for VirtualBox/VMware, or **"Installer Images"** to install from scratch.

### 2. Create the VM
| Setting | Value |
|---|---|
| RAM | 4 GB minimum |
| Disk | 40 GB minimum (tools + wordlists take space) |
| CPU | 2 cores |
| Network | NAT (isolate from other lab VMs unless intentionally testing them) |

### 3a. Using the Pre-Built VM Image (easiest)
1. Download and extract the VirtualBox/VMware image.
2. Import it directly into your hypervisor (**File → Import Appliance**).
3. Default credentials: `kali` / `kali` (change this immediately — see below).

### 3b. Installing from ISO (manual)
1. Boot the VM from the ISO.
2. Select **Graphical Install**.
3. Set language, location, keyboard layout.
4. Set hostname, domain (optional), create your user account and password.
5. Partition disks: **"Guided – use entire disk"**.
6. Choose desktop environment (Xfce is default and lightweight) or select "no GUI" for a minimal terminal-only install.
7. Finish install → reboot, remove ISO.
8. Take a **snapshot** immediately.

### 4. First Setup (critical — do this before anything else)
```bash
passwd                          # change the default password immediately
sudo apt update && sudo apt full-upgrade -y
```

## 🖥️ Kali-Specific Notes

- Kali is a **rolling release** — expect `apt update && apt full-upgrade` regularly rather than periodic LTS jumps.
- Modern Kali defaults to a **non-root standard user** (older versions defaulted to root) — use `sudo` as you would on Ubuntu.
- Comes with a curated toolset organized by category (information gathering, vulnerability analysis, etc.) accessible from the applications menu or directly by command name in the terminal.
- Treat this VM as **isolated** — don't reuse it as a general-purpose desktop.

## ✅ What to Practice Here

- Everything from `common/` applies identically (Kali is Debian underneath)
- Reinforce `apt` package management on a rolling-release system
- Practice safe, isolated lab networking — set up a second Kali/Ubuntu VM on a Host-Only network as a target, *never* a system you don't own

## ➡️ Next Step

Move to [`fedora/`](../fedora/README.md) to see how terminal fundamentals translate outside the Debian family entirely.
