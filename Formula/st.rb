class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.17/st-darwin-arm64"
      sha256 "f60c42048551070b0d08014e87920fd3acf5522b02829037935f22ef1a2afc3c"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.17/st-linux-x64"
      sha256 "47ee747ac909754881f896571efbc193a2c31ce4e5d73fb16c027dc3f01b853d"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.17/st-linux-arm64"
      sha256 "40c4e5ef9368b7117d7aff58d989d9dbbc8ff2f94f6de46ff05f5f5227aa2977"
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
