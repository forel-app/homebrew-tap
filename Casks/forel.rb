cask "forel" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0-beta.4"
  sha256 arm:   "7a4488ed85a9056e736214f0e4dcb50d8e09d6abba55411aee6c83150c78b37d",
         intel: "01a25f173765496fbb4d99a661678d147470a5c53c2d51448852d25b871d7266"

  url "https://github.com/forel-app/forel/releases/download/v#{version}/Forel-v#{version}-darwin-#{arch}.dmg"
  name "Forel"
  desc "File-automation app that watches folders and runs rules"
  homepage "https://github.com/forel-app/forel"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+\.\d+\.\d+(?:-(?:alpha|beta|rc)\.\d+)?)$/i)
  end

  depends_on macos: :sonoma

  app "Forel.app"

  zap trash: [
    "~/Library/Application Support/com.forel.app",
    "~/Library/Caches/com.forel.app",
  ]
end
