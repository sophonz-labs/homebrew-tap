class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.21/st-darwin-arm64"
      sha256 "fdac7ba02d3227354f3cc51a9acde08896c58e805c9f63b31af756739920b5f5"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.21/st-linux-x64"
      sha256 "e2b7de1f290d7524a4d36b303f1fa0aaf31a3094ab039d23103ab708bd024204"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.21/st-linux-arm64"
      sha256 "f46cb66dcb6aa7006c9d12c9d9983964cd27ea496fc6b3362759c424da02afc1"
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
