# Frevo Theme for VS Code

A vibrant dark VS Code theme using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo-color-theme.json` — VS Code color theme

## Installation
1. Copy or symlink `frevo-color-theme.json` into your VS Code extensions or `~/.vscode/extensions/frevo/` directory.
2. Add a `package.json` if packaging as an extension, or reference the theme file via `workbench.colorCustomizations`:
   ```json
   "workbench.colorCustomizations": {
     "[Frevo]": {
       // leave empty; theme file supplies colors
     }
   }
   ```
3. Select the "Frevo" theme from the Command Palette (`Ctrl/Cmd + K`, then `Ctrl/Cmd + T`).

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
