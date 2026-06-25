<!--
SPDX-License-Identifier: CC-BY-SA-4.0
SPDX-FileCopyrightText: 2025-2026 Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->

**Homebrew tap for hyperpolymath CLI tools.**

[![OpenSSF Best Practices](https://img.shields.io/badge/OpenSSF-Best_Practices-green?logo=opensourcesecurity)](https://www.bestpractices.dev/en/projects/new?repo_url=https://github.com/hyperpolymath/homebrew-tap)
[![License: MPL-2.0](https://img.shields.io/badge/License-MPL_2.0-blue.svg)](https://opensource.org/licenses/MPL-2.0) <embed
src="https://api.thegreenwebfoundation.org/greencheckimage/github.com"
data-link="https://www.thegreenwebfoundation.org/green-web-check/?url=github.com" />
![Homebrew tap](https://img.shields.io/badge/homebrew-tap-yellow.svg)

# What this is

This is the official [Homebrew](https://brew.sh) tap for hyperpolymath
tools. It lets macOS (and Linux) users install hyperpolymath binaries
via `brew` without manual compilation.

# Install

```bash
# Add the tap once
brew tap hyperpolymath/tap

# Install BoJ server (cartridge-based MCP server)
brew install boj-server
```

# Available formulae

| Formula | Installs | Source |
|----|----|----|
| `boj-server` | Bundle of Joy MCP server — 53 formally verified domain cartridges | [hyperpolymath/boj-server](https://github.com/hyperpolymath/boj-server) |

# Repository layout

| Path | What it contains |
|----|----|
| `Formula/boj-server.rb` | Homebrew formula: install recipe, test block, and dependency declarations |
| `contractiles/` | Contractile validation rules (RSR standard) |

# Notes for maintainers

The `boj-server.rb` formula contains a `sha256` `"UPDATE_ON_RELEASE"`
placeholder that must be replaced with the actual tarball SHA-256 when
cutting a release. Run `sha256sum` `<tarball>` or use `brew` `fetch`
`--build-from-source` to obtain it.

See <a href="EXPLAINME.adoc" class="adoc">EXPLAINME</a> for the full
implementation map.

# License

This project is licensed under the Mozilla Public License, v. 2.0. See
the `LICENSE` file for details.

SPDX-License-Identifier: CC-BY-SA-4.0

# Author

Jonathan D.A. Jewell\
[j.d.a.jewell@open.ac](j.d.a.jewell@open.ac).uk
