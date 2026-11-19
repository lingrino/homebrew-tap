cask "fred" do
  version "0.0.48"
  sha256 "bec84c0d6ffba2d9d32c0e0edd6abdea03f48227237f8196a20bad8e77ebf7dd"

  url "https://github.com/lingrino/fred/releases/download/v#{version}/Fred-#{version}.zip"
  name "Fred"
  desc "Launcher and clipboard manager"
  homepage "https://github.com/lingrino/fred"

  depends_on arch: :arm64

  app "Fred.app"

  zap trash: "~/Library/Application Support/Fred"
end
