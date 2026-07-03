cask "lid-awake" do
  version "0.1.4"
  sha256 "c39ea526dff13b274b9fb37d8e4bbf04c0ab4b563f6fb7d18d8de2ede47a796a"

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
