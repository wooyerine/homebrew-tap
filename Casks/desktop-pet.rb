cask "desktop-pet" do
  version "2.2.0"
  sha256 "af6e731a3463f497eb1484accafa4ea8c34ed98756789cba6494fc781b73114e"

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
