cask "prlauncher" do
  version "1.0.1"
  sha256 "fe3bf1131fdfa105b4b1de8bd9c6138a0d8a5382d969c0c6659bf293d112b772"

  url "https://github.com/tshenin/homebrew-tap/releases/download/v#{version}/PRLauncher-#{version}.dmg"
  name "PRLauncher"
  desc "Menu bar app for browsing and launching GitHub pull requests"
  homepage "https://github.com/tshenin/homebrew-tap"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :ventura"

  app "PRLauncher.app"

  zap trash: [
    "~/Library/Preferences/com.prlauncher.app.plist",
    "~/Library/Application Support/PRLauncher",
    "~/Library/Caches/com.prlauncher.app",
    "~/Library/Saved Application State/com.prlauncher.app.savedState",
  ]
end
