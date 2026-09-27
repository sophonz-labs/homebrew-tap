class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.19/st-darwin-arm64"
      sha256 "57861eb416f4594f3ee345645e4662c0bd94ce2ffdd114c493983deebaf60d55"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.19/st-linux-x64"
      sha256 "1e52fe6480c68b4b144fb57f0499ae10a9c85638ae8ce41146ffaa942ff98c08"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.19/st-linux-arm64"
      sha256 "44b895ba11b1858dd5ec0db7817df2f3412d0fe04ccfbea80f6412a0c61b5b2b"
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
