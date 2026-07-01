cask "lid-awake" do
  version "0.1.1"
  sha256 "5ad7a8827e16f9eda71752ba183bdebb89f5dc1e99978734b7350d6b42d6df25"

  url "https://github.com/thuongtin/lid-awake/releases/download/v#{version}/LidAwake-#{version}-macos.dmg"
  name "Lid Awake"
  desc "Menu bar utility for wake and closed-lid controls"
  homepage "https://github.com/thuongtin/lid-awake"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "LidAwake.app"

  zap trash: [
    "~/Library/Preferences/com.thuongtin.LidAwake.plist",
  ]
end
