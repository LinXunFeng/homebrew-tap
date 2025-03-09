class Condor < Formula
  version "{{ version }}"
  desc "LinXunFeng的脚本工具集"
  homepage "https://github.com/LinXunFeng/condor"

  url "https://github.com/LinXunFeng/condor/releases/download/#{version}/condor-macos.tar.gz"
  sha256 "{{ sha256_macos }}"

  def install
    bin.install "condor"
  end

  test do
    system "#{bin}/condor", "-h"
  end
end