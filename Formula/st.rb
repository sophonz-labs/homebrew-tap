class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.8/st-darwin-arm64"
      sha256 "73360c9ed2bf52c2b908b4ea5fa5d9ac7d60be366df1f295c1a7e896ee2fef5b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.8/st-linux-x64"
      sha256 "59a610c828da3c3fa8489bb9d63c23efd221a40a2be499df8e10d0d839e206f8"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.8/st-linux-arm64"
      sha256 "f925041ab018e9bb7e23d17a4bb4e1c65edf50012078fd72f4d384aacbe376b4"
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
