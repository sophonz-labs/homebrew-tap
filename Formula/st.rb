class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.64/st-darwin-arm64"
      sha256 "950883c2b73963e476e77ea5a157b7871ab6245da29e04b258df465ab8c2a082"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.64/st-linux-x64"
      sha256 "c5b83e4110ac527e5908bf29493cc3f121cd3ac0e19a2461a25ed85d69b39f25"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.64/st-linux-arm64"
      sha256 "0ce76cd90640d6bdc94fb904587bbf7f54495cf9ff475ec4e32a270240b9b2f0"
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
