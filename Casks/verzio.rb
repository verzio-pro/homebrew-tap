cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.4"
  sha256 arm:   "89ef99336a6556b4eba7bcb23937e84870946b432a4558ec8cc6f6168027235a",
         intel: "fb22e21f07d09f9e3ba029d46810783a0bb0af64efe29e923a6d2cb4acb75f1b"

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
