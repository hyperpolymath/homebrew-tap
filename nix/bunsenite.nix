# SPDX-License-Identifier: MIT
# Nix package for bunsenite
{ lib, rustPlatform, fetchFromGitHub, pkg-config, openssl }:

rustPlatform.buildRustPackage rec {
  pname = "bunsenite";
  version = "1.0.2";

  src = fetchFromGitHub {
    owner = "hyperpolymath";
    repo = "bunsenite";
    rev = "v${version}";
    sha256 = "sha256-PLACEHOLDER";
  };

  cargoSha256 = "sha256-PLACEHOLDER";

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ openssl ];

  buildFeatures = [ "full" ];

  meta = with lib; {
    description = "Nickel configuration file parser with multi-language FFI bindings";
    homepage = "https://github.com/hyperpolymath/bunsenite";
    license = with licenses; [ mit ];
    maintainers = [ ];
    platforms = platforms.unix;
  };
}
