class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.10/st-darwin-arm64"
      sha256 "fadfb6bd29f52ce34bd359b651b1a0d441429051c8f8ae92a37b4c6d94d303ca"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.10/st-linux-x64"
      sha256 "6552c29b1bacb09802d1f7219a0fb212032fd7542e40680284fe0d41c1534730"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.10/st-linux-arm64"
      sha256 "e5000859fe340f7b6ca5463b2a861af0aa78a115f027edcffa7e7b559cc0d467"
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
