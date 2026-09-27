class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.18/st-darwin-arm64"
      sha256 "9808a28aa08b22293098700a098aed1ae11c346910531c1ca5f23b14482e9f71"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.18/st-linux-x64"
      sha256 "1af2b1fa9742fa68c933e6af1e201b6304a4cac73012128eaad2941a176f651a"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.18/st-linux-arm64"
      sha256 "deece9190345cf775e42857cd21f8bd3c766fe16b0582d39ef3091724a8ff462"
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
