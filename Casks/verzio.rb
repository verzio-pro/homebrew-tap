cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.6"
  sha256 arm:   "92185685d380a12bc23203ff197177885cb541943cedf6c950bc259eae2da41e",
         intel: "6c71e992e45d89dd02ebb23c4128512896a41b20a92e1511210f835a18f56770"

  url "https://ztydsycmuuscuepyzvch.supabase.co/storage/v1/object/public/verzio-releases/Verzio-#{arch}.zip"
  name "Verzio"
  desc "Your home for Mac updates"
  homepage "https://verzio.pro"

  depends_on macos: ">= :sonoma"

  app "Verzio.app"

  zap trash: [
    "~/Library/Application Support/Verzio",
    "~/Library/Caches/Verzio",
    "~/Library/Preferences/com.verzio.pro.plist",
  ]
end
