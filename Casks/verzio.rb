# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.14"
  sha256 arm:   "96f6e8dbf2a040606f26317f1b9616539c0c0a5955e006ac54dbcef6f723c5c3",
         intel: "73df3343e3ee0cd8ff6667c5cce98396718fc48a0cf5110f62ffd7f7cfc77e63"

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
