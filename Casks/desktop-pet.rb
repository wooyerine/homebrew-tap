cask "desktop-pet" do
  version "2.1.2"
  sha256 "bafa8bc762e66e599cb61388d12b8de5153e2503e788b4a4d61ea825894fd9d1"

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
