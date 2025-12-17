# SPDX-License-Identifier: AGPL-3.0-or-later
# Homebrew formula for kith

class Kith < Formula
  desc "Ada-powered TUI for .well-known directory management"
  homepage "https://github.com/hyperpolymath/kith"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/kith/releases/download/v#{version}/kith-v#{version}-aarch64-macos.tar.gz"
      sha256 "PLACEHOLDER_ARM64_DARWIN"
    else
      url "https://github.com/hyperpolymath/kith/releases/download/v#{version}/kith-v#{version}-x86_64-macos.tar.gz"
      sha256 "PLACEHOLDER_X64_DARWIN"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/kith/releases/download/v#{version}/kith-v#{version}-aarch64-linux.tar.gz"
      sha256 "PLACEHOLDER_ARM64_LINUX"
    else
      url "https://github.com/hyperpolymath/kith/releases/download/v#{version}/kith-v#{version}-x86_64-linux.tar.gz"
      sha256 "PLACEHOLDER_X64_LINUX"
    end
  end

  def install
    bin.install "kith"
  end

  test do
    assert_match "kith", shell_output("#{bin}/kith --version")
  end
end
