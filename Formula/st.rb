class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.69"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.69/st-darwin-arm64"
      sha256 "aab8aa3f1c2cf3dbbd5d7a0d894bb481293b3e743c3d6abb270e4ea5f4bf44bf"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.69/st-linux-x64"
      sha256 "fc6d019c70fac2fe5ed321c606bc5791c5fe310d7b62e11323394f53cf648fb6"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.69/st-linux-arm64"
      sha256 "4057428a8fdfcba209f5438d89fdb616e432189fc136242fb64f8eadbee5acc4"
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
