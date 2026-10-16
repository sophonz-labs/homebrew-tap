class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.79"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.79/st-darwin-arm64"
      sha256 "eceaaadcfacf0a387aed8d9a028fa02008dc2f8a820274757c30dfa7263d590d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.79/st-linux-x64"
      sha256 "db5358c5e17a63aa5999add551b9fda0a0b6c5bab060bbb1369d574e52ba945c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.79/st-linux-arm64"
      sha256 "312687cf82c58fbbcedaec8d0dc5cccff780465aadbaa2bd4c9d744a23bdcf39"
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
