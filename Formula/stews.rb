class Stews < Formula
  desc "Structured Text Editor With Swag"
  homepage "https://github.com/lubomirmolin/stews"
  url "https://github.com/lubomirmolin/stews/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "78b44a41292ff2f93cc1ebd667660ea0fbe70d3f5f6fd00ab4825a8988c38557"
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
