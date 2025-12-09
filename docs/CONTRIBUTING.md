# Contributing to Frevo Color Theme

Thank you for your interest in contributing to Frevo! This document provides guidelines and instructions for contributing to the project.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Ways to Contribute](#ways-to-contribute)
- [Reporting Issues](#reporting-issues)
- [Creating a New Port](#creating-a-new-port)
- [Submitting Changes](#submitting-changes)
- [Style Guidelines](#style-guidelines)
- [Recognition](#recognition)

---

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment. Be kind, be constructive, and help make this a welcoming space for everyone.

---

## Ways to Contribute

There are many ways to contribute to Frevo:

- **Report bugs** — Found something wrong? Let us know!
- **Request features** — Have an idea? We'd love to hear it!
- **Create ports** — Help bring Frevo to more applications
- **Improve documentation** — Fix typos, clarify instructions, add examples
- **Share screenshots** — Show off your setup using Frevo
- **Spread the word** — Star the repo, share with friends

---

## Reporting Issues

### Bug Reports

When reporting a bug, please include:

1. **Application and version** (e.g., Neovim 0.10.0)
2. **Operating system** (e.g., Arch Linux, macOS 14)
3. **Steps to reproduce** the issue
4. **Expected behavior** vs **actual behavior**
5. **Screenshots** if applicable

### Feature Requests

When requesting a feature:

1. **Check existing issues** to avoid duplicates
2. **Describe the use case** — why is this needed?
3. **Provide examples** if possible

### Port Requests

To request support for a new application:

1. Open an issue with the `port-request` label
2. Include the application name and category
3. Link to documentation on how themes are configured for that app
4. Indicate if you're willing to help create the port

---

## Creating a New Port

Want to bring Frevo to a new application? Here's how:

### Step 1: Understand the Color System

Before creating a port, familiarize yourself with the [Palette Reference](PALETTE.md). The key principles:

- Use the **exact hex values** from the palette
- Maintain **semantic meaning** (errors are red, success is green, etc.)
- Follow the **background hierarchy** (primary → secondary → tertiary → elevated)

### Step 2: Set Up Your Port

1. Fork the repository
2. Create a new directory: `ports/<application-name>/`
3. Create a `README.md` with installation instructions

### Step 3: Map Colors

Use this mapping guide:

| UI Element | Frevo Token | Hex |
|------------|-------------|-----|
| Background | `base.bg_primary` | `#1A1F2E` |
| Foreground | `base.fg_primary` | `#F2F4F8` |
| Selection | `ui.selection` | `#2B4A7A` (40% alpha) |
| Accent | `ui.accent` | `#4B9AFF` |
| Error | `ui.error` | `#FF5B5F` |
| Warning | `ui.warning` | `#DAA445` |
| Success | `ui.success` | `#5FD94F` |

For syntax highlighting, use the [syntax colors](PALETTE.md#syntax-colors).

For terminals, use the [ANSI colors](PALETTE.md#ansi-terminal-colors).

### Step 4: Test Your Port

- Verify all colors display correctly
- Test in different scenarios (light room, dark room)
- Check contrast ratios match the specification
- Test with colorblind simulation tools

### Step 5: Document Your Port

Your `ports/<app>/README.md` should include:

```markdown
# Frevo for <Application>

## Preview

<!-- Screenshot here -->

## Installation

<!-- Step-by-step instructions -->

## Configuration

<!-- Optional settings, if any -->
```

### Step 6: Submit a Pull Request

1. Ensure your port follows the guidelines
2. Add your port to [PORTS.md](PORTS.md)
3. Update [INSTALL.md](INSTALL.md) if appropriate
4. Submit a PR with a clear description

---

## Submitting Changes

### Pull Request Process

1. **Fork** the repository
2. **Create a branch** for your changes: `git checkout -b feature/my-feature`
3. **Make your changes** following the style guidelines
4. **Test** your changes thoroughly
5. **Commit** with a clear message: `git commit -m "Add port for Kitty terminal"`
6. **Push** to your fork: `git push origin feature/my-feature`
7. **Open a Pull Request** against the `main` branch

### Commit Message Format

Use clear, descriptive commit messages:

```
<type>: <short description>

<optional longer description>
```

Types:
- `feat`: New feature or port
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Formatting, no code change
- `refactor`: Code refactoring
- `test`: Adding tests

Examples:
- `feat: add Kitty terminal port`
- `fix: correct blue color contrast ratio`
- `docs: update installation instructions for Neovim`

---

## Style Guidelines

### Documentation

- Use **American English** spelling
- Write in **present tense** ("Add" not "Added")
- Keep sentences **concise and clear**
- Use **code blocks** for commands and configuration
- Include **screenshots** where helpful

### Color Definitions

When referencing colors:
- Always use the **exact hex values** from the palette
- Include **semantic names** (e.g., "Accent Blue" not just "#4B9AFF")
- Document **contrast ratios** for text colors

### Code

- Follow the conventions of each application's ecosystem
- Comment complex configurations
- Provide sensible defaults

---

## Recognition

All contributors are recognized in the project:

- **Port creators** are listed as maintainers in [PORTS.md](PORTS.md)
- **Significant contributors** are mentioned in release notes
- **All contributors** appear in GitHub's contributor list

---

## Questions?

- Check the [documentation](README.md) first
- Search [existing issues](https://github.com/renatobarros/frevo-theme/issues)
- Open a new issue if you can't find an answer

Thank you for helping make Frevo better!

---

[← Back to Documentation](README.md) • [← Back to Main README](../README.md)
