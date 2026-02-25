cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0"
  sha256 arm:   "1c4982d71892c74b58957482e42637272ec5a8f6b5ec235f73b7c14494b41fb3",
         intel: "ef832eab348f994d5a101c9bb862bf2d5f162b47c51d53372743d70b3ddb0a7d"

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
