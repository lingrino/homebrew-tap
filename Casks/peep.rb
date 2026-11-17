cask "peep" do
  version "0.0.73"
  sha256 "24050a32a737b08da60f9fd0a5f46f008bff6066381dabd53e22b815c5e922f9"

  url "https://github.com/lingrino/peep/releases/download/v#{version}/Peep-#{version}.zip"
  name "Peep"
  desc "Quick Look previews for source code and Markdown"
  homepage "https://github.com/lingrino/peep"

  depends_on arch: :arm64

  app "Peep.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-d", "-r", "com.apple.quarantine", "{{appdir}}/Peep.app"]
  end

  zap launchctl: "com.lingrino.peep.agent"
end
