class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.22/st-darwin-arm64"
      sha256 "67c98f4931d4f985d345a6e5234ccc8e7a5d97f34e464ca520ead58b0e8078d5"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.22/st-linux-x64"
      sha256 "58bc32a80586c41d5dad1fb94d03944b2a46d0af47b6e2a43e538e33fbe833c9"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.22/st-linux-arm64"
      sha256 "8c63b0e0b54df66baf4679486a959ea8b39eaec8aa6f2933a9030aeb8d0c7ef4"
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
