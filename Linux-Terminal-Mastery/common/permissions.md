# 🔐 Permissions, Users & Services (Common to All Distros)

> Part of [Linux Terminal Mastery](../README.md).

## Reading Permissions

```
-rwxr-xr--  1 atia developers  1024 Jul 27 09:00 deploy.sh
 │└┬┘└┬┘└┬┘
 │ │  │  └── others: read only
 │ │  └───── group: read + execute
 │ └──────── owner: read + write + execute
 └────────── file type (- = file, d = directory, l = symlink)
```

| Command | Purpose |
|---|---|
| `chmod 750 file` | Owner: rwx, Group: rx, Others: none |
| `chown user:group file` | Change owner and group |
| `useradd -m atia` | Create user with home directory |
| `usermod -aG sudo atia` | Add user to `sudo` group (Fedora: `wheel` group) |
| `passwd atia` | Set/change password |
| `groupadd devs` | Create a group |

**Note (Fedora):** the admin group is `wheel`, not `sudo` — e.g. `usermod -aG wheel atia`.

## Services (systemd — identical across all four distros)

```bash
systemctl status nginx           # check status
systemctl start/stop/restart nginx
systemctl enable nginx           # start on boot
journalctl -u nginx -f            # live logs for a service
```

## Common Mistake

Using `chmod 777` "to make it work" grants everyone full read/write/execute access — a serious security risk. Diagnose the actual permission requirement instead (usually the correct owner/group is missing, not broader permissions).
