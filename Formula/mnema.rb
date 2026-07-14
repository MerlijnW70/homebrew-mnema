class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents — never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.2/mnema-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "632b973c339d4893b36b601fd7f6c1db78c5507a18db1cc767e13a7826d2acaa"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.2/mnema-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "18e25f06b9902cf5d94ea9c4e69b1baf74ebfa4ad173779cc05ca13b028a258f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.2/mnema-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "683557de6a888825d70c88bfe5101800b2cdfd35594d0e51e30601ad9963bfc4"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.2/mnema-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "463b831a81541954d23ea5dfa94721c11141700f7b8e355b7b362df5e02e3916"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
