cask "fred" do
  version "0.0.46"
  sha256 "45a09e21b6694d73655be34ff0b0dd5b7d05f9567a3b6eea3ff0684ad7116a10"

  url "https://github.com/lingrino/fred/releases/download/v#{version}/Fred-#{version}.zip"
  name "Fred"
  desc "Launcher and clipboard manager"
  homepage "https://github.com/lingrino/fred"

  depends_on arch: :arm64

  app "Fred.app"

  zap trash: "~/Library/Application Support/Fred"
end
