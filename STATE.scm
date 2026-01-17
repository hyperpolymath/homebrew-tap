;; SPDX-License-Identifier: PMPL-1.0
;; STATE.scm - Project state for homebrew-tap

(state
  (metadata
    (version "0.1.0")
    (schema-version "1.0")
    (created "2024-06-01")
    (updated "2025-01-17")
    (project "homebrew-tap")
    (repo "hyperpolymath/homebrew-tap"))

  (project-context
    (name "Hyperpolymath Package Distribution Hub")
    (tagline "Multi-platform package manifests for Homebrew, Scoop, AUR, Flatpak, and more")
    (tech-stack ("ruby" "json" "nix")))

  (current-position
    (phase "active")
    (overall-completion 60)
    (working-features
      ("Homebrew formulas"
       "Scoop bucket manifests"
       "AUR packages"
       "Flatpak manifests"
       "Nix packages"
       "Winget manifests"))))
