cask "peep" do
  version "0.0.77"
  sha256 "eeab7ce78416c19791bbf073cf7c96cf7a6ce5375062cef6fd5e90a8c2841f80"

  url "https://github.com/lingrino/peep/releases/download/v#{version}/Peep-#{version}.zip"
  name "Peep"
  desc "Quick Look previews for source code and Markdown"
  homepage "https://github.com/lingrino/peep"

  depends_on arch: :arm64

  app "Peep.app"

  zap launchctl: "com.lingrino.peep.agent"
end
