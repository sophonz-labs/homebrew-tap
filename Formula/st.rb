class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.113"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.113/st-darwin-arm64"
      sha256 "db5614671b56f006aaf204e285ffb1880f47a0606d246928a4ac32aba8ba3f84"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.113/st-linux-x64"
      sha256 "2da21a06c73a5585bb2aacf4c13144e2da3f880b2f740f0583356d7c54eab352"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.113/st-linux-arm64"
      sha256 "bc314832c749a6ae67d0a17fa654c3f6f392edf065001d4c4534178652d411e4"
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
