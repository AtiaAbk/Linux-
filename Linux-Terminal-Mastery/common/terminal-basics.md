# ⌨️ Terminal Basics (Common to All Distros)

> Part of [Linux Terminal Mastery](../README.md). Applies identically to Ubuntu Desktop, Ubuntu Server, Kali Linux, and Fedora.

## Shortcuts

| Shortcut | Action |
|---|---|
| `Tab` | Autocomplete file/command names |
| `Ctrl + C` | Kill the current running process |
| `Ctrl + D` | Exit shell / EOF |
| `Ctrl + L` | Clear the screen |
| `Ctrl + R` | Reverse search command history |
| `Ctrl + A` / `Ctrl + E` | Jump to start / end of line |
| `!!` | Repeat last command |

## Navigation

```bash
pwd                # print working directory
cd /var/log         # change directory
cd ~                 # go home
cd -                  # go to previous directory
ls -lah               # list all, long, human-readable
tree -L 2               # directory tree, 2 levels deep
```

## File Operations

```bash
cp -r src/ dest/         # copy (recursive for directories)
mv old.txt new.txt        # move/rename
rm -r folder/               # remove directory recursively
mkdir -p a/b/c                # nested directories in one shot
touch file.txt                  # create empty file / update timestamp
```

## Viewing Files

```bash
cat file.txt          # dump whole file
less file.txt           # paginated, searchable (press / to search, q to quit)
head -n 20 file.log        # first 20 lines
tail -f app.log               # live-follow a growing file
```

## Searching

```bash
grep -rn "ERROR" .            # recursive, line-numbered text search
find . -name "*.log"            # find files by name
find . -mtime -1                  # files modified in the last 24 hours
```

## Permissions

```bash
chmod 755 script.sh          # rwxr-xr-x
chown user:group file          # change owner and group
```
Full breakdown: [`permissions.md`](permissions.md)

## Processes

```bash
ps aux                 # list all processes
top                       # live monitor
kill PID                    # graceful stop
kill -9 PID                   # force stop (last resort)
```

## Common Mistakes (apply everywhere)

- Forgetting `-r` when copying/removing directories.
- Running `rm -rf` without double-checking the path — there is no recycle bin.
- Using `chmod 777` to "make it work" instead of diagnosing the real permission need.
- Not quoting variables in scripts (`rm -rf "$DIR"` not `rm -rf $DIR`).
