cask "transloaded" do
  version "1.0.0"
  sha256 "f4a2f933e7ca8d225ca1fbfe22adc6ba77a7d1857ac240365288aa93124505c7"

  url "https://github.com/cura-loucura/Transloaded/releases/download/v#{version}/Transloaded-#{version}.dmg"
  name "Transloaded"
  desc "Native macOS file translation app using Apple's on-device Translation framework"
  homepage "https://anderson-santos.dev/app/Transloaded"

  depends_on macos: ">= :sequoia"

  app "Transloaded.app"

  zap trash: [
    "~/Library/Containers/dev.anderson-santos.transloaded-direct",
    "~/Library/Application Support/Transloaded",
    "~/Library/Preferences/dev.anderson-santos.transloaded-direct.plist",
  ]
end
