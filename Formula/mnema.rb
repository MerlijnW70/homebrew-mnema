class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents — never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.1/mnema-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "de0fa9d3be409062d8e8d04ffe6075e180965b99590e06c6ec42a1e252740ee1"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.1/mnema-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "d31c0dd397f6de9885271101d43da12d8872e80cb85b72c26fc993b1059c674b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.1/mnema-v0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ab9f205629e1e63dbe1191d4f10363a91937f2ee3efceafb39576a50272e92c1"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.1/mnema-v0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db6fe49499bff5bfd3600184c60c7c7a1df4d4ba98e32870f96a316894d73b3e"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
