class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.27/st-darwin-arm64"
      sha256 "c2f3de239eebf2c1c9546f1ab720501598e9f4d86f27c1ee8e4965a99b1e3815"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.27/st-linux-x64"
      sha256 "1c88acddac29c9bdbbba6a9c14fbcc616efa04ec3d1b43b17e9e96e26020f8e5"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.27/st-linux-arm64"
      sha256 "aedebdc34e42d6a1b7bb0c99796439494fb746b1dd1b68a12a7784eda15b9619"
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
