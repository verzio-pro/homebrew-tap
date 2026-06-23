# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.18"
  sha256 arm:   "fcf5e24f29596373688a30c45517c4aa2c64cfe3de7ce8e3f97eac6d3faac7ab",
         intel: "0f41f5617f98516593f175df985f6b5c84d92fb0f56bb4ace011bfc36bd854a0"

  url "https://github.com/jmpellizzer/Verzio/releases/download/v#{version}/Verzio-#{arch}.zip"
  name "Verzio"
  desc "App update manager"
  homepage "https://github.com/jmpellizzer/Verzio"

  depends_on macos: ">= :sonoma"

  app "Verzio.app"

  uninstall launchctl: "com.verzio.pro.PrivilegedHelper",
            quit:      "com.verzio.pro",
            delete:    "/Library/PrivilegedHelperTools/com.verzio.pro.PrivilegedHelper"

  zap trash: [
    "~/Library/Application Support/Verzio",
    "~/Library/Caches/com.verzio.pro",
    "~/Library/HTTPStorages/com.verzio.pro",
    "~/Library/Preferences/com.verzio.pro.plist",
    "~/Library/Saved Application State/com.verzio.pro.savedState",
  ]
end
