cask "peep" do
  version "0.0.76"
  sha256 "21588409189cc028e8dd12217d986bfc2a4bfc744e060632e2822be7c73e7710"

  url "https://github.com/lingrino/peep/releases/download/v#{version}/Peep-#{version}.zip"
  name "Peep"
  desc "Quick Look previews for source code and Markdown"
  homepage "https://github.com/lingrino/peep"

  depends_on arch: :arm64

  app "Peep.app"

  zap launchctl: "com.lingrino.peep.agent"
end
