# SPDX-License-Identifier: AGPL-3.0-or-later
# Homebrew formula for llm-unify

class LlmUnify < Formula
  desc "Unified interface for multi-platform LLM conversation management"
  homepage "https://github.com/hyperpolymath/llm-unify"
  version "0.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/llm-unify/releases/download/v#{version}/llm-unify-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM64_DARWIN"
    else
      url "https://github.com/hyperpolymath/llm-unify/releases/download/v#{version}/llm-unify-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X64_DARWIN"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/llm-unify/releases/download/v#{version}/llm-unify-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_ARM64_LINUX"
    else
      url "https://github.com/hyperpolymath/llm-unify/releases/download/v#{version}/llm-unify-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_X64_LINUX"
    end
  end

  def install
    bin.install "llm-unify"
    bin.install "llm-unify-tui" if File.exist?("llm-unify-tui")
  end

  test do
    assert_match "llm-unify", shell_output("#{bin}/llm-unify --version")
  end
end
