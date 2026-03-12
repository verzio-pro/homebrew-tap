cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.8"
  sha256 arm:   "6e5791b5383a960e14a2774b5006fefb6a282b622aa0c832897eb40be37754c0",
         intel: "4430c4f75dc904961d0b24306c9cedee905f03c951d9a442d4d944d5fae3ed3e"

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
