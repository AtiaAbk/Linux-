# 🛠️ Troubleshooting Guide

> Part of [Ubuntu Terminal Mastery](README.md)

## General Workflow

1. **Identify the symptom** — what exactly is failing, and since when?
2. **Check logs** — `journalctl -xe`, `/var/log/syslog`, or the service's own log.
3. **Check status** — `systemctl status <service>`.
4. **Narrow the cause** — config, permissions, resources (disk/memory/CPU), or network.
5. **Fix, verify, document** — confirm the fix, then note what happened for next time.

## Common Scenarios

### "Permission denied" running a script
```bash
chmod +x script.sh && ./script.sh
```

### Service won't start
```bash
systemctl status myservice
journalctl -u myservice -xe --no-pager
```
Check the unit file syntax and that referenced paths/users exist.

### Disk full
```bash
df -h                 # which filesystem is full
du -sh /var/* | sort -rh | head   # find the biggest offenders
```
Common culprits: `/var/log` (uncontrolled logs), old kernels in `/boot`, Docker images/volumes.

### High CPU / memory usage
```bash
top          # or htop
ps aux --sort=-%cpu | head
ps aux --sort=-%mem | head
```

### No network connectivity
```bash
ip a                     # confirm interface has an IP
ping -c 4 8.8.8.8         # test raw connectivity
ping -c 4 google.com      # test DNS resolution
cat /etc/resolv.conf      # check DNS config
```

### Can't SSH into a server
- Confirm the service is running: `systemctl status ssh`
- Confirm the firewall allows it: `sudo ufw status`
- Check you're using the right key/user: `ssh -v user@host` for verbose debugging.

### Package install fails
```bash
sudo apt update
sudo apt --fix-broken install
sudo dpkg --configure -a
```

## Reading Logs Effectively

- `journalctl -xe` — recent, prioritized system events.
- `journalctl -u <unit> --since "1 hour ago"` — scoped by time and service.
- `tail -f /var/log/syslog` — live tail while reproducing an issue.
- `dmesg | tail` — recent kernel messages (hardware, driver, boot issues).

## When You're Stuck

- Re-read the exact error message — it usually tells you more than it seems to at first glance.
- Search the error text plus "ubuntu" in quotes.
- Check `man <command>` and `<command> --help` before assuming misbehavior.
- Isolate variables: does it fail as root? On a fresh directory? With a minimal config?
