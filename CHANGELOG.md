# Changelog

All notable changes to the PulseChain Validator Staking Launchpad will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Visible application version in the UI footer.
- RPC status indicator in the header (shows which RPC endpoint is currently being used).

### Changed
- Improved internal RPC fallback handling with user-visible status.

## [1.2.0] - 2026-05-27

### Added
- Visible version number in the footer (`v1.2.0`).
- Docker support is now fully functional and documented (image published via GitHub Actions).

### Changed
- Docker workflow improvements (cleaner tagging, updated actions).

## [1.1.1] - 2026-03-??

### Added
- Multiple PulseChain RPC endpoints with automatic fallback for improved reliability:
  - g4mm4.io (primary)
  - PublicNode
  - pulsechain.com
  - GigaTheminter
- Beacon chain status checks now use fallback logic.

### Changed
- Wallet network configuration now provides multiple RPC URLs for redundancy.

## [1.1.0] - 2026-03-07

### Added
- Docker support (nginx:alpine based image).
- Code comments and documentation improvements.

## [1.0.0] - 2026-03-03

### Added
- Initial public release.
- Core functionality: wallet connection, deposit file upload, validator status checking, and one-click deposits on PulseChain.
- Support for Internet Money Wallet and MetaMask.
- Completely local operation (no data uploaded to servers).

[Unreleased]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/compare/v1.2.0...HEAD
[1.2.0]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/compare/v1.1.1...v1.2.0
[1.1.1]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/releases/tag/v1.1.1
[1.1.0]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/releases/tag/v1.1
[1.0.0]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/releases/tag/v1.0
