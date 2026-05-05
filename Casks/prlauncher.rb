cask "prlauncher" do
  version "1.0.0"
  sha256 "fbb1795cdac82e2c702cced51172e1bea83e7e616c68c13b1305651818282da9"

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
