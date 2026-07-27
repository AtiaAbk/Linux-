# 🗺️ Learning Roadmap

> Part of [Ubuntu Terminal Mastery](README.md)

A suggested path through this repository. Each stage builds on the last — don't skip ahead if a concept feels shaky.

## Stage 1 — Beginner (1–2 weeks)

**Goal:** Get comfortable navigating and manipulating files without touching a GUI.

- [ ] Install Ubuntu (VM or WSL) — see README [Installation Guide](README.md#-ubuntu-installation-guide)
- [ ] Learn the filesystem layout — [`linux-filesystem.md`](linux-filesystem.md)
- [ ] Master navigation: `pwd`, `cd`, `ls`, `tree`
- [ ] File operations: `cp`, `mv`, `rm`, `mkdir`, `touch`
- [ ] Viewing files: `cat`, `less`, `head`, `tail`
- [ ] Terminal shortcuts and history (`Ctrl+R`, `!!`, Tab completion)
- **Checkpoint project:** Organize a messy `Downloads` folder into subfolders using only the terminal.

## Stage 2 — Intermediate (2–4 weeks)

**Goal:** Manage a real system — users, packages, processes, basic networking.

- [ ] Permissions & ownership — [`permissions.md`](permissions.md)
- [ ] Package management — [`package-management.md`](package-management.md)
- [ ] Users & groups — `useradd`, `usermod`, `passwd`, `groupadd`
- [ ] Process management — [`process-management.md`](process-management.md)
- [ ] Service management (systemd) — [`service-management.md`](service-management.md)
- [ ] Networking basics — [`networking.md`](networking.md), SSH
- **Checkpoint project:** Provision a fresh VM: create a non-root sudo user, install and start nginx, open port 80 in the firewall.

## Stage 3 — Advanced (4–6 weeks)

**Goal:** Automate your work and think in scripts.

- [ ] Shell scripting fundamentals — [`shell-scripting.md`](shell-scripting.md)
- [ ] Text processing: `grep`, `sed`, `awk` — [`text-processing.md`](text-processing.md)
- [ ] Pipes, redirection, exit codes
- [ ] Cron jobs & systemd timers — [`automation.md`](automation.md)
- [ ] Security basics: `ufw`, SSH hardening — [`security.md`](security.md)
- **Checkpoint project:** Write a backup script that archives a directory, timestamps it, rotates old backups, and runs nightly via cron.

## Stage 4 — Expert (ongoing)

**Goal:** Operate and troubleshoot production systems.

- [ ] Performance monitoring & tuning — [`performance.md`](performance.md)
- [ ] Deep troubleshooting — [`troubleshooting.md`](troubleshooting.md)
- [ ] System administration at scale — [`system-administration.md`](system-administration.md)
- [ ] Containers — [`containers.md`](containers.md)
- [ ] Virtualization — [`virtualization.md`](virtualization.md)
- **Checkpoint project:** Diagnose and fix a deliberately broken VM (full disk, failed service, misconfigured firewall) using only log analysis and CLI tools.

## How to Use This Roadmap

1. Work top to bottom — each stage assumes the last.
2. Do the checkpoint project before moving on; reading commands isn't the same as using them.
3. Keep a personal "commands I learned" log — writing it down cements it.
4. Revisit [`cheatsheets/`](cheatsheets/) as quick refreshers, not as your primary learning material.
