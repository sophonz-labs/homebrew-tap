class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.24/st-darwin-arm64"
      sha256 "559bace7094069fb384ff1ae4501b53f091b72b745e911d55b06950abc8ca12a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.24/st-linux-x64"
      sha256 "58ab856dd2160a209c6274f0ee6ffcad54c43f5e0a884539b48e65138b7574e3"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.24/st-linux-arm64"
      sha256 "f77467edcc71ba395d04dc5f5b9e31433bb0d67b64267a0a0bb025fa5ae8e9fe"
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
