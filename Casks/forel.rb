cask "forel" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0-alpha.8"
  sha256 arm:   "00d2f0dd9145d00aa20ec72ffde99af3a8bd518f5fdb86e87d4d8ee735c8a8c5",
         intel: "ac0848c9cab9ede609df8f65e7829570a656959fbba3e81520318ae3d69e851e"

  url "https://github.com/forel-app/forel/releases/download/v0.1.0-alpha.8/Forel-v0.1.0-alpha.8-darwin-#{arch}.dmg"
  name "Forel"
  desc "macOS file-automation app that watches folders and runs rules"
  homepage "https://github.com/forel-app/forel"

  app "Forel.app"

  zap trash: [
    "~/Library/Application Support/com.forel.app",
    "~/Library/Caches/com.forel.app",
  ]
end
