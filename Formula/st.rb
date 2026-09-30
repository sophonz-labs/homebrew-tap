class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.32/st-darwin-arm64"
      sha256 "b6c7b2eb7d45ef64aff2a4e34ac5ddf3b45c9dfafab1b008d61318e2aaa8278e"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.32/st-linux-x64"
      sha256 "e90474ed001866e6befc67e8384dc28c5ec3c71eb8056d86d8eb5af06fb3f93f"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.32/st-linux-arm64"
      sha256 "89829b8f438fcefd9563bb9ee100c9c447a4d020ad1ba0e36205e92600e9209c"
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
