cask "fred" do
  version "0.0.45"
  sha256 "dc778b4230fa9e6248e3249ea43cc69cee6737626aaf4e9f5e299575c774d854"

  url "https://github.com/lingrino/fred/releases/download/v#{version}/Fred-#{version}.zip"
  name "Fred"
  desc "Launcher and clipboard manager"
  homepage "https://github.com/lingrino/fred"

  depends_on arch: :arm64

  app "Fred.app"

  zap trash: "~/Library/Application Support/Fred"
end
