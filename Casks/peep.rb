cask "peep" do
  version "0.0.74"
  sha256 "2431b105a6c51a6bcd816378b8d1f6a598abbb6f412169e1c4e257ce705c662d"

  url "https://github.com/lingrino/peep/releases/download/v#{version}/Peep-#{version}.zip"
  name "Peep"
  desc "Quick Look previews for source code and Markdown"
  homepage "https://github.com/lingrino/peep"

  depends_on arch: :arm64

  app "Peep.app"

  zap launchctl: "com.lingrino.peep.agent"
end
