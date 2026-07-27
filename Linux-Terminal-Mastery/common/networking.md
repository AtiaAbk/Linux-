# 🌐 Networking Basics (Common to All Distros)

> Part of [Linux Terminal Mastery](../README.md).

| Command | Purpose |
|---|---|
| `ip a` | Show interfaces & IPs (modern replacement for `ifconfig`) |
| `ping -c 4 google.com` | Test connectivity |
| `ss -tulpn` | Show listening ports (modern replacement for `netstat`) |
| `ssh user@host` | Remote login |
| `scp file user@host:/path/` | Copy a file over SSH |
| `rsync -avz src/ user@host:/dest/` | Efficient sync (local or remote) |
| `cat /etc/resolv.conf` | Check DNS configuration |
| `curl -I https://example.com` | Fetch headers only, quick reachability check |

## Firewalls (this is where distros diverge)

**Ubuntu / Kali (`ufw`):**
```bash
sudo ufw enable
sudo ufw allow 22/tcp
sudo ufw status verbose
```

**Fedora (`firewalld`):**
```bash
sudo firewall-cmd --state
sudo firewall-cmd --add-service=ssh --permanent
sudo firewall-cmd --reload
```

## Troubleshooting Connectivity

```bash
ip a                      # confirm interface has an IP
ping -c 4 8.8.8.8           # raw connectivity (bypasses DNS)
ping -c 4 google.com          # connectivity + DNS resolution
ssh -v user@host                # verbose SSH for auth/connection debugging
```
