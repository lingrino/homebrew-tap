# This file was generated by GoReleaser. DO NOT EDIT.
class Cami < Formula
  desc "A CLI for cleaning up unused AWS AMIs."
  homepage "https://lingrino.com/"
  version "1.0.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lingrino/cami/releases/download/v1.0.4/cami_1.0.4_mac_x86_64.zip"
    sha256 "079ade675eeca4c4b5c28e7109d6ea0051e76040cc3bf84f6bf4b44944194758"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lingrino/cami/releases/download/v1.0.4/cami_1.0.4_linux_x86_64.zip"
      sha256 "19e4d7a4d90d22a4b232501ddf15e1a3342603413efa4a405b59f2ef5d35df9a"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/lingrino/cami/releases/download/v1.0.4/cami_1.0.4_linux_arm64.zip"
        sha256 "aed81cd37560be6adf4f9e00a8c5f341dba0270d9ddd2e0b29dc2dd923f2ca6c"
      else
        url "https://github.com/lingrino/cami/releases/download/v1.0.4/cami_1.0.4_linux_armv6.zip"
        sha256 "a3d84c990d770c719b5c40488e617b56f712502f6abd320022fa2652c0274777"
      end
    end
  end

  def install
    bin.install "cami"
  end

  test do
    system "#{bin}/cami version"
  end
end
