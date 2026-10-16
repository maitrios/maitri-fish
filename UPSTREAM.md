# Porting from upstream

maitri-fish started as a port of [omacom-io/omarchy-fish](https://github.com/omacom-io/omarchy-fish).
`.github/workflows/upstream-watch.yml` opens a `flare` issue when upstream has commits newer than
`reviewed` in `.maitri/upstream.toml`. A flare on the agent box works the issue.

## What to take

- Fixes and features that make sense for maitri, where fish is the login shell.
- Rename on the way in: `omarchy` becomes `maitri` in commands (`maitri-*`), paths (`~/.config/maitri`),
  variables (`MAITRI_*`) and text. Keep upstream credit and links as they are.

## What to leave out

- Anything about starship. maitri uses [pure](https://github.com/pure-fish/pure) with fish-async-prompt
  (`conf.d/prompt.fish`, since `27a635ea`).
- Anything that depends on Omarchy-only commands, packages or paths that maitri doesn't ship.
- When unsure, leave it out and say why. A one-line reason for every skipped commit goes in the PR.

## Doing it

1. Port each upstream commit that applies as its own commit, keeping the upstream author
   (`git cherry-pick -x` where it applies cleanly, otherwise port by hand with the upstream author as
   `--author`), and adapt names as above.
2. Set `reviewed` in `.maitri/upstream.toml` to the newest upstream commit you looked at, even if you took
   nothing.
3. Open the PR with the `upstream-sync` label: what was ported, what was skipped and why, and how you
   checked it (`fish -n` on every changed `.fish` file at least). Queue it with `gh pr merge --squash --auto`.
4. After Andrew approves and it merges, `release-on-merge.yml` tags the next patch version and publishes
   a release; maitri-pkgs' updater picks the tag up and opens the package PR. If the port is a big feature,
   say so in the PR so Andrew can cut a minor version instead.
