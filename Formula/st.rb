class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.116"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.116/st-darwin-arm64"
      sha256 "c58e9fba06dd35bc520e310cf205215d8a2d38e508e70e6c4e148ae7b76e42a3"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.116/st-linux-x64"
      sha256 "be3f061940f74a754c25c3bd831722051428771914ba9fcf5e1d25dd6056bd0c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.116/st-linux-arm64"
      sha256 "cda61ef2350f6c0b8025884a1a9ce3fd209a8a43ed95cc5b03b9d20417b2bfd4"
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
