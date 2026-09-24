class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.1/st-darwin-arm64"
      sha256 "c42e453a514244a7349eadf71e5b2d98ee2bd05fd226b32a1540a78f5b31308d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.1/st-linux-x64"
      sha256 "4b3f24062cbe76e1f2a3b3fe4071140bf83957fd79eb6a170ae11e33448b0839"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.1/st-linux-arm64"
      sha256 "60eb620681759bd5b0837ebd5aaa21e0800339c961abf07db2b2c9a83004602d"
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
