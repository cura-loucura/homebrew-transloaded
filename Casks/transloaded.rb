cask "transloaded" do
  version "1.1.1"
  sha256 "c8dc3cea0d6df51190f663f804a1c950a2c91db7ce45607553ac66a7087ee767"

  url "https://github.com/cura-loucura/homebrew-transloaded/releases/download/v#{version}/Transloaded-#{version}.dmg"
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
