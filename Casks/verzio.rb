# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.17"
  sha256 arm:   "d56145fe3940f59909d37961d0ae38489662e1ec75682b15f7cb70fcbc98469a",
         intel: "9f319dce817f789ffadc2739ce3f4d1d18b48dd4337ba2583c4c635b95b6c92e"

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
