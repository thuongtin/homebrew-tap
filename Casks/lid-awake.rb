cask "lid-awake" do
  version "0.1.5"
  sha256 "859c9d6004879bb41cbd0d57a88a303e674e333dff9568c0710f63a0e6961986"

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
