class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.109"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.109/st-darwin-arm64"
      sha256 "e4a011d6748c4907309fe185f13c7f43b1587205a96073a0ccf7ea166981510c"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.109/st-linux-x64"
      sha256 "ecf47fb4a0b1ff9d1e297e7487ebf177c148e4ffc5e01ef8f6f70545819d67cf"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.109/st-linux-arm64"
      sha256 "ed8ffd70af5282867ed598511631356d855c5c0351915c5636dda89bc712f284"
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
