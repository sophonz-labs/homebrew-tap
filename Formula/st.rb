class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.55/st-darwin-arm64"
      sha256 "86122b3ea949c8bb5c655fecf7b49dde0b6d4320c787f9a7168faa0fb6070df7"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.55/st-linux-x64"
      sha256 "8cd8828983005ada4aeb7bbb64cc7f4c54f878f238bcd1dc70a58f5ffeedd187"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.55/st-linux-arm64"
      sha256 "1913449b14bee6aece1d80673f87346e2abd19dcdfbf61bd75d11d6ca20566d3"
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
