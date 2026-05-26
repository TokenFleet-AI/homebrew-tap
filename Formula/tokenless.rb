class Tokenless < Formula
  desc "LLM token optimization toolkit — schema/response compression, command rewriting"
  homepage "https://github.com/TokenFleet-AI/tokenless"
  url "https://github.com/TokenFleet-AI/tokenless/releases/download/v0.2.0/tokenless-aarch64-apple-darwin.tar.gz"
  sha256 "2aa8366ffb8b2215a8ba291e2aa178a40fbecf81c044d84fdc70a5b83ee7d8ab"
  license "Apache-2.0"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/TokenFleet-AI/tokenless/releases/download/v0.2.0/tokenless-aarch64-apple-darwin.tar.gz"
      sha256 "2aa8366ffb8b2215a8ba291e2aa178a40fbecf81c044d84fdc70a5b83ee7d8ab"
    end
    on_intel do
      url "https://github.com/TokenFleet-AI/tokenless/releases/download/v0.2.0/tokenless-x86_64-apple-darwin.tar.gz"
      sha256 "f14f1b99704335aa8faf51394b9537761580fc636df108c26e573b790ad406ef"
    end
  end

  def install
    bin.install "tokenless"
  end

  test do
    system "#{bin}/tokenless", "--version"
  end
end
