# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.10"
  sha256 arm:   "f4b79ae4f86e2293931e93f62fa80d616f72836d46639b0a7cc584699868ee9e",
         intel: "5bdcddda71e363c1531d60887022768f3b4b90e81e187507ade9008569679451"

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
