class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.67"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.67/st-darwin-arm64"
      sha256 "79c4118e1b164c1ff65c197974c3f30813123735d2819e9748526553368acd2e"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.67/st-linux-x64"
      sha256 "67af40393e9ded916e66d5a262f8a5f11610bcd86831f6cd516622fd446bd60c"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.67/st-linux-arm64"
      sha256 "ac66c8727803b4274264a9cbd7aa68f0018cfd7a466e08698877efe11062f68a"
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
