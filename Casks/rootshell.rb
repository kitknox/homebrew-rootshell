cask "rootshell" do
  version "1.0.14,162"
  sha256 "a026238279bee3d8fd82cb6e18c1047e990bcb7766742fd27e917a93fb08637d"

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
