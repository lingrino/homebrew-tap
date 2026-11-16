cask "fred" do
  version "0.0.41"
  sha256 "08d2b40b1fe29e72abd90252b37e072acdf13156cc77fa2148b5ea76476cd989"

  url "https://github.com/lingrino/fred/releases/download/v#{version}/Fred-#{version}.zip"
  name "Fred"
  desc "Launcher and clipboard manager"
  homepage "https://github.com/lingrino/fred"

  depends_on arch: :arm64

  app "Fred.app"

  zap trash: "~/Library/Application Support/Fred"
end
