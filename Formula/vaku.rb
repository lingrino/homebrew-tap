# This file was generated by GoReleaser. DO NOT EDIT.
class Vaku < Formula
  desc "A CLI and Go API to extend the official Vault client"
  homepage "https://vaku.io/"
  version "1.2.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lingrino/vaku/releases/download/v1.2.0/vaku_1.2.0_Darwin_x86_64.tar.gz"
    sha256 "6467334520250162df7e78b231e261ed9604c307b4acabeea7c64340482d0f6d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lingrino/vaku/releases/download/v1.2.0/vaku_1.2.0_Linux_x86_64.tar.gz"
      sha256 "19dc20f1b3c48562aee65d542b837d8060ccfa8312999c6d4c6ae61577522158"
    end
  end
  
  depends_on "vault"

  def install
    bin.install "vaku"
  end

  test do
    system "#{bin}/vaku version"
  end
end
