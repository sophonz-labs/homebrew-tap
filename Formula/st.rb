class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.48/st-darwin-arm64"
      sha256 "29c5a0d66ac313b0b288d8b7db2fd1b3b78962b2d7b54b83c0189e76f0619639"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.48/st-linux-x64"
      sha256 "43e09d5b2d7311b6e9f87fc977fe84fd54a900ea6e21d6e04103b3f6ceed5223"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.48/st-linux-arm64"
      sha256 "f25282e188b866c8570f810743a6b1d346b95ca8d021e996513ec4838601fe5d"
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
