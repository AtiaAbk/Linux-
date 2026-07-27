# 🗒️ Core Commands Cheat Sheet

## Navigation
| Command | Action |
|---|---|
| `pwd` | Show current directory |
| `cd path` | Change directory |
| `ls -lah` | List all files, long format, human-readable sizes |

## Files
| Command | Action |
|---|---|
| `cp -r src dest` | Copy (recursive for dirs) |
| `mv src dest` | Move/rename |
| `rm -r dir` | Remove directory recursively |
| `mkdir -p a/b/c` | Create nested directories |
| `touch file` | Create empty file / update timestamp |

## Viewing & Searching
| Command | Action |
|---|---|
| `cat file` | Print whole file |
| `less file` | Paginated view |
| `tail -f file` | Live-follow a file |
| `grep -rn "pattern" .` | Recursive, line-numbered search |
| `find . -name "*.log"` | Find files by name |

## Permissions
| Command | Action |
|---|---|
| `chmod 755 file` | rwx / r-x / r-x |
| `chown user:group file` | Change owner/group |

## Processes
| Command | Action |
|---|---|
| `ps aux` | List all processes |
| `top` / `htop` | Live monitor |
| `kill PID` | Graceful stop |
| `kill -9 PID` | Force stop |

## Packages
| Command | Action |
|---|---|
| `sudo apt update && sudo apt upgrade` | Refresh + upgrade |
| `sudo apt install pkg` | Install |
| `sudo apt remove pkg` | Uninstall |

## Networking
| Command | Action |
|---|---|
| `ip a` | Show interfaces/IPs |
| `ping -c 4 host` | Test connectivity |
| `ss -tulpn` | Show listening ports |
| `ssh user@host` | Remote login |

## Redirection
| Symbol | Action |
|---|---|
| `>` | Overwrite output to file |
| `>>` | Append output to file |
| `\|` | Pipe to next command |
| `2>` | Redirect stderr |
