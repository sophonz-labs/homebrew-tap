class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.12/st-darwin-arm64"
      sha256 "5f846b3e60e1b0257dabbf37986e6f5decb38812593fe61956c1ecaa42e2568c"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.12/st-linux-x64"
      sha256 "cf7ec12e5fffeecb37dd73e14efb33254e08d911ed4004a210396382e91b1450"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.12/st-linux-arm64"
      sha256 "5e7422b75703e1726795376a2875bedf4d6b58f9d62aeb088a516abf5bd7a4e7"
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
