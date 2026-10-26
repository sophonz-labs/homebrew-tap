class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.107"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.107/st-darwin-arm64"
      sha256 "1140d6c09bd88d25bf7cfc8b92a4fdb894de515874157918130205d9986e4776"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.107/st-linux-x64"
      sha256 "ecf0ea437b924d00d4b7d6a5cb6bbdab1c1203f6d76886a2214c877525c2c73f"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.107/st-linux-arm64"
      sha256 "884ca88f7943a914fbebb152a2e7f04b00080c7950e3d1cc50515cfa756deb2b"
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
