# SPDX-License-Identifier: AGPL-3.0-or-later
# Homebrew formula for czech-file-knife
class CzechFileKnife < Formula
  desc "Universal file management toolkit with cloud provider integration and virtual filesystem"
  homepage "https://github.com/hyperpolymath/czech-file-knife"
  url "https://github.com/hyperpolymath/czech-file-knife/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  license "AGPL-3.0-or-later"
  head "https://github.com/hyperpolymath/czech-file-knife.git", branch: "main"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build

  # macOS FUSE support
  on_macos do
    depends_on "macfuse"
  end

  # Linux FUSE support
  on_linux do
    depends_on "libfuse"
  end

  def install
    system "cargo", "build", "--release", "--package", "cfk-cli"
    bin.install "target/release/cfk" => "cfk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cfk --version")
  end
end
