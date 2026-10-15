class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.75"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.75/st-darwin-arm64"
      sha256 "101ac4ac2400b263f5c4fdaa0dfedbc71910096246745aa9a0bcc4baa7f81b1b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.75/st-linux-x64"
      sha256 "ec972483e428ad1f3335699fefb510ca6e5d988f257a3e4a755a540ef4a9c1b8"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.75/st-linux-arm64"
      sha256 "40d448c31f65b7eafb8a990811e894e5f7e5d3180e5e6084137159e6336cfebf"
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
