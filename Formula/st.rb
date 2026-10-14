class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.73"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.73/st-darwin-arm64"
      sha256 "f523e539ff35f565017b80e3768cea1e11898e6a89bf47870121f12e9331e204"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.73/st-linux-x64"
      sha256 "390798e03caab79cb7944951742533fd46e21c06f5e3d03dce27571364311571"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.73/st-linux-arm64"
      sha256 "c7ff337af24720ac03698035f8cc98e845cf22617e43e5633604f7fcbf54eb67"
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
