class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.37/st-darwin-arm64"
      sha256 "4993c3818741b531517c9339a3a623a04865bf5d235ac59b23f9c89c566251f4"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.37/st-linux-x64"
      sha256 "cfb09ab420e583b3a5f54a348ebc57a648d62849713aa604f4dd72503fe06ec3"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.37/st-linux-arm64"
      sha256 "84167d7385defcb589ba1ab80f69928ce237d75096d95328cbaaa7ad189656ac"
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
