class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.6/st-darwin-arm64"
      sha256 "e280b74beb7ac279392b1a271073a9fe48d65140a1f1c64ed4763bb8337ebcbd"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.6/st-linux-x64"
      sha256 "ad06aff403958f6a0c909e6243070556ace1c1c259d3c4fea45205a4d579a612"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.6/st-linux-arm64"
      sha256 "d9504a27ad6d274a800e5913563a4758d4e1e2dbe46ed719df8cfe81726e7888"
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
