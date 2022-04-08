# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vaku < Formula
  desc "CLI that extends the official Vault client."
  homepage "https://vaku.dev/"
  version "2.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lingrino/vaku/releases/download/v2.5.0/vaku_2.5.0_mac_arm64.zip"
      sha256 "61cada2ca42bf5f8d634e694abbea8aa02721205371a6b41da48caa42e9fb8d3"

      def install
        bin.install "vaku"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lingrino/vaku/releases/download/v2.5.0/vaku_2.5.0_mac_x86_64.zip"
      sha256 "07dd7662180f2cadf18fc267eff9810eb5920de51bbcb937a2903cb333f148db"

      def install
        bin.install "vaku"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lingrino/vaku/releases/download/v2.5.0/vaku_2.5.0_linux_x86_64.zip"
      sha256 "8ace8a8caa931c6e166653077619ab9a2a0b7ac836cb13180254495a700bfdca"

      def install
        bin.install "vaku"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lingrino/vaku/releases/download/v2.5.0/vaku_2.5.0_linux_arm64.zip"
      sha256 "c67b0a4c99f9cf750e9f8575dc698f021173ba0f745d174b1a8616c52db52908"

      def install
        bin.install "vaku"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lingrino/vaku/releases/download/v2.5.0/vaku_2.5.0_linux_armv6.zip"
      sha256 "5da1bddbdad68f75a7772a05e4d8921b0064913af07c2d485db699a0041a3c6c"

      def install
        bin.install "vaku"
      end
    end
  end

  test do
    system "#{bin}/vaku version"
  end
end
