class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.17/st-darwin-arm64"
      sha256 "ecfa91414e5675f4a1c5f7843dcee8f987e1680f0397d48cbd66b36b9399007c"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.17/st-linux-x64"
      sha256 "3e1e92c5b2965e56857f6b4a194fa1a300dc473d60eddaa3f199f6df74a60c80"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.17/st-linux-arm64"
      sha256 "5ad9ff10e7da36b0c1f6ed047eb86fc29b9a87f652bf47fb165010446b06502b"
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
