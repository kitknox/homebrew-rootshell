cask "rootshell" do
  version "1.0.7,100"
  sha256 "b88714d3cb2af9990b7eb458c2b40a99b423fd51acdb96d6d2a1a5e0e6e78708"

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
