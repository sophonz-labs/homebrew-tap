class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.5/st-darwin-arm64"
      sha256 "1389d4f0896d8fb779f283ccf29e3d2ff6a607fe217316604fc2511b0099975e"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.5/st-linux-x64"
      sha256 "62d1e354ec298a3d41ce793232fe2fa577f2e3bbc2871100b22a0a1a92117dd8"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.5/st-linux-arm64"
      sha256 "a2acbb8b92eeb1756487d28ca8b1b37748c67482d18e23039d1427b5d11f03b8"
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
