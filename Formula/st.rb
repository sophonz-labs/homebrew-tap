class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.97"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.97/st-darwin-arm64"
      sha256 "d8e46d43879be50befe4437f221481af2337559036b8af9d9aad376972339cf8"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.97/st-linux-x64"
      sha256 "ed8bd1cdf1e6b0200b12cff7bfe1c7006aa04e3c701aa7d3a2431fb602a06f78"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.97/st-linux-arm64"
      sha256 "f615c50c72ed154ba4682bbf6a1ecb542a307362e37566aaff02957422b994c1"
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
