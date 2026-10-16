class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.77/st-darwin-arm64"
      sha256 "5e3eaf631b22ea07235f84d35124b3a27a1c3b21cd041948cdc3b46fa7d07e4f"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.77/st-linux-x64"
      sha256 "f2b5376ccd0b94c321d04adcc1a37512d2c401fc54375f4e529a9155035efd40"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.77/st-linux-arm64"
      sha256 "92ed8a6c2528498d1ff67610ba1ce2a1104682bf841b9248f65b393e07c4079a"
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
