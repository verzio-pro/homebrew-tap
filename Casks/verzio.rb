# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.31"
  sha256 arm:   "e53165b5b1566f159029195401267a119e1da75f15f4fe9003065d0717f14b91",
         intel: "32670e20f433ccf2ca46330c4de2d0a39c333ef314ae83ee84506a1166a44ba6"

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
