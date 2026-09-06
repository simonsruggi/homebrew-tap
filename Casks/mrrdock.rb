cask "mrrdock" do
  version "1.1.0"
  sha256 "4d9e8f665e316c523ca3bd72f4b174553bdbd9deeb6ad0b035d7f278cb6ccd21"

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
