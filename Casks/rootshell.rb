cask "rootshell" do
  version "1.0.5,81"
  sha256 "a61f82f49b39f53499601ba95206d92c4092b3a6e4232301e79be9415ce3ce33"

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
