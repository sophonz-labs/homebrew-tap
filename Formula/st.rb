class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.15/st-darwin-arm64"
      sha256 "e42ea751d72253156eedd52cc9bfdb898d2bd77ccfb79c13f17b74a87ec185da"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.15/st-linux-x64"
      sha256 "702e32fe88cdd1ecdd2d5abe1b29e2477b6792bd404e34de136a3360b9d442b2"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.15/st-linux-arm64"
      sha256 "4242a23fb4940633299880efedf5ef5f30846533a1195dd3f220a0ff5d82fba1"
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
