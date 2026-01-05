## Machine-Readable Artefacts

The following files in `.machine_readable/` contain structured project metadata:

- `STATE.scm` - Current project state and progress
- `META.scm` - Architecture decisions and development practices
- `ECOSYSTEM.scm` - Position in the ecosystem and related projects
- `AGENTIC.scm` - AI agent interaction patterns
- `NEUROSYM.scm` - Neurosymbolic integration config
- `PLAYBOOK.scm` - Operational runbook

---

# CLAUDE.md - AI Assistant Instructions

## Repository Context

This is the **Hyperpolymath Package Distribution Hub** - a multi-platform package distribution repository containing manifests for Homebrew, Scoop, AUR, Nix, Flatpak, Snap, WinGet, APT, and RPM.

### Repository Structure

```
Formula/      # Homebrew formulas (Ruby)
bucket/       # Scoop manifests (JSON)
aur/          # Arch Linux PKGBUILDs (Bash)
nix/          # Nix flake + packages (Nix)
flathub/      # Flatpak manifests (YAML/XML)
snap/         # Snapcraft (YAML)
winget/       # WinGet manifests (YAML)
apt/          # Debian repository infrastructure
rpm/          # RPM repository infrastructure
```

### Key Files

| File | Purpose |
|------|---------|
| `README.adoc` | Main documentation |
| `CONTRIBUTING.adoc` | Contribution guidelines |
| `SECURITY.adoc` | Security policy |
| `CHANGELOG.adoc` | Release history |
| `LICENSE.txt` | MIT OR AGPL-3.0-or-later |

### Common Tasks

1. **Adding a package**: Create manifests in Formula/, bucket/, aur/, nix/, etc.
2. **Updating versions**: Bump version + regenerate SHA256 in all manifests
3. **Fixing checksums**: Verify SHA256 against actual release artifacts

---

## Language Policy (Hyperpolymath Standard)

### ALLOWED Languages & Tools

| Language/Tool | Use Case | Notes |
|---------------|----------|-------|
| **Ruby** | Homebrew formulas | Formula DSL only |
| **Bash/POSIX Shell** | PKGBUILDs, scripts | Keep minimal |
| **Nix** | Nix expressions | flake.nix, packages |
| **YAML** | Flatpak, Snap, WinGet, workflows | Config only |
| **JSON** | Scoop manifests | Config only |
| **XML** | Flatpak metainfo | AppStream data |
| **ReScript** | Primary application code | Compiles to JS, type-safe |
| **Deno** | Runtime & package management | Replaces Node/npm/bun |
| **Rust** | Performance-critical, systems, WASM | Preferred for CLI tools |
| **Tauri 2.0+** | Mobile apps (iOS/Android) | Rust backend + web UI |
| **Dioxus** | Mobile apps (native UI) | Pure Rust, React-like |
| **Gleam** | Backend services | Runs on BEAM or compiles to JS |
| **JavaScript** | Only where ReScript cannot | MCP protocol glue, Deno APIs |
| **Nickel** | Configuration language | For complex configs |
| **Guile Scheme** | State/meta files | STATE.scm, META.scm, ECOSYSTEM.scm |
| **Julia** | Batch scripts, data processing | Per RSR |
| **OCaml** | AffineScript compiler | Language-specific |
| **Ada** | Safety-critical systems | Where required |

### BANNED - Do Not Use

| Banned | Replacement |
|--------|-------------|
| TypeScript | ReScript |
| Node.js | Deno |
| npm | Deno |
| Bun | Deno |
| pnpm/yarn | Deno |
| Go | Rust |
| Python | Julia/Rust/ReScript |
| Java/Kotlin | Rust/Tauri/Dioxus |
| Swift | Tauri/Dioxus |
| React Native | Tauri/Dioxus |
| Flutter/Dart | Tauri/Dioxus |

### Mobile Development

**No exceptions for Kotlin/Swift** - use Rust-first approach:

1. **Tauri 2.0+** - Web UI (ReScript) + Rust backend, MIT/Apache-2.0
2. **Dioxus** - Pure Rust native UI, MIT/Apache-2.0

Both are FOSS with independent governance (no Big Tech).

### Enforcement Rules

1. **No new TypeScript files** - Convert existing TS to ReScript
2. **No package.json for runtime deps** - Use deno.json imports
3. **No node_modules in production** - Deno caches deps automatically
4. **No Go code** - Use Rust instead
5. **No Python anywhere** - Use Julia for data/batch, Rust for systems, ReScript for apps
6. **No Kotlin/Swift for mobile** - Use Tauri 2.0+ or Dioxus

### Package Management

- **Primary**: Guix (guix.scm)
- **Fallback**: Nix (flake.nix)
- **JS deps**: Deno (deno.json imports)

### Security Requirements

- No MD5/SHA1 for security (use SHA256+)
- HTTPS only (no HTTP URLs)
- No hardcoded secrets
- SHA-pinned dependencies
- SPDX license headers on all files

### Manifest Guidelines

When creating or updating package manifests:

1. Always verify SHA256 checksums against actual artifacts
2. Use HTTPS URLs exclusively
3. Include SPDX license header comment
4. Follow platform-specific conventions:
   - Homebrew: `brew style Formula/*.rb`
   - AUR: `namcap`, `shellcheck`
   - Nix: `nixfmt`, `statix`

