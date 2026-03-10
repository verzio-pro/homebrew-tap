cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.7"
  sha256 arm:   "361abdb8eaaa53e0df63251b6c4d694928cfaf91e2781804e073279d4c83ae25",
         intel: "eb2f1f9001d25e7543d1126a4e6964755610d92b7460335eb759b7990de21d2f"

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
