cask "remotetv" do
  version "0.0.20"
  sha256 "2b04a5360bd6353f836ec8dc1d268439ed2a7694562386d6567022b1fc364e54"

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
