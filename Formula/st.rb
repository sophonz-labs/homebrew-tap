class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.54/st-darwin-arm64"
      sha256 "cb70e5080467d534687d37919006c002cc79ad8c88f74200c65d6acc394ab7a5"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.54/st-linux-x64"
      sha256 "7dbe33fc5051793303dd079efeb9b83a3774e51e8b59b23cc797530d4ce50b2a"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.54/st-linux-arm64"
      sha256 "b8e20ba67b4e7c5ec3a45d3e76423d2db70c399c49265ee9abc5dce3fd245146"
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
