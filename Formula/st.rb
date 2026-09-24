class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.8-go.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.8-go.1/st-darwin-arm64"
      sha256 "dfd053965fb8b7d4770c061bc6d2c22b35a9de46df4bb3af58c8fbeede39a2d4"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.8-go.1/st-linux-x64"
      sha256 "a490b6b5adc8622e0feacf0ddafdc5dca519e6b53b86a9caaf05556521aea71d"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.8-go.1/st-linux-arm64"
      sha256 "fcca46e22146cc6aa7306a3926141bd7a0222f6501ac65d7502725dae7f57039"
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
