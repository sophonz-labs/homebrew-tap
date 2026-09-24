class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.7/st-darwin-arm64"
      sha256 "04d2496518b3ac293bba4c53ceef14c59af8734798615b60f7927336e888a428"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.7/st-linux-x64"
      sha256 "386c887cdd3455627de5ff24c3888a63a9b4a3f25e58db901f06385b4393ea5e"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.7/st-linux-arm64"
      sha256 "46ff83587f713468051da23b6a56c1ebaa234efc59fb8eb9b40655bcb5d48822"
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
