class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.15/st-darwin-arm64"
      sha256 "61eaa4b639865a50eb71d4d00bf29c8abb991417232e111dbbee7cf348bc21ce"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.15/st-linux-x64"
      sha256 "38b20d36f36e474b5ccb57f2b790c300d3c806b9b5a636694ff8cc64941f0afb"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.15/st-linux-arm64"
      sha256 "c0e13a277becd8814a74f23f66aaad16af78aaf842590d4b9130b1edf92be3ce"
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
