;;; STATE.scm - Project Checkpoint
;;; homebrew-tap
;;; Format: Guile Scheme S-expressions
;;; Purpose: Preserve AI conversation context across sessions
;;; Reference: https://github.com/hyperpolymath/state.scm

;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

;;;============================================================================
;;; METADATA
;;;============================================================================

(define metadata
  '((version . "0.1.0")
    (schema-version . "1.0")
    (created . "2025-12-15")
    (updated . "2025-12-17")
    (project . "homebrew-tap")
    (repo . "github.com/hyperpolymath/homebrew-tap")))

;;;============================================================================
;;; PROJECT CONTEXT
;;;============================================================================

(define project-context
  '((name . "homebrew-tap")
    (tagline . "Project in the hyperpolymath ecosystem")
    (version . "0.1.0")
    (license . "AGPL-3.0-or-later")
    (rsr-compliance . "gold-target")

    (tech-stack
     ((primary . "See repository languages")
      (ci-cd . "GitHub Actions + GitLab CI + Bitbucket Pipelines")
      (security . "CodeQL + OSSF Scorecard")))))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================

(define current-position
  '((phase . "v0.1 - Initial Setup and RSR Compliance")
    (overall-completion . 25)

    (components
     ((rsr-compliance
       ((status . "complete")
        (completion . 100)
        (notes . "SHA-pinned actions, SPDX headers, multi-platform CI")))

      (documentation
       ((status . "foundation")
        (completion . 30)
        (notes . "README exists, META/ECOSYSTEM/STATE.scm added")))

      (testing
       ((status . "minimal")
        (completion . 10)
        (notes . "CI/CD scaffolding exists, limited test coverage")))

      (core-functionality
       ((status . "in-progress")
        (completion . 25)
        (notes . "Initial implementation underway")))))

    (working-features
     ("RSR-compliant CI/CD pipeline"
      "Multi-platform mirroring (GitHub, GitLab, Bitbucket)"
      "SPDX license headers on all files"
      "SHA-pinned GitHub Actions"))))

;;;============================================================================
;;; ROUTE TO MVP
;;;============================================================================

(define route-to-mvp
  '((target-version . "1.0.0")
    (definition . "All packages installable with verified SHA256 integrity")

    (milestones
     ((v0.2
       ((name . "Security Remediation")
        (status . "in-progress")
        (priority . "CRITICAL")
        (items
         ("Publish official releases for all 9 packages"
          "Compute and add SHA256 hashes to all Homebrew formulas"
          "Update Scoop bucket manifests with valid hashes"
          "Add proper sha256sums to all AUR PKGBUILDs"
          "Update Nix packages with nix-prefetch hashes"
          "Complete WinGet manifests with InstallerSha256"))))

      (v0.3
       ((name . "Automation & CI")
        (status . "pending")
        (items
         ("Create workflow to auto-compute hashes on release"
          "Add formula/manifest validation tests"
          "Integrate hash verification in CI pipeline"
          "Add Homebrew tap audit workflow"))))

      (v0.5
       ((name . "Platform Expansion")
        (status . "pending")
        (items
         ("Submit packages to official Homebrew core (where applicable)"
          "Submit to AUR as maintainer"
          "Submit to Flathub"
          "Complete Snap store submission"
          "WinGet community repository PR"))))

      (v0.8
       ((name . "Quality Assurance")
        (status . "pending")
        (items
         ("Cross-platform installation testing"
          "Automated upgrade path testing"
          "Version consistency checks across all manifests"
          "Security audit of all package sources"))))

      (v1.0
       ((name . "Production Release")
        (status . "pending")
        (items
         ("All packages verified and installable"
          "Multi-platform CI green"
          "Documentation complete for all package managers"
          "SBOM generation for supply chain transparency"
          "Signed releases with GPG/Sigstore"))))))))

;;;============================================================================
;;; BLOCKERS & ISSUES
;;;============================================================================

