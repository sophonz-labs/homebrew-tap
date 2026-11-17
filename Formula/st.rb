class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.9/st-darwin-arm64"
      sha256 "e58d8906c127eed5df4bab713cf3683b1334937ac4d60a3b89654185a9e2edac"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.9/st-linux-x64"
      sha256 "90c8718bac2e752752d718da12e69ccc9af16aa98aaca3567a10efdd6974eba8"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.9/st-linux-arm64"
      sha256 "9e3cc1be93c278d7ee596e1895857ea5cdbbf129e4cb6167b4937eba3cc4558b"
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
