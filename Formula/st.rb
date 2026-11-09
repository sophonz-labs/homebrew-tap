class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.7/st-darwin-arm64"
      sha256 "2fddc8c19420634b059f41839e9cec3b45d50f27e2958f041b92e9beebb72ebe"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.7/st-linux-x64"
      sha256 "c46f98b5cbc6ed937f71e68675fb78b2f9ea443004ffac04d5cbe9234438c835"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.7/st-linux-arm64"
      sha256 "5aa1cc43ca6f55937546afe6591352a9af35441b6a1f494d97f54c6287a85eb5"
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
