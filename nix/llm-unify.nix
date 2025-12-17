# SPDX-License-Identifier: AGPL-3.0-or-later
# Nix package for llm-unify (ALPHA)
{ lib, rustPlatform, fetchFromGitHub, pkg-config, openssl, sqlite }:

rustPlatform.buildRustPackage rec {
  pname = "llm-unify";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "hyperpolymath";
    repo = "llm-unify";
    rev = "v${version}";
    sha256 = "sha256-PLACEHOLDER";
  };

  cargoSha256 = "sha256-PLACEHOLDER";

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ openssl sqlite ];

  cargoBuildFlags = [ "--package" "llm-unify-cli" ];

  meta = with lib; {
    description = "Unified interface for multi-platform LLM conversation management (ALPHA)";
    homepage = "https://github.com/hyperpolymath/llm-unify";
    license = licenses.agpl3Plus;
    maintainers = [ ];
    platforms = platforms.unix;
  };
}
