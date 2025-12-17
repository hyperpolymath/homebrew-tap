# SPDX-License-Identifier: AGPL-3.0-or-later
# Homebrew formula for zigzag-ssg

class ZigzagSsg < Formula
  desc "High-performance static site generator written in Zig"
  homepage "https://github.com/hyperpolymath/zigzag-ssg"
  version "1.0.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/zigzag-ssg/releases/download/v#{version}/zigzag-ssg-v#{version}-aarch64-macos.tar.gz"
      sha256 "PLACEHOLDER_ARM64_DARWIN"
    else
      url "https://github.com/hyperpolymath/zigzag-ssg/releases/download/v#{version}/zigzag-ssg-v#{version}-x86_64-macos.tar.gz"
      sha256 "PLACEHOLDER_X64_DARWIN"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/zigzag-ssg/releases/download/v#{version}/zigzag-ssg-v#{version}-aarch64-linux.tar.gz"
      sha256 "PLACEHOLDER_ARM64_LINUX"
    else
      url "https://github.com/hyperpolymath/zigzag-ssg/releases/download/v#{version}/zigzag-ssg-v#{version}-x86_64-linux.tar.gz"
      sha256 "PLACEHOLDER_X64_LINUX"
    end
  end

  def install
    bin.install "zigzag-ssg"
  end

  test do
    assert_match "zigzag", shell_output("#{bin}/zigzag-ssg --version")
  end
end
