class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.1.0/st-darwin-arm64"
      sha256 "b8a97eda7072836b2242ea01246b50a5c7b6de1a29896cf6ce51153b2008a536"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.1.0/st-linux-x64"
      sha256 "7d5da0dc9bd3c7a1a06b6c51fe369c6c53594320867ab24aedc7f2bd9c5feaf7"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.1.0/st-linux-arm64"
      sha256 "8d4091f8dab77b0be64af50d0d8f246a615d8c78520aff1bd0949b92085c1f38"
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
