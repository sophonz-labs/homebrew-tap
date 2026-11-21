class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.14/st-darwin-arm64"
      sha256 "98732bce4d95a6c0cfa9dc6774d74b7e0addb082a8c6399c0a6c0aa80f73d143"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.14/st-linux-x64"
      sha256 "f02761f86bc1a95637f0bb237891f45a4dac677995636ed70e7937b95a0db16d"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.14/st-linux-arm64"
      sha256 "856dc9b780333bf1c5abfbb675ac5f6d9ddb96e26e2dc0217a776e439b10aec4"
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
