class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.42/st-darwin-arm64"
      sha256 "c54ab152f45fc56fe61c2a0f458c034ec1c34a79fef5011dd578abd087b5d63a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.42/st-linux-x64"
      sha256 "63bcb965c62d01204dc3efa17fa2e0a1de16243a46a03e06d1ec7b9284481e0d"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.42/st-linux-arm64"
      sha256 "d1f0d738d883c069f935afade3cb94985087b7be1f843f995056e364fa801ff3"
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
