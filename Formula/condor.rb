class Condor < Formula
  version "v0.0.6"
  desc "LinXunFeng的脚本工具集"
  homepage "https://github.com/LinXunFeng/condor"

  url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor-macos.tar.gz"
  sha256 "3282c03843ed67882748b0296ca33ef079eff463051d27514de8cccba7832ecd"

  def install
    bin.install "condor"
  end

  test do
    system "#{bin}/condor", "-h"
  end
end