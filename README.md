# homebrew-tap

Homebrew formulae and casks for sophonz tools.

```bash
brew install sophonz-labs/tap/st        # the st CLI
brew install sophonz-labs/tap/sophonz   # the desktop app (Sophonz.app)
```

`st` is [sophonz-tunnel](https://github.com/sophonz-labs/sophonz-tunnel) — the
terminal session you are already running, reachable from a phone. The formula
here is written by that repository's release workflow; edit it there, in
`packaging/homebrew/st.rb`.

`sophonz` is the desktop app, [sophonz-desktop](https://github.com/sophonz-labs/sophonz-desktop):
tmux sessions on this machine and your other machines in one window, with its
own `st` inside. Apple silicon only. The app updates itself, so `brew upgrade`
skips it unless you pass `--greedy`. If `Sophonz.app` is already in
`/Applications`, take it over with `brew install --adopt sophonz-labs/tap/sophonz`.
That repository's release workflow bumps `Casks/sophonz.rb` (version and
sha256) on every tagged release; other changes to the cask are made here.
