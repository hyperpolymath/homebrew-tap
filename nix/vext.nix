# SPDX-License-Identifier: MIT
# Nix package for vext
{ lib, rustPlatform, fetchFromGitHub, pkg-config, openssl }:

rustPlatform.buildRustPackage rec {
  pname = "vext";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "hyperpolymath";
    repo = "vext";
    rev = "v${version}";
    sha256 = "sha256-PLACEHOLDER";
  };

  cargoSha256 = "sha256-PLACEHOLDER";

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ openssl ];

  cargoBuildFlags = [ "--package" "vext-core" ];

  meta = with lib; {
    description = "High-performance IRC notification daemon for version control systems";
    homepage = "https://github.com/hyperpolymath/vext";
    license = with licenses; [ mit asl20 ];
    maintainers = [ ];
    platforms = platforms.unix;
  };
}
