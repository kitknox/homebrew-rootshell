cask "rootshell" do
  version "1.0.16,180"
  sha256 "c2c8d14e8919dda00906e16f246b7ff4f949e8b13f8fd32915f629ecf616a5c2"

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
