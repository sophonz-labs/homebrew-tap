class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.100"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.100/st-darwin-arm64"
      sha256 "1f3851242ba3cb9dbcab3657476632a2d2afb04224bf3591cc92a08d78df1a9a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.100/st-linux-x64"
      sha256 "dc9d20388416122e934c9c450c5fbcd118455d417c55e65218580b9fd8d9d860"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.100/st-linux-arm64"
      sha256 "9439375319fef2ca56cc99b63006bdcfa295d2bdc8bab18854ad0725f8e9eaca"
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
