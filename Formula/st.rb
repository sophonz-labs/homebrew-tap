class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.40/st-darwin-arm64"
      sha256 "f0cd21cd68c832b6e78930fef83f1bc2d63f7efa0b86f7cdd0414bc9bc35072a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.40/st-linux-x64"
      sha256 "15ca2835ae619e08e9b7a60f01fcc938858df443ef397ec6fe5a648910f97d2c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.40/st-linux-arm64"
      sha256 "20c7a9e0734d408055b9fec82158091222af9d4e2a1995d358dffc484ffcea5d"
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
