cask "stockdock" do
  version "1.13.5"
  sha256 "ecb7887326a2402e4a6650479a828a07e4b7b870b6cd64c9c515b9ea1852351e"

  url "https://github.com/simonsruggi/StockDock/releases/download/v#{version}/StockDock.zip"
  name "StockDock"
  desc "Free macOS menu bar app to track stocks and portfolios in real time"
  homepage "https://github.com/simonsruggi/StockDock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "StockDock.app"

  zap trash: [
    "~/Library/Application Support/StockDock",
    "~/Library/Caches/com.simone.stockdock",
    "~/Library/Preferences/com.simone.stockdock.plist",
  ]
end
