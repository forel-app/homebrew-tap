cask "forel" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "c65c758400aeadb484419019ccfabc0d120dac8549733f4f07da1fc9666db6f6",
         intel: "9ad00161796bda40c7c8332746ea0189895b1eb122030d0870993194d395db23"

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
