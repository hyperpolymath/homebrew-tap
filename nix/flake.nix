# SPDX-License-Identifier: MIT
# Nix flake for hyperpolymath packages
{
  description = "Hyperpolymath package collection";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages = {
          bunsenite = pkgs.callPackage ./bunsenite.nix { };
          vext = pkgs.callPackage ./vext.nix { };
          llm-unify = pkgs.callPackage ./llm-unify.nix { };
          default = self.packages.${system}.bunsenite;
        };

        apps = {
          bunsenite = {
            type = "app";
            program = "${self.packages.${system}.bunsenite}/bin/bunsenite";
          };
          vext = {
            type = "app";
            program = "${self.packages.${system}.vext}/bin/vextd";
          };
          llm-unify = {
            type = "app";
            program = "${self.packages.${system}.llm-unify}/bin/llm-unify";
          };
          default = self.apps.${system}.bunsenite;
        };
      }
    );
}
