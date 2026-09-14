maitri shell configuration for Fish shell.

## Install
```bash
# Install the package
sudo pacman -S maitri-fish

# Setup bash to auto-launch fish
maitri-setup-fish
```

## fzf.fish Keybindings
- **Ctrl+Alt+F** - Search Directory
- **Ctrl+Alt+L** - Search Git Log
- **Ctrl+Alt+S** - Search Git Status
- **Ctrl+R** - Search History
- **Ctrl+Alt+P** - Search Processes
- **Ctrl+V** - Search Variables

## Customization

To add your own functions or override maitri-fish functions:

```bash
# Create your own functions
mkdir -p ~/.config/fish/functions
nvim ~/.config/fish/functions/my_function.fish

# Or add to your main config
nvim ~/.config/fish/config.fish
```

User functions in `~/.config/fish/functions/` take precedence over vendor functions.

## Uninstall

```bash
sudo pacman -R maitri-fish
```

To restore bash, copy a backup to `~/.bashrc` (backups are saved as `.bashrc.backup-*`).
