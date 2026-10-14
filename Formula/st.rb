class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.72/st-darwin-arm64"
      sha256 "93364167413508fabd4b48f8b585f133cd6c455444919d22dafaf3ebf0346544"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.72/st-linux-x64"
      sha256 "910a5c9072a2f90b89ca32e29276d977cf9ec0a9e705c8dedd2664af3732f45f"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.72/st-linux-arm64"
      sha256 "6f3a62e839bd767409fb777a0be4f259b92ccced9a0e7d99f03495b1bdabdc12"
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
