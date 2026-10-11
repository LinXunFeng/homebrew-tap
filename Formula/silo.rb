class Silo < Formula
  desc "Local model library CLI - download once, link everywhere"
  homepage "https://github.com/LinXunFeng/silo"
  version "0.1.1"
  license "Apache-2.0"

  depends_on :macos

  # dart compile exe only emits the host architecture and its output cannot be
  # lipo'd into a universal binary, so each arch ships its own tarball. The
  # version stanza above stays explicit even though brew could scan it out of
  # the filename: the urls interpolate it, and a bare on_macos formula has no
  # url at all to scan from elsewhere.
  on_macos do
    on_arm do
      url "https://github.com/LinXunFeng/silo/releases/download/v#{version}/silo-#{version}-macos-arm64.tar.gz"
      sha256 "770c15164c41d989b9127b7248de1c934086f432655350ff98389d1df9feaaf3"
    end

    on_intel do
      url "https://github.com/LinXunFeng/silo/releases/download/v#{version}/silo-#{version}-macos-x86_64.tar.gz"
      sha256 "dde43c7e8b223d86cd2f5dafbfc30ef9f4b5b0d8d9e058884aba39554351b83a"
    end
  end

  def install
    bin.install "silo"
  end

  test do
    system "#{bin}/silo", "--help"
  end
end
