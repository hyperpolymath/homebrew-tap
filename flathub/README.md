# Flathub Submissions

This directory contains Flatpak manifests and metainfo files for Flathub submission.

## Packages

| App ID | Name | Status |
|--------|------|--------|
| `dev.hyperpolymath.Bunsenite` | Bunsenite | Ready |
| `dev.hyperpolymath.CzechFileKnife` | Czech File Knife | Ready |

## Submitting to Flathub

### Prerequisites

1. Fork https://github.com/flathub/flathub
2. Create a new repository named after your app ID (e.g., `dev.hyperpolymath.Bunsenite`)

### Steps

1. Fork the flathub repository
2. Create a new branch for your app
3. Add your manifest file
4. Submit a PR

```bash
# Test locally first
flatpak-builder --user --install --force-clean build-dir dev.hyperpolymath.Bunsenite.yml

# Run the app
flatpak run dev.hyperpolymath.Bunsenite --help
```

### Manifest Requirements

- Must include `metainfo.xml` with proper app metadata
- Must pin to specific git commits (not just tags)
- Must pass flathub-builder validation

## Installation (once published)

```bash
# Add Flathub (if not already)
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install
flatpak install flathub dev.hyperpolymath.Bunsenite
flatpak install flathub dev.hyperpolymath.CzechFileKnife
```
