cask "stockdock" do
  version "1.5.1"
  sha256 "8a662795153181c593e8614556336f64be2ea0dfcf0b07e304dffdf0992d56f5"

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
