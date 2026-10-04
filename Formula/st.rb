class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.51/st-darwin-arm64"
      sha256 "f5bef4fdeb1ddc3f1ff2d177e7fd4a8e26ece8130b8fd34900246bb7f2498911"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.51/st-linux-x64"
      sha256 "78358266513c468e3b2d47416928d9475257a6a771b7dced4dc2ce368b6263d9"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.51/st-linux-arm64"
      sha256 "74172b370f7ed8a8499590235054a8f28a28fac298dcd74911badda52773e923"
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
