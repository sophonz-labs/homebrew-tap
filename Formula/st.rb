class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.68"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.68/st-darwin-arm64"
      sha256 "9f0b519575a4e9fea06b15cc8b2d367e614b64e202594fdb0dc7d8333b53c3d2"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.68/st-linux-x64"
      sha256 "3c0d4a349f3c2266cce835b03a8b214ba047321e5a9fec0b0ea731fc84bb9d49"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.68/st-linux-arm64"
      sha256 "d45f4c7f5f76c785b42505412a48f738225a771a57179e0257f1503486315928"
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
