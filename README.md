# homebrew-tap

Homebrew tap for [PRLauncher](https://github.com/tshenin/launcher).

## Install

```sh
brew install --cask tshenin/tap/prlauncher
```

The first command above is shorthand for:

```sh
brew tap tshenin/tap
brew install --cask prlauncher
```

## Update

```sh
brew update
brew upgrade --cask prlauncher
```

## Uninstall

```sh
brew uninstall --cask prlauncher
brew untap tshenin/tap
```

## Repository layout

This repo follows the standard Homebrew tap layout:

```
Casks/
  prlauncher.rb
```

The cask is updated automatically by the
[release workflow](https://github.com/tshenin/launcher/blob/main/.github/workflows/release.yml)
in the main PRLauncher repo whenever a new `v*` tag is pushed.
