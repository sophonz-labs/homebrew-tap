class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.66/st-darwin-arm64"
      sha256 "673754e85fc805f79f17e1320d80f89e5cf828e8678b8def5e673c3e159faa53"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.66/st-linux-x64"
      sha256 "8e4a86e405ca6aa1a20509a9e10906168366e48f541a0c26e5965a733430bf61"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.66/st-linux-arm64"
      sha256 "e73fc19ffd76e0f89b8cf5c09f24a05d0980840e86ff2e9246668ac855b094c6"
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
