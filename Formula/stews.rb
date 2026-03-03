class Stews < Formula
  desc "Structured Text Editor With Swag"
  homepage "https://github.com/lubomirmolin/stews"
  url "https://github.com/lubomirmolin/stews/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "fd08d2a4d880371471b90f010ce36eb17727118d442111514a5e28390b5850a1"
  license "MIT"
  version "0.0.4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    system "#{bin}/stews", "--version"
  end
end
