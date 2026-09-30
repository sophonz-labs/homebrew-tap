class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.34/st-darwin-arm64"
      sha256 "161af29bce81f06ef9386def8ad89807df3bf61b5895f91dbdea27a227500e1d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.34/st-linux-x64"
      sha256 "62523e1f547b7fea2789e4142b8b4509a6d3e11d4b0087e793621290dfd69e95"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.34/st-linux-arm64"
      sha256 "66ec196cc560a6657dd028a4d4d7a86269589e8f64644624ba3e8dd8d01a06dd"
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
