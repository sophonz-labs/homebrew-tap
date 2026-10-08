class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.61"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.61/st-darwin-arm64"
      sha256 "13f5340e13e12a21bfcb5dc975c421e58ed2ccc2f5360dfcbf4caed8982dedf2"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.61/st-linux-x64"
      sha256 "9ae54d877492587b909b57dbd8b9f963cca0fa196236f9a4ed75dee4b5b5495c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.61/st-linux-arm64"
      sha256 "e00289fcffff22aad36499974de7349ee3e4bf8fd3af78cf86cad7dfdc7b7b58"
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
