class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.36/st-darwin-arm64"
      sha256 "077ec052de7e5c7de0dc6444908fbe9e687d135ee243e22827aac75053332e0b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.36/st-linux-x64"
      sha256 "0a816a682f57361683f9c3f5a59ce431a095281f77d063c3e617151c9a394c01"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.36/st-linux-arm64"
      sha256 "6aca0c73d471623964d694286eb69fcdb14d6cfc0ef84c1af6f8056a22014f4f"
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
