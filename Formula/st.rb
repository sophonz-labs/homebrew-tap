class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.86"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.86/st-darwin-arm64"
      sha256 "bfc61b46a319808756cb9d5f9a6bde0099819e30ee9b8fd2a9a9b3c05d1b046c"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.86/st-linux-x64"
      sha256 "bcf5ecba1deb0d64021e60a624ec29b3d4dd899868b9700ae444d7f35bd4cd7a"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.86/st-linux-arm64"
      sha256 "1bc274abca7bf3419801d975cbba021fccd434a033b473f335f44bba65442af9"
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
