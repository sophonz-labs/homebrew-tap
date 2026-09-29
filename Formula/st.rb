class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.30/st-darwin-arm64"
      sha256 "df0888dc54bd6d9d35804951815a440ef714300f903b068cd022ae8b4844e7d7"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.30/st-linux-x64"
      sha256 "933806e4a0b3a662d31a46358d5463e8f0f419e97deba14f08b6e63b7e605efe"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.30/st-linux-arm64"
      sha256 "b7821e1fac10ebc6a5efd8a7518dd8cc815a80591b180d15b2b52ddda0ba4781"
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
