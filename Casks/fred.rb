cask "fred" do
  version "0.0.43"
  sha256 "3a1c7b57b21796a1469ba552dfc70738327d1a5886f16792c76d6d203dd9de42"

  url "https://github.com/lingrino/fred/releases/download/v#{version}/Fred-#{version}.zip"
  name "Fred"
  desc "Launcher and clipboard manager"
  homepage "https://github.com/lingrino/fred"

  depends_on arch: :arm64

  app "Fred.app"

  zap trash: "~/Library/Application Support/Fred"
end
