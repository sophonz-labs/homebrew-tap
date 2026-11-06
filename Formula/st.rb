class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.4.1/st-darwin-arm64"
      sha256 "11ff11a1906cc19e5d316a47bb3b8aca47aca8156e422e05775f1f35b462454a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.4.1/st-linux-x64"
      sha256 "4b5de2581b935c5d58303723683b18fe9b8d8cda6942f2188d481bd5a6508f00"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.4.1/st-linux-arm64"
      sha256 "f21e367766bf484da843dbbe48dcf57254ddd0f7e8b1e0bb62c031d84782dc13"
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
