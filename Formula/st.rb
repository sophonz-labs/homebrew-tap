class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.1/st-darwin-arm64"
      sha256 "45dbb322372b4e8bbcb54a9676e0de94378f1808fe3b12cd410641dab8047efd"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.1/st-linux-x64"
      sha256 "36ae944d2ffa248fc01199baf35034f1caea94168315dea5c524cfe4eb0b8e20"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.1/st-linux-arm64"
      sha256 "e5f70b5f86dd4c0b4a95f94810f5cc7743207e39252a2ae809636cb2ac0f982b"
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
