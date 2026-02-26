cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "5d512f021f2f502dd0d357506363096bca253617c12ce7eca0dd9c2c31c8adc2",
         intel: "df57e3d51957ea3e05ab4787c3022c98d1880aa30ee9daedfa132a342f569f74"

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
