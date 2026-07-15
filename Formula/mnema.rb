class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents — never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.6/mnema-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "fb172235435a94d756afaaefdd1db30458e7154ba9b1edd75c56d7c38364479b"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.6/mnema-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "58c97c1ec1725c1ffa73fe25d25e844339bdbf29cad80d3b19e278f1d3fd78a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.6/mnema-v0.1.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "456c464909e6e4a71288c2f477349298dd7e3cb4cf2e0acac20b4bee4357f619"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.6/mnema-v0.1.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "654135134867737e6545c4098f3fe7a5ac27a665e2db582e774c4de28967ffa1"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
