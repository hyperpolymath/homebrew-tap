# SPDX-License-Identifier: AGPL-3.0-or-later
# Homebrew formula for affinescript

class Affinescript < Formula
  desc "Programming language combining affine types with functional programming"
  homepage "https://github.com/hyperpolymath/affinescript"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/affinescript/releases/download/v#{version}/affinescript-v#{version}-aarch64-macos.tar.gz"
      sha256 "PLACEHOLDER_ARM64_DARWIN"
    else
      url "https://github.com/hyperpolymath/affinescript/releases/download/v#{version}/affinescript-v#{version}-x86_64-macos.tar.gz"
      sha256 "PLACEHOLDER_X64_DARWIN"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/affinescript/releases/download/v#{version}/affinescript-v#{version}-aarch64-linux.tar.gz"
      sha256 "PLACEHOLDER_ARM64_LINUX"
    else
      url "https://github.com/hyperpolymath/affinescript/releases/download/v#{version}/affinescript-v#{version}-x86_64-linux.tar.gz"
      sha256 "PLACEHOLDER_X64_LINUX"
    end
  end

  depends_on "ocaml" => :build
  depends_on "opam" => :build
  depends_on "dune" => :build

  def install
    bin.install "affinescript"
  end

  test do
    assert_match "affinescript", shell_output("#{bin}/affinescript --version")
  end
end
