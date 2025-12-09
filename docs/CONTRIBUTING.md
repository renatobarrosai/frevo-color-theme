# Contributing to Frevo

Thank you for your interest in contributing to Frevo!

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Ways to Contribute](#ways-to-contribute)
- [Reporting Issues](#reporting-issues)
- [Creating a Port](#creating-a-port)
- [Submitting Changes](#submitting-changes)
- [Style Guidelines](#style-guidelines)
- [Recognition](#recognition)

---

## Code of Conduct

Be kind, be constructive, and help make this a welcoming space for everyone.

---

## Ways to Contribute

- **Report bugs** - Found something wrong? Let us know
- **Request features** - Have an idea? We'd love to hear it
- **Create ports** - Help bring Frevo to more applications
- **Improve documentation** - Fix typos, clarify instructions
- **Share screenshots** - Show off your setup
- **Spread the word** - Star the repo, share with friends

---

## Reporting Issues

### Bug Reports

Include the following information:

1. Application and version (e.g., Neovim 0.10.0)
2. Operating system (e.g., Arch Linux, macOS 14)
3. Steps to reproduce
4. Expected vs actual behavior
5. Screenshots if applicable

### Feature Requests

1. Check existing issues to avoid duplicates
2. Describe the use case
3. Provide examples if possible

### Port Requests

1. Open an issue with the `port-request` label
2. Include the application name and category
3. Link to theming documentation for that app
4. Indicate if you're willing to help create it

---

## Creating a Port

### Step 1: Understand the Colors

Review the [Palette Reference](PALETTE.md). Key principles:

- Use **exact hex values** from the palette
- Maintain **semantic meaning** (errors = red, success = green)
- Follow **background hierarchy** (primary > secondary > tertiary > elevated)

### Step 2: Set Up Your Port

1. Fork the repository
2. Create directory: `ports/<application-name>/`
3. Add theme file(s)
4. Create `README.md` with installation instructions

### Step 3: Map Colors

| UI Element | Token | Hex |
|------------|-------|-----|
| Background | `base.bg_primary` | `#1A1F2E` |
| Foreground | `base.fg_primary` | `#F2F4F8` |
| Selection | `ui.selection` | `#2B4A7A` (40% alpha) |
| Accent | `ui.accent` | `#4B9AFF` |
| Error | `ui.error` | `#FF5B5F` |
| Warning | `ui.warning` | `#DAA445` |
| Success | `ui.success` | `#5FD94F` |

For syntax highlighting, see [Syntax Colors](PALETTE.md#syntax-colors).  
For terminals, see [ANSI Colors](PALETTE.md#ansi-terminal-colors).

### Step 4: Test Your Port

- Verify all colors display correctly
- Test in different lighting conditions
- Check contrast ratios match the specification
- Test with colorblind simulation tools

### Step 5: Document Your Port

Your `README.md` should follow this structure:

```markdown
# Frevo Theme for <Application>

A vibrant dark theme for <Application> using the Frevo palette.

## Files

- `<filename>` - Description

## Installation

1. Step one
2. Step two
3. Step three

## Notes

- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
```

### Step 6: Submit a Pull Request

1. Ensure your port follows the guidelines
2. Verify your README is complete
3. Submit a PR with a clear description

---

## Submitting Changes

### Pull Request Process

1. **Fork** the repository
2. **Create a branch**: `git checkout -b feat/my-feature`
3. **Make changes** following the style guidelines
4. **Test** your changes
5. **Commit**: `git commit -m "feat: add port for Kitty"`
6. **Push**: `git push origin feat/my-feature`
7. **Open a Pull Request** against `main`

### Commit Message Format

```
<type>: <short description>
```

| Type | Description |
|------|-------------|
| `feat` | New feature or port |
| `fix` | Bug fix |
| `docs` | Documentation changes |
| `style` | Formatting, no code change |
| `refactor` | Code refactoring |

**Examples:**
- `feat: add Kitty terminal port`
- `fix: correct blue color contrast ratio`
- `docs: update Neovim installation instructions`

---

## Style Guidelines

### Documentation

- Use **American English** spelling
- Write in **present tense** ("Add" not "Added")
- Keep sentences **concise**
- Use **code blocks** for commands
- Include **screenshots** where helpful

### Color Definitions

- Use **exact hex values** from the palette
- Include **semantic names** (e.g., "Accent Blue" not just "#4B9AFF")
- Document **contrast ratios** for text colors

### Code

- Follow the conventions of each application's ecosystem
- Comment complex configurations
- Provide sensible defaults

---

## Recognition

All contributors are recognized:

- **Port creators** are listed in the port's README
- **Significant contributors** are mentioned in release notes
- **All contributors** appear in GitHub's contributor list

---

## Questions?

- Check the [documentation](README.md)
- Search [existing issues](https://github.com/renatobarros/frevo-theme/issues)
- Open a new issue

Thank you for helping make Frevo better!

---

[Back to Documentation](README.md) | [Back to Main README](../README.md)
