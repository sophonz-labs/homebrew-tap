class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.23/st-darwin-arm64"
      sha256 "bcf685ebea298b17d98326cd19cf06a820a00730f4b0b1e1604fa3de9495b69a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.23/st-linux-x64"
      sha256 "00c02b7b93adf894e3598839f24a961f33d0a5e24e963b1144d94e50fc24ae9b"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.23/st-linux-arm64"
      sha256 "5620342e936a5f0efd0768f18af7f043e7f639882299443dafd9efa562cd4546"
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
