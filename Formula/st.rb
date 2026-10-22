class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.99"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.99/st-darwin-arm64"
      sha256 "1e069c559f90efc56f37f87e5b3fdf977eb0a401b066b83683f26c81c8fabf9d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.99/st-linux-x64"
      sha256 "20b517e9387900fd62a0735ec5f65f6c79949d9833d88f8787682b2c86d85ff6"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.99/st-linux-arm64"
      sha256 "8b4f5937f2ce38bb9b92ee740aa96371cfc7b6ca3a2f2fe7dfa96ab68bc6cfac"
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
