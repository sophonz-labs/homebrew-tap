class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.92"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.92/st-darwin-arm64"
      sha256 "85b66aa42b6cc5bf1148233f2954d968aca656244ea8c4d4818db8c3738d2c2c"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.92/st-linux-x64"
      sha256 "ed514547a0cd68cb8920baf44362339788191a8faa678c26869632939346ce75"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.92/st-linux-arm64"
      sha256 "0c4bdb4841ec306c2430d8cb2b78db798a4523c831cf6be69d0143cd0d1446c9"
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
