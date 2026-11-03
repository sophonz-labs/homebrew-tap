class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.4.0/st-darwin-arm64"
      sha256 "9d769c8f13a904b74749f6fb310c2459c5ce43b37cbfbce68a9d772aaab1cda5"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.4.0/st-linux-x64"
      sha256 "da6d01a7a30f174d5bb4b292fe183c6dc3d6712cca3ac324a1f1bc72878be8a0"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.4.0/st-linux-arm64"
      sha256 "17d6c4337a516d4a10220133ac294a278a8924154400c80afa959a3a30cb6df6"
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
