# AUR Packages

This directory contains PKGBUILDs for Arch User Repository submission.

## Packages

| Package | Type | Description |
|---------|------|-------------|
| `bunsenite` | Source | Build from source with Rust |
| `bunsenite-bin` | Binary | Pre-built binary from GitHub releases |
| `czech-file-knife` | Source | Build from source with Rust |
| `echidnabot` | Source | Build from source with Rust |

## Submitting to AUR

Each package needs to be submitted as a separate git repository to aur.archlinux.org.

### Steps

1. Create an AUR account at https://aur.archlinux.org/register
2. Add your SSH key to your AUR account
3. For each package:

```bash
# Clone the AUR repo (creates empty repo if new)
git clone ssh://aur@aur.archlinux.org/<pkgname>.git
cd <pkgname>

# Copy PKGBUILD
cp /path/to/PKGBUILD .

# Generate .SRCINFO
makepkg --printsrcinfo > .SRCINFO

# Commit and push
git add PKGBUILD .SRCINFO
git commit -m "Initial upload"
git push
```

### Testing locally

```bash
cd <package-dir>
makepkg -si  # Build and install
```

## Installation (once published)

```bash
# Using yay
yay -S bunsenite
yay -S bunsenite-bin  # Pre-built binary
yay -S czech-file-knife
yay -S echidnabot

# Using paru
paru -S bunsenite
```
