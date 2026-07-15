class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents — never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.8/mnema-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "743b1e4b8a78061627a9574d491cefbe99870a6f30f0ad4942658f998f8bea2b"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.8/mnema-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "e3255b71650e05f92c31862c17fbf580c621e3c4740ef58681144c01c17f92ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.8/mnema-v0.1.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e54c0eed3caf82988e72b68bced61a6438938403fdd512311b81c3e04118b5cf"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.8/mnema-v0.1.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d75f5cd36d4956f709b369ae66732fb23c95f49eec72d0c795afc72d189cf3f"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
