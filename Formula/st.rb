class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.98"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.98/st-darwin-arm64"
      sha256 "9c857bc4eadf2b8904a6f2198ceee73505498b3a0f0b2be6d14aa9810dc922f9"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.98/st-linux-x64"
      sha256 "65ad1d0b7b580acd456ed31d8398e582db48731845d86ce5fe426ab488f250ec"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.98/st-linux-arm64"
      sha256 "00ead0de9d2f746af079a1cad0294008ac70c51357ee87aaf74f32609e48a631"
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
