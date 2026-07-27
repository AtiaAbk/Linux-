# ✅ Best Practices

> Part of [Ubuntu Terminal Mastery](README.md)

## Safety

- Never run commands you don't understand as `root`/with `sudo` — look them up first.
- Before any destructive command (`rm -rf`, `dd`, partitioning tools), run a dry version first (`ls` the glob, `--dry-run` if available) and double-check the path.
- Quote your variables: `rm -rf "$DIR"/` not `rm -rf $DIR/` — an empty/unset `$DIR` with the unquoted form can become `rm -rf /`.
- Avoid `chmod 777` — grant the minimum permission that solves the actual problem.
- Keep backups before editing system config files; copy first: `cp /etc/nginx/nginx.conf{,.bak}`.

## Efficiency

- Use Tab completion and `Ctrl+R` history search constantly — don't retype commands.
- Alias your most common long commands in `~/.bashrc`.
- Prefer `rsync -avz` over `cp -r` for large or remote transfers (resumable, incremental).
- Use `tmux`/`screen` for long-running remote sessions that must survive disconnects.

## Scripting

- Start every script with `#!/bin/bash` and `set -euo pipefail` to fail fast on errors.
- Quote variables (`"$var"`) to avoid word-splitting bugs.
- Use `shellcheck` to lint scripts before running them in production.
- Log script output; don't let automation fail silently.

## System Administration

- Update package indexes before installing (`apt update` before `apt install`).
- Use LTS Ubuntu releases in production for long-term support.
- Monitor logs proactively (`journalctl`, `/var/log/`) rather than only when something breaks.
- Document any manual change to a production system — future-you (or a teammate) will need it.

## Security

- Disable root SSH login; use key-based auth over passwords.
- Keep the firewall (`ufw`) enabled with a default-deny inbound policy.
- Apply security updates promptly (`unattended-upgrades` for critical patches).
- Follow the principle of least privilege for users, groups, and file permissions.
