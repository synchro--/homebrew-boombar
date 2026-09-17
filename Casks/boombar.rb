cask "boombar" do
  version "1.0.0"
  sha256 "1e1a0ba0297f1c11ed57ce8ce259175c5c4a543f55c9bae7a2bccb5ddad2f3f5"

  url "https://github.com/synchro--/boombar/releases/download/v#{version}/BoomBar-#{version}.dmg"
  name "Boom Bar"
  desc "Menu-bar control for Ultimate Ears BOOM-family speakers"
  homepage "https://github.com/synchro--/boombar"

  depends_on macos: :ventura

  app "BoomBar.app"

  zap trash: "~/Library/Preferences/com.synchro.boombar.plist"

  caveats <<~EOS
    Boom Bar is ad-hoc signed and not notarized, so macOS Gatekeeper blocks the
    first launch. Open it via System Settings > Privacy & Security > "Open
    Anyway", or clear the quarantine flag:

      xattr -dr com.apple.quarantine "#{appdir}/BoomBar.app"

    For a warning-free install, use the installer script instead:

      curl -fsSL https://raw.githubusercontent.com/synchro--/boombar/main/install.sh | bash
  EOS
end
