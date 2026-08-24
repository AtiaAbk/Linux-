# First Boot and the Kali Desktop

> Level: Beginner

## 🎯 Learning Objectives

- Locate the terminal and tool menus on a fresh Kali desktop
- Perform first-boot housekeeping (update, non-root check)

## 🧠 Concept

Kali ships with **Xfce** as its default desktop environment (lightweight, fast, low resource use — appropriate for VMs and older hardware). The applications menu is organized by security category (Information Gathering, Vulnerability Analysis, Web Application Analysis, etc.) — the same categories used in module 24.

## 💻 Syntax

```bash
whoami
sudo apt update && sudo apt upgrade -y
```

## 🔍 Examples

```bash
$ whoami
kali
```

## 📤 Expected Output

```text
kali
```

Confirms you're logged in as the non-root default user, not `root`.

## 🧩 How It Works

Since Kali 2020.1, the default login user is a standard non-root user (commonly `kali`) that uses `sudo` for privileged commands — matching the security best-practice used on Debian/Ubuntu, rather than the historical root-by-default Kali model.

## ⚠️ Common Mistakes

- Working as `root` for daily tasks out of habit from very old Kali tutorials — modern Kali doesn't expect this
- Skipping the first `apt update && apt upgrade` after install, then hitting confusing tool version mismatches later

## 🛠 Troubleshooting

**Problem:** Terminal app missing from the taskbar.
**Solution:** Open it from Applications → Favorites, or use the keyboard shortcut configured in Xfce settings (default varies by image).

## 🔐 Security Notes

Change the default password immediately after first boot with `passwd` if you used a pre-built image with a known default credential.

## 🧪 Practice

1. Boot your Kali VM, open a terminal, run `whoami` and confirm you are not `root`.
2. Run `sudo apt update && sudo apt upgrade -y`.

## 📝 Quiz

**Q: What is Kali's default desktop environment?**
A. GNOME
B. KDE Plasma
C. Xfce
D. Cinnamon

*(Answer: C)*

## 🔗 Related Topics

- [Installation Methods](03-installation-methods.md)
- [Kali's Directory Layout](05-kali-directory-layout.md)

---

[⬅ Previous: Installation Methods](03-installation-methods.md)
[🏠 Home](../README.md)
[Next: Kali's Directory Layout ➡](05-kali-directory-layout.md)
