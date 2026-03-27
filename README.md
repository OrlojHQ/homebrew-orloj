# homebrew-orloj

Homebrew tap for [Orloj](https://github.com/OrlojHQ/orloj) — an orchestration runtime for multi-agent AI systems.

## Install

```sh
brew tap OrlojHQ/orloj
brew install orlojctl
```

Formula versions follow [Orloj releases](https://github.com/OrlojHQ/orloj/releases).

## Upgrade

```sh
brew upgrade orlojctl
```

## What's included

- **orlojctl** — the CLI for managing agents, tasks, and pipelines on a running Orloj server

For running the full stack (server + worker), see the [install script](https://github.com/OrlojHQ/orloj/blob/main/scripts/install.sh) or the [Docker images](https://github.com/OrlojHQ/orloj#quickstart).

## Maintainers: bumping for a new Orloj release

1. Open `checksums.txt` from the new GitHub release.
2. Set `version` in `Formula/orlojctl.rb` to the semver (no `v` prefix).
3. Update the four `sha256` values for `orlojctl_*_{darwin,linux}_{arm64,amd64}.tar.gz`.

For automation, configure [GoReleaser Homebrew](https://goreleaser.com/customization/homebrew/) in the `OrlojHQ/orloj` repo to push formula updates to this tap using a token with `contents: write` on `OrlojHQ/homebrew-orloj`.
