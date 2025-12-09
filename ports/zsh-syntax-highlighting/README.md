# Frevo Theme for zsh-syntax-highlighting

Color mapping for zsh-syntax-highlighting using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.zsh` — Highlight group colors

## Installation
1. Copy or symlink `frevo.zsh` to your zsh config directory, e.g.:
   - `~/.config/zsh/frevo-zsh-syntax-highlighting.zsh`
2. Source it **after** loading `zsh-syntax-highlighting` in `.zshrc`:
   ```zsh
   source /path/to/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
   source ~/.config/zsh/frevo-zsh-syntax-highlighting.zsh
   ```

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- Adjust individual groups if you want different emphasis; colors remain from the Frevo palette.
