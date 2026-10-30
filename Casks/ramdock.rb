cask "ramdock" do
  version "1.1.0"
  sha256 "704dc2ad3699439f619c1c34ac14adca5c07b8d7db7c2eb966b44fc45b730804"

  url "https://github.com/simonsruggi/RamDock/releases/download/v#{version}/RamDock.zip"
  name "RamDock"
  desc "Featherweight RAM and CPU monitor for the menu bar with a process killer"
  homepage "https://github.com/simonsruggi/RamDock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "RamDock.app"

  uninstall quit: "com.simone.ramdock"

  zap trash: [
    "~/Library/Caches/com.simone.ramdock",
    "~/Library/HTTPStorages/com.simone.ramdock",
    "~/Library/Preferences/com.simone.ramdock.plist",
  ]
end
