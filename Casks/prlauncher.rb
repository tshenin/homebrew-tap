cask "prlauncher" do
  version "1.1.1"
  sha256 "71ce2c34fc1029e6afe686e249b6601afc1ea019943548c9b27b07de4e7e5f9d"

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

  caveats <<~EOS
    PRLauncher is not signed with an Apple Developer ID. On first launch
    macOS will block the app. To allow it:

      1. Open System Settings -> Privacy & Security
      2. Scroll down and click "Open Anyway" next to PRLauncher
      3. Authenticate when prompted

    Or, from the terminal:

      xattr -dr com.apple.quarantine /Applications/PRLauncher.app
  EOS

  zap trash: [
    "~/Library/Preferences/com.prlauncher.app.plist",
    "~/Library/Application Support/PRLauncher",
    "~/Library/Caches/com.prlauncher.app",
    "~/Library/Saved Application State/com.prlauncher.app.savedState",
  ]
end
