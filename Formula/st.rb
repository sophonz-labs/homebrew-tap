class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.78"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.78/st-darwin-arm64"
      sha256 "f3383d5b16b323c835067079d9d546d48f321d98d13f126cf64f5dfbea0f710c"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.78/st-linux-x64"
      sha256 "5d456a2c087a45e6190b60f42c2ff4516e45b47c22cd03f15e5e6ea46c56b117"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.78/st-linux-arm64"
      sha256 "26439454b8e0372d73c2ee686246a994ca67a145acec068e95869151bbf8dcee"
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
