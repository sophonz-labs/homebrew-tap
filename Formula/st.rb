class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.52"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.52/st-darwin-arm64"
      sha256 "eef7e81700dc2db58fe41d935ab7b791fedfe4115a88a921280b54874af891ab"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.52/st-linux-x64"
      sha256 "bd0369c21b44576b24403f81e14b14ce7a1ae01f3b0eadad5bfc7f969b9dd354"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.52/st-linux-arm64"
      sha256 "5e04c16e29bdc11bfad00e8abf17decb2f6a370fb05738f31329f60674c51d11"
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
