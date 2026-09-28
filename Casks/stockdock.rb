cask "stockdock" do
  version "1.9.19"
  sha256 "6aa86e28e37b2800af49b137f5266de4ec6f9c4e1a3783bfd3aa0816d64486b1"

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
