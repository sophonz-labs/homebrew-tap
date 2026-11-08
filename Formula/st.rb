class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.0/st-darwin-arm64"
      sha256 "6e302054e0ca2cba44d7d660e4f7a2e501f10b217fb68a61644eb45dd9d37a3d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.0/st-linux-x64"
      sha256 "5bc5235cb2b7a2699fb4d46199f87b0b17628830df915616232e8365025a995a"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.0/st-linux-arm64"
      sha256 "24498ef23c6feaf0592ea6adc68707151bdc3fa05dabd5c76d92a2cbf6da2d56"
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
