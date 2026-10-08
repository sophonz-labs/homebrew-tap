class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.59"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.59/st-darwin-arm64"
      sha256 "99089a3ba2a147c48c5d6ec02a586da5dc41c077cd6198178d21d8b7aa35a095"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.59/st-linux-x64"
      sha256 "116920a059b4cc9758ab3124894d3db418861853df6c8f4df395c91d9767378f"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.59/st-linux-arm64"
      sha256 "1b6e835aaea78b08484a199d4408637841d73bde1f4fe2ee598ed8e938415204"
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
