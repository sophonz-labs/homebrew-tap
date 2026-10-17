class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.88"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.88/st-darwin-arm64"
      sha256 "aab9f23d9e55af5dcb07d16ba23382ed5f1f2996650a16f80eb28ec56529ea07"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.88/st-linux-x64"
      sha256 "17453e19402c49ca4cad63c394332475b0d6fb7afe90ebf0404b407bb435a2fb"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.88/st-linux-arm64"
      sha256 "968cd23cc5f752a0137ca4e69d521ad7bb5dcd53effdcabb8723188eb8f922ad"
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
