cask "verzio" do
  arch arm: "arm64", intel: "eb65b39a2c2f166e4746df362a2cf058a26e2bb51734ea8eb11d33f11f17174e"

  version "1.1.9"
  sha256 arm:   "65aaf271b5b16c6d6fa21cec9f49af7b29fd6938ab91860cde8079ced77fa619",
         intel: "eb65b39a2c2f166e4746df362a2cf058a26e2bb51734ea8eb11d33f11f17174e"

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
