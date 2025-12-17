# SPDX-License-Identifier: AGPL-3.0-or-later
# Homebrew formula for vext

class Vext < Formula
  desc "High-performance IRC notification daemon for version control systems"
  homepage "https://github.com/hyperpolymath/vext"
  version "1.0.0"
  license any_of: ["MIT", "AGPL-3.0-or-later"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/vext/releases/download/v#{version}/vext-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM64_DARWIN"
    else
      url "https://github.com/hyperpolymath/vext/releases/download/v#{version}/vext-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X64_DARWIN"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/vext/releases/download/v#{version}/vext-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_ARM64_LINUX"
    else
      url "https://github.com/hyperpolymath/vext/releases/download/v#{version}/vext-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_X64_LINUX"
    end
  end

  def install
    bin.install "vextd"
    bin.install "vext-send" if File.exist?("vext-send")
  end

  service do
    run [opt_bin/"vextd"]
    keep_alive true
    log_path var/"log/vext.log"
    error_log_path var/"log/vext.error.log"
  end

  test do
    assert_match "vext", shell_output("#{bin}/vextd --version")
  end
end
