<!--
SPDX-License-Identifier: CC-BY-SA-4.0
Copyright (c) Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->
# TEST-NEEDS.md — homebrew-tap

## CRG Grade: C — ACHIEVED 2026-04-04

## Current Test State

| Category | Count | Notes |
|----------|-------|-------|
| Structural validation | 1 | tests/validate_structure.sh — required files, format checks |

## What's Covered

- [x] Required RSR files present (validate_structure.sh)
- [x] Content format spot-checks

## Still Missing (for CRG B+)

- [ ] Link validation (external URLs)
- [ ] Content completeness checks
- [ ] CI integration for test script

## Run Tests

```bash
bash tests/validate_structure.sh
```
