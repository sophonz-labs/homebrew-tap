class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.65/st-darwin-arm64"
      sha256 "5d94fb80d9b4b3eac2e5d6fa0996967ea8b5936bb6310d57375f1388cfeb4023"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.65/st-linux-x64"
      sha256 "bed10bdd4501c5587502cb2f0c236991bf77b822dccd0fe6f12588f3a0560c67"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.65/st-linux-arm64"
      sha256 "bd7e58104f9557e3a082b4dfd317c810ea30a377672d3bfa021cb240ce5cd60b"
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
