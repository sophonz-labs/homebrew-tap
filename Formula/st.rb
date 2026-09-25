class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.12/st-darwin-arm64"
      sha256 "4a96ffa95457939263f90fd8327dbb964c6011266c68f4b64bd0e0c37c9be38d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.12/st-linux-x64"
      sha256 "397796ee78fa0b304107ecd611c6cba07ab33cbef34736b998d14cdc5e77c974"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.12/st-linux-arm64"
      sha256 "5e2acbd9f6db18256d300d43573d2155f2877bdaee7dc69b919311ce815f3c4a"
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
