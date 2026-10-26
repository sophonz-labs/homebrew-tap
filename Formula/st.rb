class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.106"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.106/st-darwin-arm64"
      sha256 "1a1f383a1eb2539f06c42a0b9eacb22639a4d899b6cab84557a5f5d5cfddd2b0"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.106/st-linux-x64"
      sha256 "2d3726708529da6ea4c969d4e3cee05c5b8ca2ce5e63ee8dbd5c49eb73eeee95"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.106/st-linux-arm64"
      sha256 "3dfd1df6489777b32984e3d692bade06c163f39f1ef103a79d6f5f25efdc1656"
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
