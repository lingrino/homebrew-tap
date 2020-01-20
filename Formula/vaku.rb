# This file was generated by GoReleaser. DO NOT EDIT.
class Vaku < Formula
  desc "A CLI and Go API to extend the official Vault client"
  homepage "https://vaku.dev/"
  version "1.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lingrino/vaku/releases/download/v1.4.1/vaku_1.4.1_Darwin_x86_64.tar.gz"
    sha256 "bbb255c1f8eb590baeb5ba54a704d03e03aad8602b80baf1c511635d82cddfd7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lingrino/vaku/releases/download/v1.4.1/vaku_1.4.1_Linux_x86_64.tar.gz"
      sha256 "753bbafb005d4ad0023be7261060508b8710e032e08508e368162d36c231d303"
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
