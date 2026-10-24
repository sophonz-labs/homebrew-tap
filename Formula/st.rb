class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.102"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.102/st-darwin-arm64"
      sha256 "22e2cdcbf60c5413a403c99589b3515321a229501795903beb5687ecee0ae57e"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.102/st-linux-x64"
      sha256 "3c62353c6479dac8f31cf76e67191f685bf0f2ee715cb925e799a8e6002b0b3e"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.102/st-linux-arm64"
      sha256 "5eff84be79e5bb6b8e1b08df177ef6694dd510c82d3a5908a15b038f89aa1eb9"
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
