# Homebrew Tap for TokenFleet-AI

Homebrew formulae and casks for [TokenFleet-AI](https://github.com/TokenFleet-AI) tools.

[中文文档](README.zh.md)

## Quick Start

```bash
brew tap TokenFleet-AI/tap

# CLI tool
brew install tokenless

# Desktop app
brew install --cask token-fleet-switch
```

## Available Packages

### Formulae (CLI)

| Package | Description | Latest |
|---------|-------------|--------|
| `tokenless` | LLM token optimization toolkit — schema/response compression, command rewriting | 1.0.0 |

### Casks (Desktop Apps)

| Package | Description | Latest |
|---------|-------------|--------|
| `token-fleet-switch` | AI gateway control panel — manage providers, models, and API channel chains | 1.0.0 |

## Package Details

### `tokenless`

CLI tool for optimizing LLM token usage via schema compression, response compression, and command rewriting.

```bash
brew install tokenless
tokenless --help
```

Supports: macOS (arm64, x86_64), Linux (x86_64)

### `token-fleet-switch`

Desktop application for managing AI API gateway channels, models, and providers with real-time cost monitoring.

```bash
brew install --cask token-fleet-switch
```

Supports: macOS (arm64)

## Updating

Packages auto-update via `brew upgrade`:

```bash
brew update
brew upgrade tokenless
brew upgrade --cask token-fleet-switch
```

## Maintainers

### Update a Formula

1. Download the new checksums:
   ```bash
   curl -sL https://github.com/TokenFleet-AI/tokenless/releases/download/vX.Y.Z/checksums.txt
   ```
2. Update `version`, `url`, and `sha256` in `Formula/tokenless.rb`
3. Commit and push to `main`

### Update a Cask

1. Get the `.dmg` SHA256:
   ```bash
   shasum -a 256 TokenFleet\ Switch_X.Y.Z_aarch64.dmg
   ```
2. Update `version`, `url`, and `sha256` in `Casks/token-fleet-switch.rb`
3. Commit and push to `main`
