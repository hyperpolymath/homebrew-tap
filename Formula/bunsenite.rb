# Homebrew formula for bunsenite
class Bunsenite < Formula
  desc "Nickel configuration file parser with multi-language FFI bindings"
  homepage "https://github.com/hyperpolymath/bunsenite"
  version "1.0.2"
  license any_of: ["MIT", "Palimpsest-0.8"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/bunsenite/releases/download/v1.0.2/bunsenite-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "134752a9d0479dd5d143d894f2c0934ae07b414d4bd3ce707ec32bbb48053d60"
    else
      url "https://github.com/hyperpolymath/bunsenite/releases/download/v1.0.2/bunsenite-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "943e3f1d9c264445d779e5a2181f5912d16fd17a38b71428b79bed8ec4f80d30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hyperpolymath/bunsenite/releases/download/v1.0.2/bunsenite-v1.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1393cd3ba4e476e18e806105ce1d621e080ebb4c06950ed50524efb32db22618"
    else
      url "https://github.com/hyperpolymath/bunsenite/releases/download/v1.0.2/bunsenite-v1.0.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cca819ddf5459163c49877e6284f2910f2fd7e6ad39c7f824152831a01d2c07e"
    end
  end

  def install
    bin.install "bunsenite"
    # Install shared library if present
    lib.install Dir["libbunsenite.*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bunsenite --version")

    (testpath/"test.ncl").write <<~EOS
      {
        name = "test",
        version = "1.0.0"
      }
    EOS

    output = shell_output("#{bin}/bunsenite parse #{testpath}/test.ncl")
    assert_match "name", output
    assert_match "test", output
  end
end
