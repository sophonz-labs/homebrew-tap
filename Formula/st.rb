class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.115"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.115/st-darwin-arm64"
      sha256 "bb6144b1547e3341ffd1fcf198bd1e1a92df3db2189e9f21d430c5b4ef3c266b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.115/st-linux-x64"
      sha256 "91ccb9e6ed0a788e29009966af363268c86c9a4d5a1dcfa413fc32727eca6a50"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.115/st-linux-arm64"
      sha256 "464951074263e2c8221356f007a47b9696f59799b16f0e678432e719c1b3b65c"
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
