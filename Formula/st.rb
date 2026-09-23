class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.2.0/st-darwin-arm64"
      sha256 "f30b77e6be921a6705bacde566385ea6fd78e674616feb989ca80c66c20d9c81"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.2.0/st-linux-x64"
      sha256 "5aa996f685a29e27f3049468638075a381189c8b65fc6235addfdc204aa22957"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.2.0/st-linux-arm64"
      sha256 "303e0369dcdd6bcf15b5d3f82b699e0d8f3427ee8a19e419a38703a680b5abd3"
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
