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

## Other Package Managers

Additional package manifests are available in each project's `packaging/` directory:

- **Arch Linux (AUR)**: `PKGBUILD`
- **Debian/Ubuntu**: `.deb` packages via GitHub Releases
- **Fedora/openSUSE**: `.rpm` packages via GitHub Releases
- **Flatpak**: Submit to Flathub
- **WinGet**: Available via `winget install Hyperpolymath.<package>`
- **Chocolatey**: Available via `choco install <package>`
- **MacPorts**: `Portfile` in each repo's `packaging/macports/`

## License

Each package retains its original license. See individual repositories for details.
