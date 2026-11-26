class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.20/st-darwin-arm64"
      sha256 "cd0983465f85bb6f4d795f731a0ea45d40eefb72ebec3c888d23988852cdd1c0"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.20/st-linux-x64"
      sha256 "a657398287a67da3fc55c5a38064434c97ed24992c53c6ec4ce249fa04c0e869"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.20/st-linux-arm64"
      sha256 "cdbc71d314bea81c6d809a10a89a01a68d169dd27ae922cea472aaf7965623ef"
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
