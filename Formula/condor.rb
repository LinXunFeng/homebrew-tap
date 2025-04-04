class Condor < Formula
  version "v0.1.0"
  desc "LinXunFeng的脚本工具集"
  homepage "https://github.com/LinXunFeng/condor"

  url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor-macos.tar.gz"
  sha256 "04d8b365eea919b9a373d9f6e6c5905c7fb99bbbff28937e19d4ed0d20191e4b"

  def install
    bin.install "condor"
  end

  test do
    system "#{bin}/condor", "-h"
  end
end