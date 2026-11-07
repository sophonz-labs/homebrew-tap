class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.4.2/st-darwin-arm64"
      sha256 "7c8b75b0437fc85d82eff9dcd08d9ddf02a2819b9157dc65c8050df5d2385b63"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.4.2/st-linux-x64"
      sha256 "6cbb679d79c1d3d8243146be63402cd061ce990a765eea4debd8bed6ab1d4013"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.4.2/st-linux-arm64"
      sha256 "f43fa7068674fc5db2ad1714bae90c29b72d525f19012a3ae6b228bfb60ce82c"
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
