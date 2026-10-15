class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.74"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.74/st-darwin-arm64"
      sha256 "2891791efcfa0c63c80f630116bab5e029659d41333d5cee764a91d090ea0c8f"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.74/st-linux-x64"
      sha256 "3e29a28c697e72dbbb4703bb18274c885568bdb0dbc64edbcef53bdaee188682"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.74/st-linux-arm64"
      sha256 "f1d5e177c303ddc4ead2bb5614ba70a4d7eeae3f84f4ea028b30239663efbcf8"
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
