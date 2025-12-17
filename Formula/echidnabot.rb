# SPDX-License-Identifier: AGPL-3.0-or-later
# Homebrew formula for echidnabot
class Echidnabot < Formula
  desc "Proof-aware CI bot that orchestrates ECHIDNA for theorem proof verification"
  homepage "https://github.com/hyperpolymath/echidnabot"
  url "https://github.com/hyperpolymath/echidnabot/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  license "AGPL-3.0-or-later"
  head "https://github.com/hyperpolymath/echidnabot.git", branch: "main"

  depends_on "rust" => :build
  depends_on "pkg-config" => :build
  depends_on "openssl@3"

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/echidnabot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/echidnabot --version")
  end
end
