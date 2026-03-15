cask "transloaded" do
  version "1.0.0"
  sha256 "5647b96c5bb9d21d31e82e77ae23aeba2beff63594bf172400280bd1cca6622e"

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
