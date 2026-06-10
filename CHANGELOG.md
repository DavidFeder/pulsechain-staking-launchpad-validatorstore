# Changelog

All notable changes to the PulseChain Validator Staking Launchpad will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.2.2] - 2026-06-10

### Fixed
- Deposit button remained clickable during the async send + confirmation process (could lead to accidental duplicate clicks).

### Changed
- Increased transaction confirmation timeout from 3 minutes to 5 minutes for better handling of slow networks or temporary RPC issues.
- Button is now properly disabled immediately after confirming a deposit and re-enabled on error paths for easy retry.

## [1.2.1] - 2026-06-09

### Fixed
- False "Transaction failed" status shown in UI even when deposits succeeded on-chain (caused by unreliable receipt polling from the wallet-connected RPC).

### Added
- Robust multi-RPC fallback polling for transaction receipts using all configured PulseChain endpoints (including g4mm4).
- Specific error classification in the deposit catch block (user rejected, insufficient funds, gas errors, etc.).

### Changed
- Slightly increased default gas fee settings (`maxFeePerGas` / `maxPriorityFeePerGas`) for faster and more reliable transaction inclusion.
- Minor improvements to status messages and waiting UI during confirmation.

## [1.2.0] - 2026-05-28

### Added
- `CHANGELOG.md` following the Keep a Changelog format.
- Visible application version in the UI footer.
- RPC status indicator in the header (shows which RPC endpoint is currently being used, e.g. "Connected via g4mm4").
- Automatic update of the RPC indicator when the app falls back to a different endpoint.

### Changed
- Restructured header layout: RPC status indicator moved below the logo on the top left for better visual hierarchy.
- Improved internal RPC fallback handling with user-visible feedback.
- Docker workflow improvements (updated actions to newer versions, refined tagging strategy so `latest` is only updated on real releases).

### Fixed
- Docker image is now publicly accessible and working correctly.

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

[Unreleased]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/compare/v1.2.2...HEAD
[1.2.2]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/compare/v1.1.1...v1.2.0
[1.1.1]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/releases/tag/v1.1.1
[1.1.0]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/releases/tag/v1.1
[1.0.0]: https://github.com/DavidFeder/pulsechain-staking-launchpad-validatorstore/releases/tag/v1.0
