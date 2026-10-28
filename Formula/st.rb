class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.112"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.112/st-darwin-arm64"
      sha256 "12c35cec5b343a206077fdc8fbcf6b61495b5cae4d1c87a4d07864ed8b5fe18d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.112/st-linux-x64"
      sha256 "521813ec45ab73cb72e52353e0f1c47a276fab242211379379f4d8db76edf872"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.112/st-linux-arm64"
      sha256 "9b9ed369d45142b797ebf2b60cc3caa830dcd73e48a328555b58f9062123bfa1"
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
