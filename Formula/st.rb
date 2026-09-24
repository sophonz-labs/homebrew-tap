class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.2/st-darwin-arm64"
      sha256 "10a6d053b2daff9cb18244447fd6676a0221fb5b4d5f051568c9a73616e32785"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.2/st-linux-x64"
      sha256 "647751410ecbe022f862289a4d6b33126a52c919c8596c84166ff3f31a6133da"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.2/st-linux-arm64"
      sha256 "f9b6b55ae404d381a9c2b50e7e9d763e514f403036ee8acaf315418906093ae7"
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
