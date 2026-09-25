class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.11/st-darwin-arm64"
      sha256 "5adebc765d5818c47f66bc89393db59e32493bf1b0584153114d3fcca91b768b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.11/st-linux-x64"
      sha256 "e8c8d8600bf029a97a4721ed3af9424694f0644338c834cfef1c3fedab287bc2"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.11/st-linux-arm64"
      sha256 "4c06e17d3fbfa4c659d0b0f45f376c5123e0c0d46263ba026c250277692c11e3"
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
