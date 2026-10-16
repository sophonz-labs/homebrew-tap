class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.85"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.85/st-darwin-arm64"
      sha256 "b45f8bb07ae71b3569b4fe8b6f9662b315c2202d4e1f80e335cb9a3dce9e34da"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.85/st-linux-x64"
      sha256 "f9d2bfeff1bd981da35c1bfbdcb7a529441ca02cef11992b17a2ba748eee8eb4"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.85/st-linux-arm64"
      sha256 "76d2b82ee94c6f5bb431feb21263d6742a8911367a2f43fdc8bbff5db9686b75"
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
