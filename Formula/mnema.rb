class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents — never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.4/mnema-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "2c4e7e4f592f79713095f22719f3723ecdb2ba897dbdcb64037921c788464563"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.4/mnema-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "843b62a600e3df37b97f83626f5da2646de983dc9a3e13f2700318e5bb820463"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.4/mnema-v0.1.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92925fa86ec5b2fbc044f07b899e7f03cab0554878245b2af7b3b9bc6fa1e4f1"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.4/mnema-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "527d9c3e155c23bba244752e54f38eaf50e333d0f8e9054502e1afa9ea3d8d92"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
