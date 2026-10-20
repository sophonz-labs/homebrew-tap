class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.93"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.93/st-darwin-arm64"
      sha256 "6a46a409e4bb086b4b3a119e99d31c8ed527d5708fcc2786d5aae405c4661bad"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.93/st-linux-x64"
      sha256 "19cad8e14d72350a4d05cb31791e0cdc56e71d8e9e3a1803fbed000854888528"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.93/st-linux-arm64"
      sha256 "3d35dc42a836b6550f51b4b0f7c745fe12183b62625077bc34d0c771f85bdaad"
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
