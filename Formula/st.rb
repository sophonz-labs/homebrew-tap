class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.29/st-darwin-arm64"
      sha256 "f83b247a589780e4b92afb5084235b7ca9a47b364d7d2be2b86a4d5d6ad5b045"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.29/st-linux-x64"
      sha256 "6b3d58865303c0bc4bed57e51dda173022e2a22536b6a2d2197942cd75200eb5"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.29/st-linux-arm64"
      sha256 "31417c39e982692eb0ce8e3e9235a67c12b302ff06a356357839acf99c3470e2"
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
