class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.57/st-darwin-arm64"
      sha256 "16f9d5b98528b7db4f8e5930b3f8924a83d824a7190b006524be94e9cb1fb8a9"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.57/st-linux-x64"
      sha256 "4fc55e09e1fa8acce6e54536a757d6f4d8e6777304d5a5d740bd38dcaf456b8e"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.57/st-linux-arm64"
      sha256 "a023e3ea43160a2899f5699765566cf68f5c5fc522f37ae276444e24cea84fcc"
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
