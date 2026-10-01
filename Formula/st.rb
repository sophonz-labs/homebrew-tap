class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.35/st-darwin-arm64"
      sha256 "7e01e67f69efb11ff0022fe15714de11206c3751b699976eeae2f75db30643df"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.35/st-linux-x64"
      sha256 "1ce34ba3062f6810270899eac0ecb8da7b18a6526b44ab3dc895c3c932f79dbc"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.35/st-linux-arm64"
      sha256 "951bbb772cdd50c8f6b7e87b12ab5c5f062a5be221b723752c5d292f32030571"
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
