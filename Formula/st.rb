class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.9-go.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.9-go.1/st-darwin-arm64"
      sha256 "085889c8555f3c7f23286ed89731141ac0ef8f45d739d29fa75e6206fb18e56f"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.9-go.1/st-linux-x64"
      sha256 "516431f18f1b64d49bd7fbbd1159f30672c3bc8e2af53850dab199899703606b"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.9-go.1/st-linux-arm64"
      sha256 "8dfb249d14c490874b0024c27dc3dea8535ca31dee9608549ae57ec31922d35e"
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
