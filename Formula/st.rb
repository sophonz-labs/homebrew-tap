class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.95"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.95/st-darwin-arm64"
      sha256 "09bd539d86cd1e5510f7a3a027580ff9d1283115b6ca13238607703564847fe9"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.95/st-linux-x64"
      sha256 "a2f8acecfc83a2db2fd970c662594491991058833fe223bd92e42808446c886d"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.95/st-linux-arm64"
      sha256 "f087e1dde54c9b01c67e3640af550e97f44ba12c00e9996e8bdf016c85a907a0"
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
