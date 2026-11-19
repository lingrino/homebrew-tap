cask "fred" do
  version "0.0.47"
  sha256 "9b01f4579c109c758c86b04f072aa77e4b4829d2c7959c69ff59a098da662900"

  url "https://github.com/lingrino/fred/releases/download/v#{version}/Fred-#{version}.zip"
  name "Fred"
  desc "Launcher and clipboard manager"
  homepage "https://github.com/lingrino/fred"

  depends_on arch: :arm64

  app "Fred.app"

  zap trash: "~/Library/Application Support/Fred"
end
