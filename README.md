# homebrew-boombar

Homebrew tap for [Boom Bar](https://github.com/synchro--/boombar), a macOS
menu-bar app that controls Ultimate Ears BOOM-family speakers.

## Install

```bash
brew tap synchro--/boombar
brew trust synchro--/boombar
brew install --cask boombar
```

`brew trust` is required because this is a third-party tap (Homebrew 7 refuses
to load casks from untrusted taps).

Boom Bar is ad-hoc signed and not notarized, so macOS Gatekeeper blocks the
first launch. Either allow it in **System Settings → Privacy & Security →
Open Anyway**, or clear the quarantine flag:

```bash
xattr -dr com.apple.quarantine "/Applications/BoomBar.app"
```

For a warning-free install that skips the quarantine step, use the installer
script in the main repo instead:

```bash
curl -fsSL https://raw.githubusercontent.com/synchro--/boombar/main/install.sh | bash
```

## Uninstall

```bash
brew uninstall --cask boombar
brew untap synchro--/boombar
```

To also remove preferences:

```bash
brew uninstall --cask --zap boombar
```
