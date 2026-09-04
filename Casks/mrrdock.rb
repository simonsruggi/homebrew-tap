cask "mrrdock" do
  version "1.0.0"
  sha256 "60e1f56adee5c103633b26a64d45b3067836eb9a8077ac4311ddb36b75519b36"

  url "https://github.com/simonsruggi/MRRDock/releases/download/v#{version}/MRRDock.zip"
  name "MRRDock"
  desc "Free macOS menu bar app showing your MRR across Stripe, RevenueCat, Paddle and more"
  homepage "https://github.com/simonsruggi/MRRDock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MRRDock.app"

  zap trash: [
    "~/Library/Application Support/MRRDock",
    "~/Library/Caches/com.simone.mrrdock",
    "~/Library/Preferences/com.simone.mrrdock.plist",
  ]
end
