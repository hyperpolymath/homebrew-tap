#!/usr/bin/env bash
# SPDX-License-Identifier: PMPL-1.0-or-later
# validate_formulas.sh — CRG C structural tests for homebrew-tap
#
# Validates that all Formula/*.rb files have required fields and
# are syntactically valid Ruby (if ruby is available).
#
# Usage: bash tests/validate_formulas.sh [repo-root]

set -euo pipefail

ROOT="${1:-$(cd "$(dirname "$0")/.." && pwd)}"
PASS=0; FAIL=0; WARN=0

echo "=== homebrew-tap formula validation ==="
echo ""

# Check Formula directory exists
if [ ! -d "$ROOT/Formula" ]; then
    echo "FAIL: Formula/ directory missing"
    exit 1
fi

for formula in "$ROOT/Formula/"*.rb; do
    [ -f "$formula" ] || continue
    name=$(basename "$formula" .rb)
    echo "  Checking $name..."

    # Required fields in a Homebrew formula
    for field in "desc " "homepage " "url " "sha256 "; do
        if grep -q "$field" "$formula"; then
            ((PASS++)) || true
        else
            echo "    FAIL: $name missing $field"
            ((FAIL++)) || true
        fi
    done

    # Ruby syntax check (if available)
    if command -v ruby >/dev/null 2>&1; then
        ruby -c "$formula" >/dev/null 2>&1 \
            && { echo "    PASS: $name syntax OK"; ((PASS++)) || true; } \
            || { echo "    FAIL: $name has Ruby syntax errors"; ((FAIL++)) || true; }
    fi
done

# RSR check
for f in EXPLAINME.adoc 0-AI-MANIFEST.a2ml; do
    if [ -f "$ROOT/$f" ]; then
        echo "  PASS: $f present"
        ((PASS++)) || true
    else
        echo "  WARN: $f missing"
        ((WARN++)) || true
    fi
done

echo ""
echo "Results: $PASS passed, $FAIL failed, $WARN warnings"
[ "$FAIL" -eq 0 ]
