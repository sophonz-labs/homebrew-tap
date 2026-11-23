cask "sophonz" do
  version "0.3.17"
  sha256 "cd5e47b2a666347a4535ed415a5b0206949d8bce1634565b1a393f5c7c79f87e"

  url "https://dl.sophonz.io/apps/desktop/v#{version}/sophonz-terminal-#{version}-darwin-arm64.dmg"
  name "Sophonz"
  name "sophonz"
  desc "Terminal app for tmux sessions on this and your other machines"
  homepage "https://www.sophonz.io/"

  livecheck do
    url "https://dl.sophonz.io/apps/desktop/latest/version.txt"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  # The app replaces itself from dl.sophonz.io; `brew upgrade` leaves it alone
  # unless asked with --greedy.
  auto_updates true
  # Apple silicon only: there is no Intel build. The app asks for macOS 11,
  # older than any macOS Homebrew still runs on, so no version is named.
  depends_on arch: :arm64
  depends_on :macos

  app "Sophonz.app"

  # ~/.sophonz is shared with the st CLI (account, agent, runtime); only the
  # app's own corner of it goes.
  zap trash: [
    "~/.sophonz/desktop",
    "~/Library/Preferences/io.sophonz.terminal.plist",
    "~/Library/Saved Application State/io.sophonz.terminal.savedState",
  ]
end
