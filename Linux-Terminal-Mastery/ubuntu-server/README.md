# 🟠 Ubuntu Server

> Part of [Linux Terminal Mastery](../README.md). Debian family · `apt` · terminal only.

Ubuntu Server has **no GUI by default** — this is where real terminal fluency is built, and it mirrors how most production Linux systems actually run.

## 📥 VM Installation Guide

### 1. Download
Get the latest LTS ISO from **https://ubuntu.com/download/server** (24.04 LTS recommended).

### 2. Create the VM
| Setting | Value |
|---|---|
| RAM | 2 GB minimum |
| Disk | 20 GB minimum |
| CPU | 2 cores |
| Network | NAT + Bridged/Host-Only (so you can SSH into it) |

### 3. Install Steps
1. Boot the VM from the ISO → the installer is text-based (Subiquity).
2. Select language and keyboard layout.
3. Network: accept the default DHCP configuration.
4. Skip the proxy/mirror prompts unless you need them.
5. Disk setup: **use the entire disk** (again, this is the virtual disk only).
6. Set your **profile name, server name, username, and password**.
7. **Important:** On the "SSH Setup" screen, check **"Install OpenSSH server"** — this is how you'll connect to the machine going forward.
8. Skip additional snaps unless needed → let installation finish → reboot, remove the ISO.
9. Take a **snapshot** immediately after first successful login.

### 4. Find Its IP and Connect via SSH
From inside the VM (or console):
```bash
ip a          # note the inet address, e.g. 192.168.56.101
```
From your host machine terminal:
```bash
ssh yourusername@192.168.56.101
```
From this point on, **do all your work over SSH** — this is the realistic server workflow.

### 5. First Setup
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y vim htop ufw
sudo ufw allow OpenSSH
sudo ufw enable
```

## 🖥️ Server-Specific Notes

- There is no desktop environment — every task, including editing config files, happens through `nano`/`vim` and the shell.
- `systemctl` and `journalctl` become your primary tools for managing and debugging anything running on the box.
- Practice hosting something real: install `nginx`, edit `/etc/nginx/sites-available/default`, and view the result via your host browser using the VM's IP.

## ✅ What to Practice Here

- SSH-only workflows — no console fallback once you're comfortable
- Service management: `systemctl start/stop/status`, `journalctl -u <service>`
- Firewall configuration with `ufw`
- Editing configs with `vim`/`nano` under pressure (no copy-paste from a GUI)

## ➡️ Next Step

Once you're comfortable running a headless server, move to [`kali-linux/`](../kali-linux/README.md) to see the security-tooling side of the Debian family.
