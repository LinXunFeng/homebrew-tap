class Condor < Formula
  version "v0.0.4"
  desc "LinXunFeng的脚本工具集"
  homepage "https://github.com/LinXunFeng/condor"

  url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor-macos.tar.gz"
  sha256 "01f14f1a10e536967e88e41c956911fcaf4a2872c9d9c650c0c8a962ed3bea9d"

  def install
    bin.install "condor"
  end

  test do
    system "#{bin}/condor", "-h"
  end
end