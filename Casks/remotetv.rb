cask "remotetv" do
  version "0.0.19"
  sha256 "c07dc233d56139097f3bea182a51d709077fe201480f73de52ed19f798fae6cb"

  url "https://github.com/lingrino/remotetv/releases/download/v#{version}/RemoteTV-#{version}.zip"
  name "RemoteTV"
  desc "Apple TV remote"
  homepage "https://github.com/lingrino/remotetv"

  depends_on arch: :arm64

  app "RemoteTV.app"

  zap trash: [
    "~/.local/bin/tvctl",
    "~/Library/Application Support/RemoteTV",
    "~/Library/Preferences/com.lingrino.remotetv.plist",
  ]
end
