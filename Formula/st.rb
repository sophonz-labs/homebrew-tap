class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.76"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.76/st-darwin-arm64"
      sha256 "d4477cef2bee863a7a15c86b4a67ee973b61a64bad4d38b80320a87d9596aa93"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.76/st-linux-x64"
      sha256 "f9e61e8af1a427a5a25032e781e09eca313e1d7d78580ed9af0d0b564cc27c40"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.76/st-linux-arm64"
      sha256 "57f31c72ffb250cf453e5dc42f653a3fc2b52370649052745bced52f00ebeabc"
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
