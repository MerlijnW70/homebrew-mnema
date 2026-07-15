class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents — never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.7"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.7/mnema-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "374eaf17a78763365d5c22beccc001a34b6be4bc4ca0be2955f3ea0fb15c6a53"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.7/mnema-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "b37902b45137c597868c68f4f1319f146e3c034dd66a9959613a376e88fa8726"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.7/mnema-v0.1.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3cf88c5da76f87dc02580c67aa5214ab8249df70e4585ff6c4d383cafde9135"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.7/mnema-v0.1.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac1f2026fdb48715a3731bc92af2835688f8cb03c55bc896dd4a76c4a7604253"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
