class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.13/st-darwin-arm64"
      sha256 "7b01923425c1df4556e16b6bb000ba5af61f3c5605393d7900aef58af6a8a1a4"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.13/st-linux-x64"
      sha256 "7ed49961673929e4245755a48b109078ea111d7f332a93e4cd17c3b43a835629"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.13/st-linux-arm64"
      sha256 "9ef5d8153666a65736f98a2b57282adf82c2fbffa7378acf468ef64b41d9ecee"
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
