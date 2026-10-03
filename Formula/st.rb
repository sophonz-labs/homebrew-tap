class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.44/st-darwin-arm64"
      sha256 "9d0798dfe9f0a2ef14d334df58f22658ace723bb63e123a5de45ddd64c812c78"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.44/st-linux-x64"
      sha256 "4467007198ffd580e9fe784e9c9698882ac671343024ad0ff4424d12422462f1"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.44/st-linux-arm64"
      sha256 "0c45ac7d40905ff93389a50af023103ebe23cc6fd4520e9887949873de02a885"
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
