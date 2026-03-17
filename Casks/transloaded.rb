cask "transloaded" do
  version "1.1.0"
  sha256 "9058d6218268f838398bd43dadc6a54669b3f186b745a71f05227e1256ad8833"

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
