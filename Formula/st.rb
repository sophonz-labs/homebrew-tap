class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.87"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.87/st-darwin-arm64"
      sha256 "1483f2f8b09f0b0a0034fa22318bc80b93fe61dda34f62c7572967433a13489d"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.87/st-linux-x64"
      sha256 "39b44908e959a00da09ff0c9a261086e2aef4ba317964d030934a657dd02c4ae"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.87/st-linux-arm64"
      sha256 "6262a6feb520bb183d4642a3a9cc45ce35e82d0e583f948c1c6c2767cf1d9a88"
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
