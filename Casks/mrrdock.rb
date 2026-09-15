cask "mrrdock" do
  version "1.1.1"
  sha256 "11c183cc97faa63a98da78a7446e04d2f6746fd9e742f0e8ae1101619b06a4ec"

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
