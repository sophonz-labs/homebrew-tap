class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.39/st-darwin-arm64"
      sha256 "4fbf907cf34688e9a8cc8c54de0b7a52bee760acfe8be0c6a887d4aa353e8f93"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.39/st-linux-x64"
      sha256 "45626204f27d640f316980cf79e46fef60c3170efd58f09fd62b5d260300ae20"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.39/st-linux-arm64"
      sha256 "079d0fd20454a6ac0530056a66cccf58eb09aa771c3f03a914ad3589786ad1f6"
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
