class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.25/st-darwin-arm64"
      sha256 "de3a091ed5a55be3a8575443410ab65135de55db8af185aa5f34dccbe0811a25"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.25/st-linux-x64"
      sha256 "19decd8626ec2696d792c44f68939b998e28648deec661ecf68dfe9e4abe1350"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.25/st-linux-arm64"
      sha256 "65e64d04b060d73727d1a72e0150f4251cdc0e305b0f9ba6fda2fe537d3cf63f"
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
