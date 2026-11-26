class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.21/st-darwin-arm64"
      sha256 "0144344fd3d1d5df7b16e4baa9b43b6283bff4e71a8048989878ec17edb78db9"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.21/st-linux-x64"
      sha256 "2b2409abaaaf212a9d918ffc2f29a57d5703c22d14a64684111216ee74297315"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.21/st-linux-arm64"
      sha256 "5e627eac1b6ba563781fbfd7264d336c4bfce610826e2d600bb4a9ab4b29aa46"
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
