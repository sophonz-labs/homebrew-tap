class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.90"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.90/st-darwin-arm64"
      sha256 "e1cadb7c82f2c94ec657f77cc724b9003589de8c968124d0b28051727d55df3a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.90/st-linux-x64"
      sha256 "4ab88135db740d91e98d1f40aa90c4bfd762369e8b75ad5887c2f7eb4ebef613"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.90/st-linux-arm64"
      sha256 "cbd1d996e1ccf445a76ab0c4fa13dfaef3e89b4a07b677becd75f8762dacd307"
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
