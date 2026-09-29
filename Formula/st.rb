class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.31/st-darwin-arm64"
      sha256 "37f521da4252f34b11063c71df5563bc3359c7943792ac0c7e9c5d2172d178b2"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.31/st-linux-x64"
      sha256 "01de67855edb7d7453055287d634075f2903530b630eec1e1169cfdb534658df"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.31/st-linux-arm64"
      sha256 "49320409eb6755355fde94b1a7dea6c7520f42a3ba98aa98d87a8b31d4c1bc41"
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
