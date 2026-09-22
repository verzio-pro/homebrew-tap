# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.34"
  sha256 arm:   "e030b119929d79fa0afa76b0f1b77f830ba94edf16fc29593c3c6f69a1b40dd0",
         intel: "88ff2f44734a96a3f3d5eab1dea65f86d045cd7b5086c5c5ffd722729d3fba39"

  url "https://lffzrrxydtgtmfslfzun.supabase.co/storage/v1/object/public/verzio-releases/Verzio-#{version}-#{arch}.zip"
  name "Verzio"
  desc "App update manager"
  homepage "https://verzio.pro/"

  livecheck do
    url "https://verzio.pro/changelog/"
    regex(/Verzio[._\s-]+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :sonoma

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
