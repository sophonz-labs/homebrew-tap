class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.114"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.114/st-darwin-arm64"
      sha256 "2fed5a31ef69290ed8d038a3f6ac249e99fb3a655b814ef7832ed234c78d11c1"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.114/st-linux-x64"
      sha256 "2a616c50b2338978b6385130684bcb133a576bf5ac86b525311057b6aaff2a6c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.114/st-linux-arm64"
      sha256 "1214726758eec9130135573917f4b12ff8f8f59798de9a25963c33128ded315e"
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
