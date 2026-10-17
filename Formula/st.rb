class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.89"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.89/st-darwin-arm64"
      sha256 "e3bc22991f3e637b6935d68ebd4f3e78fadef881767a4f01db3babb28e2222d0"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.89/st-linux-x64"
      sha256 "1ece826eaed8971b09fd026d2f53338c5b5817dd6f16ca542ec1ea1628e99386"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.89/st-linux-arm64"
      sha256 "133344ebf93452ef0ac8081f9723868a4d75ad972f4bf1f491a0b85a2fdc0c5b"
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
