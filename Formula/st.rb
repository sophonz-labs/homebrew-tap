class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.13/st-darwin-arm64"
      sha256 "9701e4d2c1a9c88c0f07c45365063b1c3941cac09c193feb3229c7257207c4b0"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.13/st-linux-x64"
      sha256 "213bb9e2fd9011e659b73d5cec9a68d3c564717ef346cf5054ffcf9056012a0c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.13/st-linux-arm64"
      sha256 "da98df6ce67722693341306fa123d72bf7da35ad32940f812f5e6f05f55f2d77"
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
