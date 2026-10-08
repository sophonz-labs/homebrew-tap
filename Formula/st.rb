class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.60/st-darwin-arm64"
      sha256 "a007bf6f69eaa9b6dc39b01a18c525af8a6419e65d59916f1fe3bd82a86219e9"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.60/st-linux-x64"
      sha256 "46e34574237ae9d780e9c607e462bc18bec85214380b7d49ddd61f3df88f749e"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.60/st-linux-arm64"
      sha256 "75b3d95036f805aaa62af1109d0167b587785e2372189c41feee19ac2e4e326e"
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
