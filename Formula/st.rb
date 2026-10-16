class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.80"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.80/st-darwin-arm64"
      sha256 "08a67d2483bbd523324dccfb52a8ce9a86284a7c7e2da42212c88ee1bb8f5ebb"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.80/st-linux-x64"
      sha256 "fbd899a09756114079d5e765d72c430790280cec924daaa2bc4259d02e86b5f2"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.80/st-linux-arm64"
      sha256 "fd5147d9dcc390d6688faab1e6b1594ec4702bf2f79dec7319dd37c858057356"
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
