class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.3/st-darwin-arm64"
      sha256 "9aba08970e3c8d6c9dba67d6cbb1d6ee020a668d8b6cbf09de5d0d64de11a92c"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.3/st-linux-x64"
      sha256 "05b0b1d06c8fb46bbe5dde39c4b812de6d7b8a833eb30034952abff3a1925c74"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.3/st-linux-arm64"
      sha256 "579fe0ff3fbaac6fcb684fd0561d5fa712c8dd7fd0545c142bc69a02affcd387"
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
