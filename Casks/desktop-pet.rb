cask "desktop-pet" do
  version "2.1.3"
  sha256 "79a5fd14eb33e531ff8e9385248f0b92db2bb019d830a7160475e77a3e7e4e9c"

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
