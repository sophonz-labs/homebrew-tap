class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.0/st-darwin-arm64"
      sha256 "878afd300a02f322971a7f2ee9077110271c6bb38b41d0c7b72ccaa2c94a0952"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.0/st-linux-x64"
      sha256 "8b27141d60b9272aa70d4c925893ed0bc612cf6ae918489aa46d743b6a90e88f"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.0/st-linux-arm64"
      sha256 "c65904a478e18264d2c9a3c8fda62fa95b08b090a6b81f626df01573bed0b3b1"
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
