class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.91"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.91/st-darwin-arm64"
      sha256 "4c75713fe3338dd1e9d1cbb987706979fd5b6394f128d9fa4ff614255d123e60"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.91/st-linux-x64"
      sha256 "255baece3b336094814211e7fe188cc3d5a694c85da9466c1b61b39f287531df"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.91/st-linux-arm64"
      sha256 "596dae3ec1db1ffa2415cf5617ac2e4078fc6efdfcff0be0340fa260f4ab856d"
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
