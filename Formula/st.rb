class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.41/st-darwin-arm64"
      sha256 "902099ba9a4c7845301a7aab181ef966a0ba45dceebb0bacc0f7652b05de99c1"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.41/st-linux-x64"
      sha256 "c8a1ae8b9d9dee55fd3d7c2db5655b6de217b744d5b8464881649287b11a5e5e"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.41/st-linux-arm64"
      sha256 "1d4b79e2bc2972edcd6f9d38211a0e47f2796227fa0fcac059237d729f68894c"
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
