class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.111"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.111/st-darwin-arm64"
      sha256 "e3c4fb411561ab258c35708db4d12c46aba32edde8b3c2d8789493491950dfa1"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.111/st-linux-x64"
      sha256 "11e9e26dc76cd99d25c82eb06157da9cdbb67a7f3cb53f1b86dd3689e004601b"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.111/st-linux-arm64"
      sha256 "1e65dcc9ed0de1db3dc0933b32c3f76d311f9a37405038f4336eab2bfec634bb"
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
