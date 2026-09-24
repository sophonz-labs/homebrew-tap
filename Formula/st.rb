class St < Formula
  desc "Share the terminal session you are already running"
  homepage "https://sophonz.io"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://dl.sophonz.io/v0.3.5/st-darwin-arm64"
      sha256 "6f74fccaff2570648c086c11917b14692a6747cc2007a9fb4c39806235132e26"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.sophonz.io/v0.3.5/st-linux-x64"
      sha256 "a3e24e8e0722d550cce7d7976ea19443398214feb531a7d2b2638921ec2b47e6"
    end
    on_arm do
      url "https://dl.sophonz.io/v0.3.5/st-linux-arm64"
      sha256 "f36baf0f65f532a89298a1abbab9f154fba5c903d9f9b2071f451179a242fcf9"
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
