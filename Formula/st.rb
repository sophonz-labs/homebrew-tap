class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.105"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.105/st-darwin-arm64"
      sha256 "c0f01bd2638f7e44773663444ce36ba35cc6079a229e04102a3557a965bed217"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.105/st-linux-x64"
      sha256 "088381cf703654480d09ef82ff055f7a51e18453e31dbc541e098eb9ed0d574f"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.105/st-linux-arm64"
      sha256 "be0e90792a31bb76b22a4f6e2e7be0af28d6a224290280e5c1db4cb1cee2adbc"
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
