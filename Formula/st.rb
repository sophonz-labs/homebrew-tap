class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.83"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.83/st-darwin-arm64"
      sha256 "ef4b7edc3b4b9bb201137b2a137b1806cceff77dc086fcc6d21934eb6f5a8876"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.83/st-linux-x64"
      sha256 "333e7d0d7c0378c2d6bef01312a58ba1a1f37b931006bc18562fac4af764049a"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.83/st-linux-arm64"
      sha256 "f788e3b04305abcea22f31d20125d0832e8c49d0dfd83fa9405a8e25a4adeb6c"
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
