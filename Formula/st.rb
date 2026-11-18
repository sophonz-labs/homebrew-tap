class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.11/st-darwin-arm64"
      sha256 "34e4cda22c51336542e51ed2ee0b49d09e0223f79469443ec7e6e153feb920a3"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.11/st-linux-x64"
      sha256 "886d54cd4c9fb39011200dda648a6e074d497d2c934dfbb67822482ef241e74b"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.11/st-linux-arm64"
      sha256 "9d0b13c00aa1b14d1d7a77e2e592bdd1df8a2909f729ff71efa264941bea52ac"
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
