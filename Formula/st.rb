class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.43/st-darwin-arm64"
      sha256 "ed3b5a475d5f0e987544045fb3a8927c557814182e2b4aca53702e1e4ad85f6a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.43/st-linux-x64"
      sha256 "fb17f2d03cd0eed79a57eafa5ae6b173ad899d92cf6baac526b234d4fb30da37"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.43/st-linux-arm64"
      sha256 "6d53b7076a31a5eb07541e5e8700146fdd85d113507db998a69924e0867e7186"
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
