# SPDX-License-Identifier: AGPL-3.0-or-later
# Homebrew formula for casket-ssg

class CasketSsg < Formula
  desc "Pure functional static site generator written in Haskell"
  homepage "https://github.com/hyperpolymath/casket-ssg"
  version "1.0.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/casket-ssg/releases/download/v#{version}/casket-ssg-v#{version}-aarch64-macos.tar.gz"
      sha256 "PLACEHOLDER_ARM64_DARWIN"
    else
      url "https://github.com/hyperpolymath/casket-ssg/releases/download/v#{version}/casket-ssg-v#{version}-x86_64-macos.tar.gz"
      sha256 "PLACEHOLDER_X64_DARWIN"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/casket-ssg/releases/download/v#{version}/casket-ssg-v#{version}-aarch64-linux.tar.gz"
      sha256 "PLACEHOLDER_ARM64_LINUX"
    else
      url "https://github.com/hyperpolymath/casket-ssg/releases/download/v#{version}/casket-ssg-v#{version}-x86_64-linux.tar.gz"
      sha256 "PLACEHOLDER_X64_LINUX"
    end
  end

  def install
    bin.install "casket-ssg"
  end

  test do
    assert_match "casket", shell_output("#{bin}/casket-ssg --version")
  end
end
