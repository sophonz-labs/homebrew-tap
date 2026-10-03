class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.46"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.46/st-darwin-arm64"
      sha256 "21f39160204419d3c70aa0e3301a33682ed338067a3b9aca60d4b71881d12d87"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.46/st-linux-x64"
      sha256 "9189d3754c16898984bc0532ed07a02c36792f67137b258b62d85695733987d0"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.46/st-linux-arm64"
      sha256 "565fe003c1b8ff959585207f8170e85e553587da57e63171918682e6024cbf25"
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