(define blockers-and-issues
  '((critical
     ((placeholder-sha256-homebrew
       ((description . "6 Homebrew formulas have PLACEHOLDER SHA256 hashes")
        (affected . ("vext.rb" "llm-unify.rb" "affinescript.rb"
                     "casket-ssg.rb" "kith.rb" "zigzag-ssg.rb"))
        (count . 24)  ;; 6 packages × 4 architectures
        (impact . "SUPPLY CHAIN SECURITY: Packages cannot verify integrity")
        (needed . "Generate releases and compute actual SHA256 hashes")
        (severity . "CRITICAL - blocks production use")))

      (placeholder-sha256-scoop
       ((description . "4 Scoop bucket manifests have PLACEHOLDER/TODO hashes")
        (affected . ("vext.json" "llm-unify.json" "echidnabot.json"
                     "czech-file-knife.json"))
        (count . 4)
        (impact . "SUPPLY CHAIN SECURITY: Windows packages unverified")
        (needed . "Publish releases and add SHA256 hashes")
        (severity . "CRITICAL - blocks Windows distribution")))

      (placeholder-sha256-nix
       ((description . "3 Nix packages have sha256-PLACEHOLDER hashes")
        (affected . ("bunsenite.nix" "vext.nix" "llm-unify.nix"))
        (count . 6)  ;; 3 packages × 2 hashes (src + cargo)
        (impact . "SUPPLY CHAIN SECURITY: Nix builds will fail")
        (needed . "Compute nix-prefetch-url and cargo vendor hashes")
        (severity . "CRITICAL - blocks Nix installation")))

      (skip-sha256-aur
       ((description . "9 AUR PKGBUILDs use sha256sums=SKIP")
        (affected . ("bunsenite" "echidnabot" "czech-file-knife" "vext"
                     "llm-unify" "affinescript" "casket-ssg" "kith" "zigzag-ssg"))
        (count . 9)
        (impact . "SUPPLY CHAIN SECURITY: Source integrity not verified")
        (needed . "Compute checksums from release tarballs")
        (severity . "CRITICAL - blocks AUR submission")))))

    (high-priority
     ((winget-missing-hashes
       ((description . "2 WinGet manifests missing InstallerSha256")
        (affected . ("Hyperpolymath.Echidnabot" "Hyperpolymath.CzechFileKnife"))
        (impact . "WinGet submission will be rejected")
        (needed . "Add SHA256 hashes to YAML manifests")))))

    (medium-priority
     ((test-coverage
       ((description . "Limited test infrastructure")
        (impact . "Risk of regressions")
        (needed . "Comprehensive test suites")))

      (release-automation
       ((description . "No automated hash computation workflow")
        (impact . "Manual SHA256 updates error-prone")
        (needed . "GitHub Action to auto-update hashes on release")))))

    (low-priority
     ((documentation-gaps
       ((description . "Some documentation areas incomplete")
        (impact . "Harder for new contributors")
        (needed . "Expand documentation")))))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================

(define critical-next-actions
  '((immediate
     (("SECURITY: Publish releases for packages with placeholder hashes" . critical)
      ("SECURITY: Compute SHA256 for vext, llm-unify, affinescript" . critical)
      ("SECURITY: Compute SHA256 for casket-ssg, kith, zigzag-ssg" . critical)
      ("Update Scoop bucket hashes (vext, llm-unify, echidnabot, cfk)" . critical)
      ("Verify workflows pass with new permissions fix" . high)))

    (this-week
     (("Update all AUR PKGBUILDs with actual sha256sums" . critical)
      ("Update Nix packages with nix-prefetch-url hashes" . critical)
      ("Complete WinGet InstallerSha256 fields" . high)
      ("Create hash computation automation workflow" . high)))

    (this-month
     (("Reach v0.2 Security Remediation milestone" . critical)
      ("Begin v0.3 Automation & CI work" . high)
      ("Add Homebrew tap audit to CI" . medium)))))

;;;============================================================================
;;; SESSION HISTORY
;;;============================================================================

(define session-history
  '((snapshots
     ((date . "2025-12-17")
      (session . "security-audit-and-roadmap")
      (accomplishments
       ("Comprehensive SCM file security audit"
        "Fixed CodeQL workflow missing top-level permissions"
        "Documented 43 placeholder SHA256 hash issues as critical blockers"
        "Created detailed security remediation roadmap (v0.2-v1.0)"
        "Updated critical next actions with security priorities"))
      (notes . "Security review identified supply chain integrity gaps"))

     ((date . "2025-12-15")
      (session . "initial-state-creation")
      (accomplishments
       ("Added META.scm, ECOSYSTEM.scm, STATE.scm"
        "Established RSR compliance"
        "Created initial project checkpoint"))
      (notes . "First STATE.scm checkpoint created via automated script")))))

;;;============================================================================
;;; HELPER FUNCTIONS (for Guile evaluation)
;;;============================================================================

(define (get-completion-percentage component)
  "Get completion percentage for a component"
  (let ((comp (assoc component (cdr (assoc 'components current-position)))))
    (if comp
        (cdr (assoc 'completion (cdr comp)))
        #f)))

(define (get-blockers priority)
  "Get blockers by priority level"
  (cdr (assoc priority blockers-and-issues)))

(define (get-milestone version)
  "Get milestone details by version"
  (assoc version (cdr (assoc 'milestones route-to-mvp))))

;;;============================================================================
;;; EXPORT SUMMARY
;;;============================================================================

(define state-summary
  '((project . "homebrew-tap")
    (version . "0.1.0")
    (overall-completion . 20)
    (next-milestone . "v0.2 - Security Remediation")
    (critical-blockers . 4)  ;; Placeholder SHA256s across 4 package managers
    (high-priority-issues . 1)  ;; WinGet missing hashes
    (placeholder-hashes-count . 43)  ;; Total placeholder/SKIP/TODO hashes
    (updated . "2025-12-17")))

;;; End of STATE.scm
