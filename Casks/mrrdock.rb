cask "mrrdock" do
  version "1.2.0"
  sha256 "1192b3954d3a94a1433cf2480274506821a7bd5ac3ee3f2a2c97fe3810fa96f0"

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
