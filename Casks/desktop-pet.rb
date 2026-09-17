cask "desktop-pet" do
  version "2.2.1"
  sha256 "f5f86e67ca21d9cf0c8b3ad1333b16f32301a6d4714a99b21faee578059e062c"

  url "https://github.com/wooyerine/desktop-pet/releases/download/v#{version}/desktop-pet-#{version}-arm64.dmg"
  name "Desktop Pet"
  desc "Pixel desktop pet that works alongside you"
  homepage "https://github.com/wooyerine/desktop-pet"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself from GitHub Releases; let brew leave it alone.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "Desktop Pet.app"

  zap trash: [
    "~/Library/Application Support/desktop-pet",
    "~/Library/Preferences/com.wooyerine.desktop-pet.plist",
  ]
end
