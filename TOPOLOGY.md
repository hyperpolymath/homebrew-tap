<!--
SPDX-License-Identifier: CC-BY-SA-4.0
Copyright (c) Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->
<!-- Copyright (c) 2026 Jonathan D.A. Jewell (hyperpolymath) <j.d.a.jewell@open.ac.uk> -->

# TOPOLOGY.md — homebrew-tap

## Purpose

Homebrew formula tap providing macOS package distribution for hyperpolymath tools. Includes verified binary downloads, checksums, and dependencies for projects like boj-server (cartridge-based MCP server with 53 formally verified domain cartridges).

## Module Map

```
homebrew-tap/
├── Formula/
│   ├── boj-server.rb          # BoJ-server formula
│   ├── hypatia.rb             # Hypatia formula
│   └── ... (additional formulas)
├── test/
│   └── ... (formula tests)
├── README.md                  # Installation instructions
└── LICENSE                    # MPL-2.0
```

## Data Flow

```
[GitHub Release Artifacts] ──► [Formula Definition] ──► [brew install] ──► [Local Binary]
                                                            ↓
                                                    [Dependency Resolution]
```

## Key Invariants

- Each formula verifies upstream binary checksums
- Formulas are updated when new releases are published
- Tap URL: https://github.com/hyperpolymath/homebrew-tap
- Compatible with recent macOS versions
