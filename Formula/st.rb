class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.6/st-darwin-arm64"
      sha256 "1850255480ef9ef0b03ba723423f80b9440dcd3b13a7aa378d0a360eb01345d1"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.6/st-linux-x64"
      sha256 "e7f5ac13140e77ae75f025e607c8521c782e7c1fa003f56975f8b0b3ef6f0d45"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.6/st-linux-arm64"
      sha256 "650b2d8fe56f5ad07be9b027960d5d37343ef65c4ee211ef7ce1ab8d4e0efaca"
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
