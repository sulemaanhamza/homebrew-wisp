# homebrew-wisp

Homebrew tap for [Wisp](https://github.com/sulemaanhamza/wisp) — a dead-simple macOS scratchpad.

## Install

```sh
brew tap sulemaanhamza/wisp
brew install --cask wisp
```

That's it. ⌥Space anywhere on macOS to summon the panel, type, Esc to dismiss.

## Update

```sh
brew upgrade --cask wisp
```

When a new Wisp release is published, this tap is bumped and `brew upgrade` will pick it up.

## Uninstall

```sh
brew uninstall --cask wisp
```

To also remove your saved scratchpad text and preferences:

```sh
brew uninstall --cask --zap wisp
```

## Why a personal tap?

The official `homebrew-cask` repo doesn't accept unsigned apps from new submitters, and Wisp isn't notarized (no Apple Developer ID). A personal tap sidesteps that — `brew` downloads via curl rather than a browser, so it doesn't apply the Gatekeeper quarantine attribute. The app launches normally with no "cannot verify malware" dialog.

## License

MIT — see the [main repo](https://github.com/sulemaanhamza/wisp/blob/main/LICENSE).
