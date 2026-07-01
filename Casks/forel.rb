cask "forel" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.4"
  sha256 arm:   "896889be12ebf31572bfd5fad54699b865e2ebfe2e7c685116f13983771fe115",
         intel: "d7e1e1652a5946aaafd5e77e9ca9df257d1a5d6c65e0cee66dd8a0ac438cb782"

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
