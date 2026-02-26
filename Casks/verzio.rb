cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "4494e9f68f7b5af9cf6748b050b4a6d09cc3ec57e4cf90366d8ea14106829c9a",
         intel: "6a2ada841069c846c8ef56398a19545b3d29e61c09cc08b2d57ddf9215579e65"

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
