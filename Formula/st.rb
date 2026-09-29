class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.28/st-darwin-arm64"
      sha256 "a880bc0e889c4dda81ac1e08c3cec24230070c194c3b817efc4b9b13c53f2e7d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.28/st-linux-x64"
      sha256 "f0421cb8a4a540ad17d053570b230f2595dfb1e6152967d50e5fd01f0e75ee1d"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.28/st-linux-arm64"
      sha256 "987f6b99f5d309ffb66ef06b16829c6d36b9198abc8eed1a010a8d8cd993fc53"
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
