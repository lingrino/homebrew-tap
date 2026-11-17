cask "fred" do
  version "0.0.44"
  sha256 "b25860df95d3b7470d78d40175bdb63f62fb5d711131a0d7e8495a3108b3558b"

  url "https://github.com/lingrino/fred/releases/download/v#{version}/Fred-#{version}.zip"
  name "Fred"
  desc "Launcher and clipboard manager"
  homepage "https://github.com/lingrino/fred"

  depends_on arch: :arm64

  app "Fred.app"

  zap trash: "~/Library/Application Support/Fred"
end
