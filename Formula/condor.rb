class Condor < Formula
  version "v0.0.5"
  desc "LinXunFeng的脚本工具集"
  homepage "https://github.com/LinXunFeng/condor"

  url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor-macos.tar.gz"
  sha256 "ac640683dcc49cef5d63b98ff07800aa6b43c92b6b193acf6ff8ee911ad18858"

  def install
    bin.install "condor"
  end

  test do
    system "#{bin}/condor", "-h"
  end
end