class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.19/st-darwin-arm64"
      sha256 "f0fdcc1e81e3003301a6a0a50d5ae3e48bcc0ecef37d4b90f25dc519693fb173"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.19/st-linux-x64"
      sha256 "449cca619e1ff40a765b5d79784bb944c33c9a7f81d2bd7294d3cd0c65b4dbea"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.19/st-linux-arm64"
      sha256 "c54efc284ac87442952d1d97be7822f6a398f43b1911f578b463613f7e6dafa0"
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
