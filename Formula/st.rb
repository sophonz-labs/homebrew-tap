class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.5.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.5.16/st-darwin-arm64"
      sha256 "0e9320684f0872366f5e9c6a158cb054371d99269ca8cf1a11c078b65fcbd0a8"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.5.16/st-linux-x64"
      sha256 "251eef31967a88d63595bde6da7238cee6b7d377e2b54e21bd42a2da924c3e57"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.5.16/st-linux-arm64"
      sha256 "c90f6a9dce52a6e3dbc5e1a647fd7cde473f79ebbbcc5c0e9042ef64665ce81e"
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
