class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.104"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.104/st-darwin-arm64"
      sha256 "0473306d9dc9477b2e9a41a903c5212a66fa108fb280b1850e53e80bc837e7b7"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.104/st-linux-x64"
      sha256 "f1588570e2758774c5c05fa8d46e0b91ec48b41da743d8db789f9f7f3681c555"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.104/st-linux-arm64"
      sha256 "8708745181bbd8780688e700d3aef8a48a41a17fe13db77cb614bc01a1a37641"
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
