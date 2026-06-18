# homebrew-tap

Homebrew tap for [DockIntercept](https://github.com/MR-MANDELBROT/DockIntercept) and other apps by Maximilian Marquart.

## Install

```bash
brew tap MR-MANDELBROT/tap && brew trust MR-MANDELBROT/tap && brew install --cask dockintercept
```

Homebrew 6.0+ requires third-party taps to be explicitly trusted once (a security
feature, since June 2026), hence the `brew trust` step. After that, installs and
upgrades work normally.

## Update / Uninstall

```bash
brew upgrade --cask dockintercept
brew uninstall --cask dockintercept   # add --zap to also remove preferences
```
