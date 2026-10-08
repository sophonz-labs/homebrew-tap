class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.58/st-darwin-arm64"
      sha256 "927e1128c85f7eccc5029acf254af1e5dd8495bbbef5d11cb2ad572985b77199"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.58/st-linux-x64"
      sha256 "031a88a96c0f3f494f1bf1d5324c051ba8f5569bdc96a2323753fbdc62fda8a9"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.58/st-linux-arm64"
      sha256 "67b0f86af158786bc52d7e33353dd0b092d2aae97b17cc86faf607e773573b3c"
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
