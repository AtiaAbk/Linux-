# 📦 Package Managers (apt vs dnf)

> Part of [Linux Terminal Mastery](../README.md).

| Task | Ubuntu / Kali (`apt`) | Fedora (`dnf`) |
|---|---|---|
| Update package index | `sudo apt update` | `sudo dnf check-update` |
| Upgrade all packages | `sudo apt upgrade` | `sudo dnf upgrade` |
| Install a package | `sudo apt install nginx` | `sudo dnf install nginx` |
| Remove, keep config | `sudo apt remove nginx` | `sudo dnf remove nginx` |
| Remove + config | `sudo apt purge nginx` | `sudo dnf remove nginx` (dnf removes config by default) |
| Search for a package | `apt search nginx` | `dnf search nginx` |
| Show package info | `apt show nginx` | `dnf info nginx` |
| List installed | `apt list --installed` | `dnf list installed` |
| Clean unused deps | `sudo apt autoremove` | `sudo dnf autoremove` |
| Install local file | `sudo dpkg -i pkg.deb` | `sudo dnf install ./pkg.rpm` |

## Sandboxed / Cross-Distro Package Formats

These work the same regardless of underlying distro:

```bash
sudo snap install code --classic          # Snap (Ubuntu-native, works elsewhere too)
flatpak install flathub org.gimp.GIMP     # Flatpak (works on Fedora, Ubuntu, etc.)
```

## Common Mistake

Forgetting to update the package index before installing (`apt install` without a prior `apt update`) — this can install an outdated version or fail if the local index is stale.
