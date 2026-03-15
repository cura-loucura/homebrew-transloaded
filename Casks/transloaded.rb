cask "transloaded" do
  version "1.0.0"
  sha256 "9f25ccf387735a02997794a80b07531186c76c27ec1a8699dea6f26685b9413e"

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
