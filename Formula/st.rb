class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.50/st-darwin-arm64"
      sha256 "65e53e3cb70fcce463853b3fd1d9519b71075894a562e7e7af959bf904c17f5d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.50/st-linux-x64"
      sha256 "53cfda369fbfda218728d088da5f166e1829687b742dcf18c40428ea4b7d2e71"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.50/st-linux-arm64"
      sha256 "9e6bad737cb973a84521a240211761528511dcb05d71db0b64cb0b6034cfac88"
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
