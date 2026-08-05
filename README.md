# Homebrew Tap

Homebrew tap for [StockDock](https://github.com/simonsruggi/StockDock) — a free, open-source macOS menu bar app for tracking stocks, ETFs, indices, crypto, and portfolio P&L in real time.

## Install

```bash
brew install --cask simonsruggi/tap/stockdock
```

Or add the tap first, then install:

```bash
brew tap simonsruggi/tap
brew install --cask stockdock
```

## Update

```bash
brew update && brew upgrade --cask stockdock
```

StockDock also updates itself in place, so you generally won't need this.

## Uninstall

```bash
brew uninstall --cask stockdock
```

To remove leftover preferences and caches as well:

```bash
brew uninstall --zap --cask stockdock
```

## Requirements

macOS 14 (Sonoma) or later.

## Casks

| Cask | Description |
|---|---|
| [`stockdock`](Casks/stockdock.rb) | Menu bar app to track stocks, ETFs, crypto and portfolio P&L |

## Issues

Problems with the app itself go to the [StockDock issue tracker](https://github.com/simonsruggi/StockDock/issues). Open an issue here only if the tap or the cask formula is broken.

## License

[MIT](LICENSE)

---

homebrew-tap is free and open source. If you find it useful, please [⭐️ star the repo](https://github.com/simonsruggi/homebrew-tap) — and if you'd like to support my open-source work, you can [💛 sponsor me on GitHub](https://github.com/sponsors/simonsruggi) or [☕️ buy me a coffee](https://buymeacoffee.com/simonsruggi). Completely optional, always appreciated. 🙏
