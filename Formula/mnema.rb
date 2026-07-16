class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents - never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.9"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.9/mnema-v0.1.9-aarch64-apple-darwin.tar.gz"
      sha256 "b2d270421ca9333c2ca40586fc232bb8bb59f88edbb459475b94f3e18759fd56"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.9/mnema-v0.1.9-x86_64-apple-darwin.tar.gz"
      sha256 "0382d02280191e34e5e50dacedde7d61b0d6e264185607087de37133da4bdb62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.9/mnema-v0.1.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a487174164372718dd97a533f2411b499e803901402102375a5c39621d6ee04"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.9/mnema-v0.1.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bace8a624cf52a9a40946e0d08ebcde02864b5b40e1357527e2b0d597d648ce6"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
