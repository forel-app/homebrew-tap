cask "forel" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "926166504d0c5a4b4aeaa6d8876d0bd30110b994792b349ce9333e66c0b11f31",
         intel: "75b6787b947d8c59174eba0f68cd05f58baaf04c715ab268d8b0337d022fb691"

  url "https://github.com/lab421/forel/releases/download/v#{version}/Forel-v#{version}-darwin-#{arch}.dmg"
  name "Forel"
  desc "File-automation app that watches folders and runs rules"
  homepage "https://github.com/lab421/forel"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+\.\d+\.\d+(?:-(?:alpha|beta|rc)\.\d+)?)$/i)
  end

  depends_on macos: :sonoma

  app "Forel.app"

  zap trash: [
    "~/Library/Application Support/com.lab421.forel",
    "~/Library/Caches/com.lab421.forel",
    "~/Library/Application Support/com.forel.app",
    "~/Library/Caches/com.forel.app",
  ]
end
