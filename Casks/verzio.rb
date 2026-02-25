cask "verzio" do
  version "1.0"
  sha256 "a59ad4c9901ad623896a7fde1ac9c22349c3c0a8964f178bc3b69b9d4a6d900f"

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
