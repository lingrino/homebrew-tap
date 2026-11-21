cask "fred" do
  version "0.0.49"
  sha256 "65768987b298f8650f69d69d09feacfded2b1a2bb7cd1680c979e530e47d32ac"

  url "https://github.com/lingrino/fred/releases/download/v#{version}/Fred-#{version}.zip"
  name "Fred"
  desc "Launcher and clipboard manager"
  homepage "https://github.com/lingrino/fred"

  depends_on arch: :arm64

  app "Fred.app"

  zap trash: "~/Library/Application Support/Fred"
end
