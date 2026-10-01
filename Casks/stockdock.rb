cask "stockdock" do
  version "1.9.20"
  sha256 "0f5ab38895e85a0af778c345d7d354c1e8b4d40b7d839973187a11706ce8e57b"

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
