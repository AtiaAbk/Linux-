# 🗒️ Universal Commands Cheat Sheet

> Works identically on Ubuntu Desktop, Ubuntu Server, Kali Linux, and Fedora.

## Navigation & Files
| Command | Action |
|---|---|
| `pwd` / `cd path` / `ls -lah` | Where am I / move / list |
| `cp -r src dest` | Copy |
| `mv src dest` | Move/rename |
| `rm -r dir` | Remove directory |
| `mkdir -p a/b/c` | Nested dirs |

## Viewing & Searching
| Command | Action |
|---|---|
| `cat` / `less` / `tail -f` | View a file |
| `grep -rn "pattern" .` | Search text |
| `find . -name "*.log"` | Find files |

## Permissions & Processes
| Command | Action |
|---|---|
| `chmod 755 file` | Set permissions |
| `chown user:group file` | Set ownership |
| `ps aux` / `top` / `kill PID` | Manage processes |

## Packages
| Task | Debian family (`apt`) | Fedora (`dnf`) |
|---|---|---|
| Install | `sudo apt install pkg` | `sudo dnf install pkg` |
| Update all | `sudo apt update && sudo apt upgrade` | `sudo dnf upgrade` |

## Networking
| Command | Action |
|---|---|
| `ip a` | Show IPs |
| `ssh user@host` | Remote login |
| `ss -tulpn` | Listening ports |

## Firewall
| Distro | Command |
|---|---|
| Ubuntu/Kali | `sudo ufw allow 22/tcp` |
| Fedora | `sudo firewall-cmd --add-service=ssh --permanent` |
