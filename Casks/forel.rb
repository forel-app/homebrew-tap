cask "forel" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.0-beta.5"
  sha256 arm:   "5171adfdd2abe9bbffa257fa82cdca5016593d7c2d7a16c15c49bb04d09c2c56",
         intel: "4e234790f8e2d52b340b6a22b1107a8e5eb6b256167c13aacc5c47601f44aa8e"

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
    "~/Library/Application Support/com.forel.app",
    "~/Library/Caches/com.forel.app",
  ]
end
