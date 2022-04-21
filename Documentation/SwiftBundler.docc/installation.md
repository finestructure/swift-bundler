# Installation

Installing Swift Bundler on your system.

## Recommended

Install the latest release of Swift Bundler using [mint](https://github.com/yonaskolb/Mint).

```sh
mint install stackotter/swift-bundler
```

> NOTE: If you have previously installed Swift Bundler via the installation script you must delete the `/opt/swift-bundler` directory (requires sudo).

## Manual installation

Alternatively, you can install Swift Bundler manually for maximum control.

```sh
git clone https://github.com/stackotter/swift-bundler
cd swift-bundler

swift build -c release
cp .build/release/swift-bundler /path/to/bin/
```
