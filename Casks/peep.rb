cask "peep" do
  version "0.0.75"
  sha256 "812e831f4497007c5f429f6a3daa372fcf2eb87ff069a05f9b4baac50a8004ad"

  url "https://github.com/lingrino/peep/releases/download/v#{version}/Peep-#{version}.zip"
  name "Peep"
  desc "Quick Look previews for source code and Markdown"
  homepage "https://github.com/lingrino/peep"

  depends_on arch: :arm64

  app "Peep.app"

  zap launchctl: "com.lingrino.peep.agent"
end
