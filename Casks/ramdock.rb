cask "ramdock" do
  version "1.0.0"
  sha256 "575ffb5c66cf71e722ca658f10647a4f5e6be66f5d3f0ffa0448773c2182e011"

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
