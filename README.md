# Codealong for Homebrew

[Codealong](https://github.com/codealong/codealong) is a free, open-source Mac app that shows
every coding agent you run (Claude Code, Codex, OpenCode, Antigravity and Cursor, on every
account you have) on one board.

```bash
brew install --cask codealong/tap/codealong
```

This installs the same signed, notarized app as the
[download](https://github.com/codealong/codealong/releases/latest), and puts the `codealong`
command on your PATH. The app keeps itself up to date, so `brew upgrade` leaves it alone; `brew
upgrade --greedy` updates it through Homebrew instead.

`brew uninstall --cask codealong` removes the app; add `--zap` to remove its settings, todos and
logs too.

The cask follows each release by itself: a workflow in codealong/codealong moves its version and
checksum once a release is published. Issues go to
[codealong/codealong](https://github.com/codealong/codealong/issues).
