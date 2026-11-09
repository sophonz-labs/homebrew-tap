class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.4/st-darwin-arm64"
      sha256 "339f341ccac5cdae90ea387100136e4987b29e41b0ed260e4e54b4d331a215b3"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.4/st-linux-x64"
      sha256 "41997003070d26d2e1da963b4d7692622afb7dd848a55e9888ebb1ea060186e4"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.4/st-linux-arm64"
      sha256 "fdbf77531c072aeed0ec0c34a570d8a5827792bafcc7bcd5ab0288e9cd840720"
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
