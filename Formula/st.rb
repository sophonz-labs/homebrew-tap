class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.26/st-darwin-arm64"
      sha256 "9b439aeb6ac6f59ecb92858fa94710fda9aaeabf392a287a0a1f457fe71e9f0f"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.26/st-linux-x64"
      sha256 "99d8de62af8aee6d5e46f9b656b1041d222f3930275cd21c8f49bef9d2438eef"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.26/st-linux-arm64"
      sha256 "344f7a3a608554ae5b83ee677d4701103637dd4aa1d9fa72d3f4ad3e254e63e1"
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
