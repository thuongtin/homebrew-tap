cask "lid-awake" do
  version "0.1.9"
  sha256 "8cf4f013b6a18185c759ac8262e8bbcbdb2b0e7ab2afe3c4f67691fa48de9baa"

  url "https://github.com/thuongtin/lid-awake/releases/download/v#{version}/LidAwake-#{version}-macos.dmg"
  name "Lid Awake"
  desc "Menu bar utility for wake and closed-lid controls"
  homepage "https://github.com/thuongtin/lid-awake"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "LidAwake.app"

  auto_updates true

  zap trash: [
    "~/Library/Preferences/com.thuongtin.LidAwake.plist",
  ]
end
