cask "mrrdock" do
  version "1.1.2"
  sha256 "90925878b8137f3dfe2cd2aa4a2d90cfd28b9e1da0dd9af0a787f5206fed31f7"

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
