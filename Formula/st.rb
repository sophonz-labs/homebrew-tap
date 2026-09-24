class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.3/st-darwin-arm64"
      sha256 "b625c647aca87f0e8638426730875d3f585e1f6e868474fbb60ecbdefb68545f"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.3/st-linux-x64"
      sha256 "4d3205e03004f3f65855637064801016ddea41aff465c29498cb758f6d2c5f67"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.3/st-linux-arm64"
      sha256 "f661eab1772296923108cfd038a99ce538434bdc9cf5bd680bd5197a3c44674e"
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
