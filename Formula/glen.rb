# This file was generated by GoReleaser. DO NOT EDIT.
class Glen < Formula
  desc "A CLI to export GitLab project and group variables"
  homepage ""
  version "1.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lingrino/glen/releases/download/v1.1.2/glen_1.1.2_Darwin_x86_64.tar.gz"
    sha256 "91f309d4fac9b22ad8c74548f05f2cff95fff4821877c8749671a2f7a970b7a0"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lingrino/glen/releases/download/v1.1.2/glen_1.1.2_Linux_x86_64.tar.gz"
      sha256 "39995d47618fe2be1a6e474f45cc990f1f909acc5fa35eaa5de82a9f597edc99"
    end
  end

  def install
    bin.install "glen"
  end

  test do
    system "#{bin}/glen version"
  end
end
