# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vaku < Formula
  desc "CLI that extends the official Vault client."
  homepage "https://vaku.dev/"
  version "2.4.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lingrino/vaku/releases/download/v2.4.5/vaku_2.4.5_mac_x86_64.zip"
      sha256 "d472a1724eff6ee8722f80a3a749a06d11ed0570f5fa9be72ca4a1e9a1fa77d7"

      def install
        bin.install "vaku"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/lingrino/vaku/releases/download/v2.4.5/vaku_2.4.5_mac_arm64.zip"
      sha256 "431a4c81a61188a3941a08ad7b6c9eff0da303fe73219f1d50efaec98590aa56"

      def install
        bin.install "vaku"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lingrino/vaku/releases/download/v2.4.5/vaku_2.4.5_linux_arm64.zip"
      sha256 "c0c67597e0723114157c634d6e59b621e4f41e66be44693c76653001291420c4"

      def install
        bin.install "vaku"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/lingrino/vaku/releases/download/v2.4.5/vaku_2.4.5_linux_armv6.zip"
      sha256 "0f37a57e5688f4036279150d51b4c29bed596e2a4035c02a67a2699d48c0d6bb"

      def install
        bin.install "vaku"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lingrino/vaku/releases/download/v2.4.5/vaku_2.4.5_linux_x86_64.zip"
      sha256 "4b8665264c2a09b9c82b75a7b38699600afd1f99fa1d1eff386849c4d7012ba4"

      def install
        bin.install "vaku"
      end
    end
  end

  test do
    system "#{bin}/vaku version"
  end
end
