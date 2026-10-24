class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.101"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.101/st-darwin-arm64"
      sha256 "75a4c8485db084a132ea824563a8f7fe6f8d1302855e701fb78c20e46b86b8cc"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.101/st-linux-x64"
      sha256 "f456a4bedc0b743d4c45d1d50fe991fdf7f128bc45414a1119b998ced57f9778"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.101/st-linux-arm64"
      sha256 "bbc23d2769a6d714b7e52a8345a4ac842141496eedbc50b8dfc9a9c9612199a9"
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
