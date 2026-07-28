cask "lid-awake" do
  version "0.1.6"
  sha256 "fd02d145015b5df26c5ca7364c748e603b5b77f7a992ded9d55716b60bdc506f"

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
