# 🔵 Fedora

> Part of [Linux Terminal Mastery](../README.md). Red Hat family · `dnf` · GUI + terminal.

Fedora is a Red Hat–sponsored, community-driven distribution that tracks upstream software closely. Learning it builds skills that transfer directly to **RHEL, CentOS Stream, and Rocky/AlmaLinux** — common in enterprise environments.

## 📥 VM Installation Guide

### 1. Download
Get the Workstation ISO from **https://fedoraproject.org/workstation/download**.

### 2. Create the VM
| Setting | Value |
|---|---|
| RAM | 4 GB minimum |
| Disk | 25 GB minimum |
| CPU | 2 cores |
| Network | NAT |

### 3. Install Steps
1. Boot the VM from the ISO → select **"Start Fedora-Workstation-Live"**.
2. On the live desktop, double-click **"Install to Hard Drive."**
3. Choose language and keyboard layout.
4. Installation destination: select the virtual disk, use automatic partitioning.
5. Set root password (optional, often left disabled in favor of `sudo`) and create your user account, checking **"Make this user administrator."**
6. Begin installation → reboot when finished → remove the virtual ISO.
7. Take a **snapshot** immediately after first login.

### 4. First Terminal Setup
```bash
sudo dnf check-update
sudo dnf upgrade -y
sudo dnf install -y git curl wget vim tree htop
```

## 🖥️ Fedora-Specific Notes

| Concept | Ubuntu/Kali (Debian) | Fedora (Red Hat) |
|---|---|---|
| Package manager | `apt` | `dnf` |
| Firewall | `ufw` | `firewalld` |
| Package format | `.deb` | `.rpm` |
| Mandatory Access Control | AppArmor (often minimal) | **SELinux (enforcing by default)** |

- **SELinux** is Fedora's biggest conceptual difference — it enforces mandatory access control beyond standard Unix permissions. If something is denied unexpectedly despite correct `chmod`/`chown`, check:
  ```bash
  sudo ausearch -m avc -ts recent
  getenforce
  ```
- Firewall management uses zones:
  ```bash
  sudo firewall-cmd --state
  sudo firewall-cmd --add-service=http --permanent
  sudo firewall-cmd --reload
  ```

## ✅ What to Practice Here

- Everything from `common/` applies — confirm for yourself that navigation, permissions, and process management are identical to Ubuntu/Kali
- `dnf` package workflows side-by-side with `apt` (see the [comparison table](../README.md#-package-managers--one-concept-four-syntaxes) in the main README)
- Basic SELinux awareness — a real enterprise-relevant skill Debian-family distros don't teach you

## ➡️ Next Step

Return to the [main README](../README.md#-learning-path) and work through the cross-distro learning path end to end.
