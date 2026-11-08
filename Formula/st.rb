class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.2/st-darwin-arm64"
      sha256 "5f9c06e21e46184c4c5396fec6da7e82d70f5a6a2a9896f200261c5a14a37cca"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.2/st-linux-x64"
      sha256 "e1e745bdade9c73cf92deea57b890e4665b7b84a715df7638f63434940c4bd36"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.2/st-linux-arm64"
      sha256 "5167bb85bd573cdd4e320a9e08550ef1058ab58a9f72afdc2dc03b809530480f"
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
