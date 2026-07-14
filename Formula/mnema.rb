class Mnema < Formula
  desc "Local, encrypted memory layer for AI agents — never forgets, never leaks to the cloud"
  homepage "https://github.com/MerlijnW70/mnema"
  version "0.1.5"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.5/mnema-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "51eb5c5a7d81c10e42259ec9191b6eddf85626c8c55328f12b717baea654d3b7"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.5/mnema-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "539f84b8b06ed051438b96f279068177a1ab91408bdb071457f6a5ab817959d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.5/mnema-v0.1.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a19afed9645ec38c982f8d3cee39c83216d986ca9d2d76871efca5df048e81d"
    end
    on_intel do
      url "https://github.com/MerlijnW70/mnema/releases/download/v0.1.5/mnema-v0.1.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec20658dd44ea45e79106341a3cb524b38263bbaf8ddfeaa180e956fb042d537"
    end
  end

  def install
    bin.install "mnema", "mnema-server"
  end

  test do
    assert_match(/[0-9a-f]{64}/, shell_output("#{bin}/mnema keygen"))
  end
end
