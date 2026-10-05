class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.53/st-darwin-arm64"
      sha256 "5115d2f6267bc6df343a3321ee0a2adbc45382f9586dfd066d80a4147805f194"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.53/st-linux-x64"
      sha256 "3fd736462752856c0a01751f5275926d5842a534f54fe2f5a5783de720c03a39"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.53/st-linux-arm64"
      sha256 "5736499676e78db41f37e6363fb839154e8cfc202799e617c0bb83911a55d719"
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
