# changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.1.0] - 2024-08-08

In this change I'm introducing argon micro - yet another extraction of only critical features required to run a linux development environment. Just ssh, git, zsh + oh my zsh, curl.

### Added

- `argon-micro` only critical features of vanilla argon

### Fixed

### Changed

- base alpine is now 3.20.2 (used to be 3.20)

### Removed


## [2.0.0] - 2024-05-27

In this change I'm introducing argon core, or rather extracting a reusable, base version of argon dockerfile - just basic tools and support for documentation-writing. Introduced is a new dockerfile, based on core argon, which contains dotnet 8 sdk.

### Added

- `argon` directory for vanilla argon
- `argon-dotnet` directory for dotnet development
- new `host.sh` scripts, one per each directory

### Fixed

### Changed

- **[BREAKING CHANGE]** `dockerfile` does not contain dotnet sdk 7 anymore, it is a core version of argon - just basic tooling
- base alpine is now 3.20.0 (used to be 3.19)
- dotnet sdk 7 updated to dotnet sdk 8

### Removed
