cask "verzio" do
  version "1.0.0"
  sha256 "REPLACE_WITH_SHA256"

  url "https://github.com/jmpellizzer/Verzio/releases/download/v#{version}/Verzio.dmg"
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
