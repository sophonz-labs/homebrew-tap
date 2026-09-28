class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.20/st-darwin-arm64"
      sha256 "0406693f2d29003677749fb8743187327f7e10313117d3f5316f672a2114f452"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.20/st-linux-x64"
      sha256 "13a4b7bed64405f5a913f4b29c45c4bfe81ef064b4ec81c0720d379ce30ac391"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.20/st-linux-arm64"
      sha256 "8e01121333ececae457bb2aa4b8aa16a51c6d1dd2247264ce8f3abaf262566a8"
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
