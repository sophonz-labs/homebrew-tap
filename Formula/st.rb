class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.96"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.96/st-darwin-arm64"
      sha256 "c8d2798157ba7c21eb1d5b274a51c4c97e73db42afe4731aa473a96984f2e93f"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.96/st-linux-x64"
      sha256 "8fb0b4f752b7ce4a8f0cc30c42ea6a591236ebf3d09e3d45199d267b653d1e7c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.96/st-linux-arm64"
      sha256 "2792bc19a08d5e9abb6f633cc4809ab038c8fb3dbb6ed6fb6952f3861ab4ead8"
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
