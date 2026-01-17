# hyperpolymath Package Repository

This repository contains package manifests for Homebrew (macOS/Linux) and Scoop (Windows).

## Homebrew (macOS/Linux)

### Installation

```bash
# Add the tap
brew tap hyperpolymath/tap

# Install packages
brew install bunsenite
brew install czech-file-knife
brew install echidnabot
```

### Available Formulas

| Package | Description |
|---------|-------------|
| `bunsenite` | Nickel configuration file parser with multi-language FFI bindings |
| `czech-file-knife` | Universal file management toolkit with cloud provider integration |
| `echidnabot` | Proof-aware CI bot for theorem proof verification |

## Scoop (Windows)

### Installation

```powershell
# Add the bucket
scoop bucket add hyperpolymath https://github.com/hyperpolymath/homebrew-tap

# Install packages
scoop install hyperpolymath/bunsenite
scoop install hyperpolymath/czech-file-knife
scoop install hyperpolymath/echidnabot
```

### Available Manifests

All manifests are located in the `bucket/` directory.

## APT Repository (Debian/Ubuntu)

```bash
# Add repository (unsigned for now)
echo "deb [trusted=yes] https://hyperpolymath.github.io/homebrew-tap/apt stable main" | sudo tee /etc/apt/sources.list.d/hyperpolymath.list
sudo apt update

# Install packages
sudo apt install bunsenite czech-file-knife echidnabot
```

See [apt/README.md](apt/README.md) for GPG-signed setup.

## DNF/Zypper Repository (Fedora/openSUSE)

```bash
# Fedora/RHEL
sudo tee /etc/yum.repos.d/hyperpolymath.repo << 'EOF'
[hyperpolymath]
name=Hyperpolymath Packages
baseurl=https://hyperpolymath.github.io/homebrew-tap/rpm
enabled=1
gpgcheck=0
EOF

sudo dnf install bunsenite czech-file-knife echidnabot
```

See [rpm/README.md](rpm/README.md) for openSUSE instructions.

## Other Package Managers

- **Arch Linux (AUR)**: `yay -S bunsenite` (when submitted)
- **Flatpak**: `flatpak install flathub dev.hyperpolymath.<package>` (when submitted)
- **WinGet**: `winget install Hyperpolymath.<Package>`
- **Chocolatey**: `choco install <package>`
- **MacPorts**: `sudo port install <package>` (when submitted)

## License

Each package retains its original license. See individual repositories for details.
