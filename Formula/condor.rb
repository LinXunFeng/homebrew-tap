class Condor < Formula
  version "v0.1.1"
  desc "LinXunFeng的脚本工具集"
  homepage "https://github.com/LinXunFeng/condor"

  url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor-macos.tar.gz"
  sha256 "f390944fe585f53fe5a6e017e46796a21707b85a0b8a5bce77521435a55fb5ce"

  def install
    bin.install "condor"
  end

  test do
    system "#{bin}/condor", "-h"
  end
end