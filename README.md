# homebrew-wisp

Homebrew tap for [Wisp](https://github.com/sulemaanhamza/wisp) — a dead-simple macOS scratchpad.

## Install

```sh
brew tap sulemaanhamza/wisp
brew install --cask wisp
xattr -d com.apple.quarantine /Applications/Wisp.app
```

The third line matters. Wisp is unsigned (no Apple Developer ID), and Homebrew applies macOS's quarantine attribute by default to cask installs — without removing it, Gatekeeper refuses to launch the app with a "cannot be verified" warning. The `xattr` command strips that attribute. (Homebrew used to support `--no-quarantine` for this; it's been disabled in recent versions.)

After that, ⌥Space anywhere on macOS to summon the panel, type, Esc to dismiss.

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

The official `homebrew-cask` repo doesn't accept unsigned apps from new submitters. A personal tap is the standard alternative for free / open-source apps that don't have an Apple Developer ID. The `--no-quarantine` flag at install time is what makes the install actually work without a Gatekeeper warning.

## License

MIT — see the [main repo](https://github.com/sulemaanhamza/wisp/blob/main/LICENSE).
