class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.71/st-darwin-arm64"
      sha256 "35b69fc63adad6b7ed8af240497406d4b6dda5e9afa2e6393c74a9ca3c480ee3"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.71/st-linux-x64"
      sha256 "4d78439cab9a91a1ec8a23ed8d58f006f2da0777a62b589dd2a60f77fcddfa7b"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.71/st-linux-arm64"
      sha256 "9e3ed43f07a7264283954d8f63d760436c8796bd4cfb14ccc1e86e8ad5b12844"
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
