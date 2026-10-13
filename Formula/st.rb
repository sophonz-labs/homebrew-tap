class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.70"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.70/st-darwin-arm64"
      sha256 "f8ecdf614ea970943acbce300b7683ff0a8be24011845b74a9d4b6d8e2461019"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.70/st-linux-x64"
      sha256 "cc6f25d020964e08a47d8c1fdc8294952e3dee3e236f599fad1c2d8e600bbce4"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.70/st-linux-arm64"
      sha256 "61a020df4de0e3223cdf5c75f49cee59710c3b364424904f5fe1ebf8576bdaff"
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
