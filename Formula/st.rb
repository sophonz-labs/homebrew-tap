class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.108"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.108/st-darwin-arm64"
      sha256 "25d7dbce5b8d39ecbbfed730158e07956e150a050e003e8da72b4cf255f208a6"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.108/st-linux-x64"
      sha256 "a96ea48f78221aca7defe8a5cf492f449284e482e0aed3dc5e9377c0e22338c9"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.108/st-linux-arm64"
      sha256 "f5a9483ee02f6e5c9127611f3b556adf5d4e3fde34fa49101da4c0af807b450d"
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
