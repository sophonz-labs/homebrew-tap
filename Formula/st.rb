class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.110"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.110/st-darwin-arm64"
      sha256 "9984f0311b6bbae76b70b15c05b093a1cd130ca8b174eaa3feff6bd7ec21322b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.110/st-linux-x64"
      sha256 "3b9e76227fd9ed891736d2470c341ac54b6f1e952a0e9faa5901cfe6aceaf0bc"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.110/st-linux-arm64"
      sha256 "8c105589e5f91eb7d5287912fcc0be252079b19ea89a889a1d3e19420e2303d0"
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
