class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.38/st-darwin-arm64"
      sha256 "5ce07c11cdb3f687ed72e58e94a0398373e28da02905fc7dd6299d33ec9d56c9"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.38/st-linux-x64"
      sha256 "88aac023eb69b4529c6c8341390dfc756f5f0b058adc7d6fa24eca22c18ff4d4"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.38/st-linux-arm64"
      sha256 "c51089159ba29dd8377d11a960fdbad7566c48db3bf6231ca0f2daa023c10b24"
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
