class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.4/st-darwin-arm64"
      sha256 "1e3097d6c536cd383d64183998f4a33ce8744bb16335c1b8330517320bca0198"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.4/st-linux-x64"
      sha256 "cff942ac554cfd972491915cf667a4bd17758ee52150e13fe93d61e4e502be81"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.4/st-linux-arm64"
      sha256 "77a857cac48b8000a46992ae496c6c3e857b8efd77e4c0ab34347d562ab54508"
    end
  end

  def install
    # The download is the binary itself, under whatever name the release gave
    # it; Homebrew hands it over as the only file in the staging directory.
    bin.install Dir["*"].first => "st"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/st --version")
  end
end
