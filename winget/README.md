# WinGet Manifests

This directory contains manifests for submission to the Windows Package Manager (winget).

## Packages

| Package ID | Name | Version |
|------------|------|---------|
| `Hyperpolymath.Bunsenite` | Bunsenite | 1.0.2 |
| `Hyperpolymath.CzechFileKnife` | Czech File Knife | 0.1.0 |
| `Hyperpolymath.Echidnabot` | Echidnabot | 0.1.0 |

## Submitting to WinGet

### Prerequisites

1. Install wingetcreate: `winget install wingetcreate`
2. Fork https://github.com/microsoft/winget-pkgs

### Steps

```powershell
# Validate manifest
winget validate <path-to-manifest.yaml>

# Or use wingetcreate to generate and submit
wingetcreate submit <path-to-manifest.yaml>
```

### Manual Submission

1. Fork microsoft/winget-pkgs
2. Create directory structure: `manifests/h/Hyperpolymath/<PackageName>/<Version>/`
3. Add manifest file
4. Submit PR

### Directory Structure

```
manifests/
└── h/
    └── Hyperpolymath/
        ├── Bunsenite/
        │   └── 1.0.2/
        │       └── Hyperpolymath.Bunsenite.yaml
        ├── CzechFileKnife/
        │   └── 0.1.0/
        │       └── Hyperpolymath.CzechFileKnife.yaml
        └── Echidnabot/
            └── 0.1.0/
                └── Hyperpolymath.Echidnabot.yaml
```

## Installation (once published)

```powershell
winget install Hyperpolymath.Bunsenite
winget install Hyperpolymath.CzechFileKnife
winget install Hyperpolymath.Echidnabot
```

## Notes

- SHA256 hashes need to be added after releases are created
- Manifests follow WinGet Manifest Schema v1.6.0
