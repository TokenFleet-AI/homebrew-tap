class Tokenless < Formula
  desc "LLM token optimization toolkit — schema/response compression, command rewriting"
  homepage "https://github.com/TokenFleet-AI/tokenless"
  license "Apache-2.0"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/TokenFleet-AI/tokenless/releases/download/v1.0.0/tokenless-aarch64-apple-darwin.tar.gz"
      sha256 "dc019291023fd828f87ea11b1c9a776caf3bd9026e62fb8347ce11d424e9c29e"
    end
    on_intel do
      url "https://github.com/TokenFleet-AI/tokenless/releases/download/v1.0.0/tokenless-x86_64-apple-darwin.tar.gz"
      sha256 "48f4c2f08585c4dd4e99fa632d1aa22b85a1e4cdddc498e089300ad4c12e72a1"
    end
  end

  on_linux do
    url "https://github.com/TokenFleet-AI/tokenless/releases/download/v1.0.0/tokenless-x86_64-unknown-linux-musl.tar.gz"
    sha256 "f210d9dc87fa3f78363153b89a816c254c6a8e4916fa0344c9b73f881ba57e8a"
  end

  def install
    bin.install "tokenless"
  end

  test do
    system "#{bin}/tokenless", "--version"
  end
end
