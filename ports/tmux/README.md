# Frevo Theme for tmux

A tmux status bar theme using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.conf` — tmux status line colors

## Installation
1. Copy or symlink `frevo.conf` to your tmux config directory, e.g.:
   - `~/.config/tmux/frevo.conf`
2. Source it from your `.tmux.conf`:
   ```tmux
   source-file ~/.config/tmux/frevo.conf
   ```

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- Adjust status segments and formats as desired; colors remain unchanged.
