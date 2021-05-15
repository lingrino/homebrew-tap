# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vaku < Formula
  desc "CLI that extends the official Vault client."
  homepage "https://vaku.dev/"
  version "2.2.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/lingrino/vaku/releases/download/v2.2.1/vaku_2.2.1_mac_x86_64.zip"
    sha256 "00cc32ef5d007e95d013475f196cc1b145578f7bb4a789fcdbb6d0fc6e79eb46"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/lingrino/vaku/releases/download/v2.2.1/vaku_2.2.1_mac_arm64.zip"
    sha256 "c06f3897ca5fa24939cb3c2c0014e73895ccdddd4bb5ca13928060846116e38d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/lingrino/vaku/releases/download/v2.2.1/vaku_2.2.1_linux_x86_64.zip"
    sha256 "fdf42b4641c6a0cda9c444b14f33bd12c232b3451e6839b24c77b799c96f2704"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/lingrino/vaku/releases/download/v2.2.1/vaku_2.2.1_linux_armv6.zip"
    sha256 "f53674f2f2ffe32965d31619a26768db2184c1a6d5a75cd6b5df29ae86745b66"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/lingrino/vaku/releases/download/v2.2.1/vaku_2.2.1_linux_arm64.zip"
    sha256 "dcf7ec69548b50edeed95819436bf2ecbd9c3304ab557f76e2e3591534b927cf"
  end

  def install
    bin.install "vaku"
  end

  test do
    system "#{bin}/vaku version"
  end
end
