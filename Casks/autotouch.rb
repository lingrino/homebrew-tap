cask "autotouch" do
  version "0.0.8"
  sha256 "575c8aa4d70123e68c73bba84f2793d692a2187a9504d867d630fa975a3fc9a5"

  url "https://github.com/lingrino/autotouch/releases/download/v#{version}/Autotouch-#{version}.zip"
  name "Autotouch"
  desc "Three-finger trackpad swipes: open Chrome, hide the app under the pointer"
  homepage "https://github.com/lingrino/autotouch"

  depends_on arch: :arm64

  app "Autotouch.app"

  zap launchctl: "com.lingrino.autotouch.agent"
end
