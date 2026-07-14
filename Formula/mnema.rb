class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents — never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.3/mnema-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "9bc370c0c4e77f6d6939455507ed8f4aaed28b9a0c0d86d893effcb6238509ac"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.3/mnema-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "88c8293d83c92546ef4e287527c99e402c947bee1b04c87d9337b8fffba1b2c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.3/mnema-v0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4b981b92ff600741599cbc63e87301874fc9035d1df108a8d103a75f4a8f1f67"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.3/mnema-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9b67dfc3428075420fc2bdb55de43572d45307f847c7cffea030972189a93e8"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
