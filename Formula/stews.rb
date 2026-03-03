class Stews < Formula
  desc "Structured Text Editor With Swag"
  homepage "https://github.com/lubomirmolin/stews"
  url "https://github.com/lubomirmolin/stews/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"
  version "0.0.4"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
  end

  test do
    system "#{bin}/stews", "--version"
  end
end
