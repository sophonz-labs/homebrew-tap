class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.18/st-darwin-arm64"
      sha256 "453907954737255445a1d95d45a9d29124a6a10a96861da155bf3c17225a74e3"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.18/st-linux-x64"
      sha256 "c565b6d1b59c644b095149bb10743384d3a1080b5718fd03910c14480f987293"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.18/st-linux-arm64"
      sha256 "4b08ed4cdd05aa959dbb4f24139e881ab43944be4c06c46bfd72fc8d8276ce16"
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
