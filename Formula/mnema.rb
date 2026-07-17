class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents - never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.10"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.10/mnema-v0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "f1b42a0b667d6875050909f2daa63ad6f98565dc1754a28272099f95b49f8ab8"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.10/mnema-v0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "16e155967d18f27b3cbe4c5e52991e6c0404e47cd4fbaed8b62bd0ca512ff839"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.10/mnema-v0.1.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "771fc6f135e745774ee46eac02a688062b9765001a5d604d39dbf11df3fbd9ab"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.10/mnema-v0.1.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "001c9fb1e218eb812134aa2e34b48e0ba8796797e90ef9c6d9fd699de5658f9d"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
