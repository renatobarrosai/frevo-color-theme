# Frevo Theme for Firefox (userChrome)

A vibrant dark Firefox UI theme using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.userChrome.css` — Firefox UI stylesheet

## Installation
1. Go to `about:config` and set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`.
2. Find your profile folder (`about:support` → Profile Directory) and create a `chrome` folder if it doesn't exist.
3. Copy `frevo.userChrome.css` into the `chrome` folder.
4. Restart Firefox to apply the theme.

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- This targets browser UI (tabs, toolbars, menus); site content is unchanged.
