class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.33/st-darwin-arm64"
      sha256 "9ec32a91ef916695d07951e6f422ac08962c9bdaf85d617aced8c93cd47e32f5"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.33/st-linux-x64"
      sha256 "9d7ae806d19e9879829cb95080a035080ab9ea9fef9bbdbd4ed5655c59e53108"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.33/st-linux-arm64"
      sha256 "38cedb209c3375e2998d9df62af4dfee96843dc970205ad60e1e2f9f4101d0b4"
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
