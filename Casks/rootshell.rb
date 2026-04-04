cask "rootshell" do
  version "1.0.2,63"
  sha256 "578b808c1cc8c5b350d6e23b9b80357c0c38623de82f15af1265058f7f217eab"

  url "https://www.rootshell.com/downloads/rootshell-macos-#{version.before_comma}-#{version.after_comma}.tar.xz"
  name "rootshell"
  desc "Local Terminal, SSH"
  homepage "https://www.rootshell.com/"

  auto_updates true

  app "rootshell.app"

  zap trash: [
    "~/Library/Application Support/com.kk2.rootshell",
    "~/Library/Caches/com.kk2.rootshell",
    "~/Library/HTTPStorages/com.kk2.rootshell",
    "~/Library/Preferences/com.kk2.rootshell.plist",
    "~/Library/Saved Application State/com.kk2.rootshell.savedState",
  ]
end
