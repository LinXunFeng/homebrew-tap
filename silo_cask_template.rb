cask "silo" do
  version "{{ version }}"
  sha256 "{{ sha256_app }}"

  url "https://github.com/LinXunFeng/silo/releases/download/v#{version}/Silo-#{version}-macOS.dmg"
  name "Silo"
  desc "Local model library - download once, link everywhere"
  homepage "https://github.com/LinXunFeng/silo"

  depends_on macos: :monterey

  app "Silo.app"

  # The build is neither signed nor notarised, so Gatekeeper blocks the first
  # launch until the quarantine attribute is stripped.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Silo.app"]
  end

  # ~/.silo holds the blob store, which the CLI shares - leave it alone.
  zap trash: [
    "~/Library/Preferences/com.lizardkits.siloApp.plist",
    "~/Library/Saved Application State/com.lizardkits.siloApp.savedState",
  ]
end
