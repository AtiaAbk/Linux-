# ❓ FAQ & Interview Questions

> Part of [Ubuntu Terminal Mastery](README.md)

## General FAQ

**Q: Do I need to memorize every command?**
No. Focus on understanding *categories* of commands (navigation, permissions, processes, networking) and how to read `man` pages / `--help`. Muscle memory comes from repetition, not memorization.

**Q: Bash or Zsh?**
Bash is the Ubuntu default and what you'll find on almost every server — learn it first. Zsh adds quality-of-life features for personal use once you're comfortable.

**Q: Is it safe to practice as root?**
No — practice with a regular user and `sudo` only when needed. This mirrors real-world security practice and prevents accidental system damage.

**Q: `apt` vs `apt-get`?**
`apt` is the modern, user-friendly frontend (better progress bars, sane defaults). `apt-get` is the older, more script-stable tool. Use `apt` interactively, `apt-get`/`apt-cache` in scripts if you need very stable output parsing.

**Q: Why does my script say "permission denied" when I try to run it?**
It likely isn't executable yet: `chmod +x script.sh`, then run with `./script.sh`.

## Interview Questions (with model answers)

**1. What's the difference between a hard link and a symbolic link?**
A hard link is another directory entry pointing to the same inode (same data on disk) — it survives if the original is deleted. A symlink is a separate file that stores a *path* to the target — it breaks if the target is moved or deleted.

**2. Explain the Linux permission model.**
Every file has an owner, a group, and "others," each with read/write/execute bits, viewable via `ls -l` (e.g., `rwxr-xr--`). `chmod` changes these bits; `chown`/`chgrp` change ownership.

**3. What happens when you run `kill -9` vs `kill -15`?**
`-15` (SIGTERM) asks the process to terminate gracefully, allowing cleanup. `-9` (SIGKILL) forces immediate termination with no cleanup — use only when a process is unresponsive.

**4. How would you find which process is using port 8080?**
`sudo ss -tulpn | grep 8080` (or the older `sudo lsof -i :8080`).

**5. What's the difference between `>` and `>>`?**
`>` overwrites the target file; `>>` appends to it.

**6. How does `systemd` differ from older init systems like SysVinit?**
systemd starts services in parallel using dependency-based unit files, offers on-demand socket activation, and centralizes logging via `journald` — SysVinit ran sequential shell scripts in `/etc/init.d`.

**7. What's a zombie process?**
A process that has finished executing but still has an entry in the process table because its parent hasn't yet read its exit status via `wait()`. Seen as `<defunct>` in `ps`.

**8. How do you check disk usage and find what's eating space?**
`df -h` for filesystem-level usage; `du -sh /*` (or `ncdu` for an interactive view) to find large directories.

**9. What does `chmod 644` mean?**
Owner: read+write (6), Group: read-only (4), Others: read-only (4). Common for regular files that shouldn't be executable.

**10. How would you troubleshoot a service that won't start?**
`systemctl status <service>` for a summary, then `journalctl -u <service> -xe` for detailed logs; check the unit file config and file permissions on anything it reads.
