class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.45/st-darwin-arm64"
      sha256 "9de322a5b03ab0013e4d01b84d1ec2d254152442a3445ceb71d94c6146f7877e"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.45/st-linux-x64"
      sha256 "86c153c69d7618431ec35d5271c1d7cbe7f22eb51e14d9d0ae083722538bfe7f"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.45/st-linux-arm64"
      sha256 "f19ac9dedd7d30fb0e1ca0f4778542d1b47f819e436d5884892986cb6b0b7f83"
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
