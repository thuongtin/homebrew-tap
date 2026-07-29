cask "lid-awake" do
  version "0.1.7"
  sha256 "50088449ef6768c4c0aab7960b3376903db5374394052689a83ddf95b1bebbfd"

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
