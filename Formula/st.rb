class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.14/st-darwin-arm64"
      sha256 "31af61c7bba497c15238a2056145c005438718a203c1ac42791f051b807c925b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.14/st-linux-x64"
      sha256 "17354cc4359f58cedf0800c115d5a81f90aa375201de41d94297f3e4b4e08e3f"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.14/st-linux-arm64"
      sha256 "02bd96be59a9562c2be22ce2f27be87831bee8c9300af0aeb1dc6aae2efad924"
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
