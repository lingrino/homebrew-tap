cask "autotouch" do
  version "0.0.9"
  sha256 "6342917bc1c3960dd7b1f55b846c4561913f58414ebcbd5a6db6c2c0251dcd85"

  url "https://github.com/lingrino/autotouch/releases/download/v#{version}/Autotouch-#{version}.zip"
  name "Autotouch"
  desc "Three-finger trackpad swipes: open Chrome, hide the app under the pointer"
  homepage "https://github.com/lingrino/autotouch"

  depends_on arch: :arm64

  app "Autotouch.app"

  zap launchctl: "com.lingrino.autotouch.agent"
end
