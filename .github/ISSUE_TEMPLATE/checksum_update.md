---
name: Checksum Update
about: Report incorrect SHA256 checksums
title: "[Checksum] "
labels: 'checksum, priority: high'
assignees: ''
---

## Package Information

**Package name**:

**Package version**:

**Affected package manager(s)**:

## Checksum Issue

**Current checksum in manifest**:
```
sha256 "..."
```

**Correct checksum from artifact**:
```
sha256 "..."
```

## How to Verify

```bash
# Command used to generate correct checksum
curl -sL <URL> | sha256sum
```

## Platform(s) Affected

- [ ] macOS ARM64 (aarch64-apple-darwin)
- [ ] macOS x64 (x86_64-apple-darwin)
- [ ] Linux ARM64 (aarch64-unknown-linux-gnu)
- [ ] Linux x64 (x86_64-unknown-linux-gnu)
- [ ] Windows x64

## Additional Notes

Any other relevant information.
