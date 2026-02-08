# Homebrew Tap for K9 SVC

Homebrew formulae for [K9 SVC](https://github.com/hyperpolymath/k9-svc) (Self-Validating Components).

## Installation

```bash
brew tap hyperpolymath/k9
brew install k9-svc
```

## Formulae

| Formula | Description |
|---------|-------------|
| `k9-svc` | Self-Validating Components - a file format that eats its own dog food |

## Usage

After installation:

```bash
# Check environment
k9 status

# Validate schemas
k9 typecheck

# Run tests
k9 test

# Self-validate
k9 dogfood
```

## Requirements

- [Nickel](https://nickel-lang.org/) - Configuration language
- [Just](https://just.systems/) - Task runner
- [OpenSSL](https://www.openssl.org/) 1.1.1+ - For Ed25519 signing

## License

PMPL-1.0-or-later
