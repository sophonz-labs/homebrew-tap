class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.47/st-darwin-arm64"
      sha256 "d3ebb2fd8bf43267b5a717a0d536bea7e9459ab7d4db64e50047ff02dad294cc"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.47/st-linux-x64"
      sha256 "150611a88356e099206194917c15cab9ba07ec5e5e4510830fa3956a32b8608c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.47/st-linux-arm64"
      sha256 "288b57be58c863cfa97dafcdf6deb2a97bf1f903e8b9a9ad40e58d1844abab20"
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
