# Kali's Directory Layout and Defaults

> Level: Beginner

## 🎯 Learning Objectives

- Know where Kali stores its security tools and wordlists
- Understand this is a full Debian filesystem underneath (see module 04)

## 🧠 Concept

Kali's filesystem follows the standard Linux Filesystem Hierarchy Standard (covered in depth in module 04) with a few conventional locations security practitioners rely on:

| Path | Contents |
|---|---|
| `/usr/share/wordlists/` | Wordlists (e.g. `rockyou.txt`, gzip-compressed by default) |
| `/usr/share/nmap/` | Nmap scripts and data files |
| `/usr/share/metasploit-framework/` | Metasploit Framework install |
| `/opt/` | Manually installed / non-packaged security tools |
| `/etc/apt/sources.list.d/kali.list` | Kali's official repository definition |

## 💻 Syntax

```bash
ls /usr/share/wordlists/
```

## 🔍 Examples

```bash
$ ls /usr/share/wordlists/
```

## 📤 Expected Output

```text
dirb  dirbuster  fasttrack.txt  metasploit  nmap.lst  rockyou.txt.gz  sqlmap.txt  wfuzz
```

## 🧩 How It Works

`rockyou.txt.gz` ships compressed to save disk space; it must be extracted (`gunzip`) before tools like password-cracking labs can read it directly — this is intentional so a fresh install doesn't waste space on an uncompressed multi-hundred-megabyte file nobody has used yet.

## ⚠️ Common Mistakes

- Assuming `rockyou.txt` is ready to use without checking whether it's still gzip-compressed
- Installing tools manually into random locations instead of `/opt/` — makes cleanup and updates harder to track

## 🛠 Troubleshooting

**Problem:** A lab exercise references `rockyou.txt` but the command fails.
**Diagnosis:** `ls /usr/share/wordlists/` — is it still `.gz`?
**Solution:** `sudo gunzip /usr/share/wordlists/rockyou.txt.gz`

## 🔐 Security Notes

`rockyou.txt` is a well-known leaked password list used purely for educational password-strength testing in authorized labs — never use it, or any wordlist, against systems you don't own or have authorization to test.

## 🧪 Practice

1. List `/usr/share/wordlists/` on your system.
2. Check whether `rockyou.txt.gz` is compressed, and extract it if you plan to use it in later lab modules.

## 📝 Quiz

**Q: Where does Kali conventionally store wordlists?**
A. `/etc/wordlists/`
B. `/usr/share/wordlists/`
C. `/home/wordlists/`
D. `/var/wordlists/`

*(Answer: B)*

## 🔗 Related Topics

- [Filesystem](../04-filesystem/README.md)
- [Kali Tools Overview](../24-kali-tools/README.md)

---

[⬅ Previous: First Boot and the Kali Desktop](04-kali-desktop-and-first-boot.md)
[🏠 Home](../README.md)
[Next Module: Terminal Fundamentals ➡](../03-terminal-fundamentals/README.md)
