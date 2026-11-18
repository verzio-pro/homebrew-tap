# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.37"
  sha256 arm:   "e389052fe11cac0284d7e34cb63c3ce19a416995ffaf854a27db7c27194041d0",
         intel: "add538c5128450585feeec96b61c8cc35eb2de24d247b8aff811423e3f3f0efa"

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
