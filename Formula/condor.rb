class Condor < Formula
  version "v0.1.2"
  desc "LinXunFeng的脚本工具集"
  homepage "https://github.com/LinXunFeng/condor"

  url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor-macos.tar.gz"
  sha256 "12f872a742b08c14bc24b35364772ecea7200e49e7c001829add66d8430482f4"

  def install
    bin.install "condor"
  end

  test do
    system "#{bin}/condor", "-h"
  end
end