# Frevo Palette for zsh

Color variables for zsh prompts using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.zsh` — Frevo color exports for zsh

## Installation
1. Copy or symlink `frevo.zsh` to your zsh config directory, e.g.:
   - `~/.config/zsh/frevo.zsh`
2. Source it in your `.zshrc` before your prompt/theme setup:
   ```zsh
   source ~/.config/zsh/frevo.zsh
   # then reference $FREVO_* in your prompt/theme
   ```

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- This file only exports colors; wire them into your prompt/theme as needed.
