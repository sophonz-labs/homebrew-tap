class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.94"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.94/st-darwin-arm64"
      sha256 "2f266cb8653249676ace3df81bd0b141943ae771badadb0d4db387540b0aedf0"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.94/st-linux-x64"
      sha256 "1a5b862cd0df83132d4e8f28a4c3b551eb4fb3c346a5977566eff70432bda9dd"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.94/st-linux-arm64"
      sha256 "a10234d5c957905d80f56897d37019fa7433924e468e26b5d43edba94045138b"
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
