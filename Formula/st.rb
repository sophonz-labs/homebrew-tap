class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.8/st-darwin-arm64"
      sha256 "fd17e6989840648e797c3ae5026fc5ef8df3b2d1b86fb6cafd3e8be7ec30fe4f"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.8/st-linux-x64"
      sha256 "8012d92ad26f6b3334b868efc7e79e504967f7b459d5de74c10d13cda0ead477"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.8/st-linux-arm64"
      sha256 "e836b1d4396d744c30fb076a4e0ac0e6eab4f654d80fecf5262dcd44b30310e3"
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
