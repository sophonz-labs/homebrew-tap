class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.56/st-darwin-arm64"
      sha256 "594c839a8bb34b7122aa37238882bf32e812efb7e18cd27169afd6b3c5e5f152"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.56/st-linux-x64"
      sha256 "ad32549a0ff47e87b89aafbcdff4a0e361c6aa6ec6ab720788e7945ebacb38d9"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.56/st-linux-arm64"
      sha256 "62d12b4a73a7648a91106064268d3751ef4f6e0d40d582a8181ad699852621ce"
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
