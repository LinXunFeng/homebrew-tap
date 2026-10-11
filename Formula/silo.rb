class Silo < Formula
  desc "Local model library CLI - download once, link everywhere"
  homepage "https://github.com/LinXunFeng/silo"
  version "0.1.2"
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
      sha256 "7fe78abfefdb856b227cfad5d801eb1ea0d502ceda6ebcff53854ae915e2208f"
    end

    on_intel do
      url "https://github.com/LinXunFeng/silo/releases/download/v#{version}/silo-#{version}-macos-x86_64.tar.gz"
      sha256 "9c8669d0cc5aa68247cd6d4687e0566626da631b7fad77045b7b69f8776e72ed"
    end
  end

  def install
    bin.install "silo"
  end

  test do
    system "#{bin}/silo", "--help"
  end
end
